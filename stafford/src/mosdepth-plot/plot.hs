{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TupleSections #-}
{-# LANGUAGE TypeApplications #-}

import qualified Data.Map as M
import qualified Numeric.Interpolation.NodeList as I
import qualified Numeric.Interpolation.Basis as B
import qualified Numeric.Interpolation.Piecewise as I
import qualified Numeric.Interpolation.Type as I
import Control.Monad.Trans.Resource (runResourceT)
import Options.Applicative
import Data.Aeson
import qualified Data.Set as E
import Relude
import Relude.Extra.Map
import Streaming
import Data.Function
import qualified Data.ByteString.Streaming.Char8 as Q
import qualified Data.Attoparsec.ByteString.Char8 as A
import qualified Data.Attoparsec.ByteString.Streaming as AS
import qualified Streaming.Prelude as S

type NamedPoints = Set (ByteString, Double, Double)
type ChrTrace = Map ByteString NamedPoints

-- Data types for Plotly

data Trace = Trace {
  x :: [Double],
  y :: [Double],
  mode :: Text,
  name :: Text
  } deriving (Generic, Show)
instance ToJSON Trace

data AxisDef = AxisDef {
  title :: Text,
  domain :: Maybe [Double],
  dtick :: Maybe Double
  } deriving (Generic, Show)

instance ToJSON AxisDef where
  toJSON (AxisDef title domain dtick) =
    object $ catMaybes [ Just ("title" .= title), ("domain" .=) <$> domain, ("dtick".=) <$> dtick]

data Legend = Legend Double Double
  deriving (Generic, Show)
instance ToJSON Legend where
  toJSON (Legend x y) = object [ "x" .= x, "y" .= y]

data Layout = Layout {
  hovermode :: String,
  xaxis :: AxisDef,
  yaxis :: AxisDef,
  showlegend :: Bool,
  autosize :: Bool,
  legend :: Legend
  } deriving (Generic, Show)
instance ToJSON Layout

data Config = Config {
  displayModeBar :: Bool,
  displaylogo :: Bool,
  fillFrame :: Bool,
  autosizable :: Bool
  } deriving (Generic, Show)
instance ToJSON Config

-- Parser for mosdepth file

entry = check  <$> word <*> num <*> num where
  check a (Just b) (Just c) = Just (a, b, c)
  check _ _ _ = Nothing
word = A.takeWhile1 (/='\t') <* A.skipSpace
num = Just <$> A.double <* ((A.char '\t' *> pure ()) <|> A.endOfLine) <|> return Nothing

args = (,) <$> flag False True (short 'c' <> help "chromosomes only")
  <*> many ((,) <$> argument str (metavar "NAME") <*> argument str (metavar "PATH"))

main =
  execParser
    (info (args <**> helper)
     (fullDesc
      <> progDesc "Generates org-mode (HTML) plots for mosdepth results using plotly"
      <> header "mosdepth-plot"
     )) >>= process

process :: (Bool, [(ByteString, FilePath)]) -> IO ()
process (chrsOnly, inputs) = do
  traces <- fmap mergeTraces $ forM inputs $ \(name, path) ->
    runResourceT $ Q.readFile path
      & AS.parsed entry
      & void
      & S.catMaybes
      & S.filter (\(chr, _, _) -> chr == "total" || not chrsOnly || take 3 (decodeUtf8 chr) == ("chr" :: String))
      & S.fold_ (\m (chr, x, y) -> let s = m !? chr ?: mempty in insert chr (E.insert (name, x, y) s) m) (mempty :: ChrTrace) id

  putStrLn "* Mosdepth"
  putStrLn "#+BEGIN_EXPORT html"
  putStrLn "<script src=\"https://cdn.plot.ly/plotly-latest.min.js\"></script>"
  putStrLn "#+END_EXPORT"

  for_ ("total" : (filter (/= "total") $ keys traces)) $ \chr -> do
    putBSLn $ "** " <> chr
    putStrLn ""
    putStrLn "#+BEGIN_EXPORT html"
    putBSLn $ "<div id='plot-div-" <> chr <> "' />"
    putStrLn "#+END_EXPORT"

  putStrLn "#+BEGIN_EXPORT html"
  for_ (toPairs traces) $ \(chr, ps) -> do
    let ts = toTrace $ groupNamed ps
    putStrLn "<script>"
    newPlot chr ts
    putStrLn "</script>"
  putStrLn "#+END_EXPORT"

  return ()

mergeTraces :: [ChrTrace] -> ChrTrace
mergeTraces = M.fromListWith (<>) . concatMap toPairs

groupNamed :: Foldable t => t (ByteString, Double, Double) -> Map ByteString (Set (Double, Double))
groupNamed = foldl' (\m (n, x, y) -> let s = m !? n ?: mempty in insert n (E.insert (x,y) s) m) mempty

toTrace :: Map ByteString (Set (Double, Double)) -> [Trace]
toTrace = map toTrace' . toPairs
  where
    toTrace' (name, ps) = Trace xs ys "line" (decodeUtf8 name <> " (" <> show (sig2 threeDB) <> ")")
      where
        (xs, ys) = unzip . filter (\(_,y) -> y > 0.01) $ toList ps
        threeDB = I.interpolateConstantExt I.hermite1 (B.coefficientsToCubicLinear (reverse ys) (reverse xs)) (1/sqrt 2)
        sig2 = (/100) . fromInteger . round . (100*)

newPlot chr ts = do
  putBS $ "Plotly.newPlot('plot-div-" <> chr <> "',"
  putLBS $ encode ts
  putStr ","
  putLBS $ encode layout
  putStr ","
  putLBS $ encode config
  putStrLn ");"

  where
    config = Config False False False True
    layout = Layout "closest" xaxis yaxis True True (Legend 0.9 0.9)
    xaxis = AxisDef "Coverage" Nothing Nothing
    yaxis = AxisDef "Proportion of bases at coverage" (Just [0,1]) (Just 0.1)
