#! /usr/bin/env nix-shell
#! nix-shell -i runghc --pure -I nixpkgs=channel:nixos-21.05 -I alejandra=https://github.com/kamadorueda/alejandra/tarball/1.2.0 --packages "ghc.withPackages (x: with x; [ turtle string-interpolate microlens-platform microlens-th string-similarity ])" gitAndTools.git gitAndTools.git-annex "(import <alejandra>).${system}"

{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE ViewPatterns          #-}
{-# LANGUAGE QuasiQuotes           #-}
{-# LANGUAGE TemplateHaskell       #-}

import Control.Monad
import Control.Monad.Identity
import Data.Either
import Data.List.CommonSubstring
import Data.Maybe
import Data.String.Interpolate (i)
import Lens.Micro.Platform hiding (has, assign)
import Lens.Micro.TH
import Prelude hiding (FilePath)
import qualified Control.Foldl as L
import qualified Data.Map.Strict as M
import qualified Data.Set as S
import qualified Data.Text as T
import qualified Data.Vector as V
import System.Environment (getProgName)
import Turtle

-- Data structures for donors and samples
type SampleID = Text
type AnnexPath = FilePath
data Sample = Sample { _sid :: SampleID, _r1 :: AnnexPath, _r2 :: AnnexPath }
  deriving (Eq, Ord, Show)
makeLenses ''Sample

pair f = \ ~(Sample n a b) -> liftA2 (Sample n) (f a) (f b)

safeHead [] = Nothing
safeHead (x:_) = Just x

type DonorID = Text
data Donor = Donor { _did :: DonorID, _ss :: [Sample] }
  deriving (Eq, Ord, Show)
makeLenses ''Donor

instance Semigroup Donor where
  (Donor a as) <> (Donor b bs) =
    if a /= b then
      error "cannot concatenate different donors"
    else
      Donor a (as <> bs)

-- Expression templates
class Nixable a where
  toNix :: a -> Text

instance Nixable Sample where
  toNix (Sample key r1 r2) =
      [i| {site="#{key}"; class = "#{c}"; pdx = #{p}; r1="#{getHash r1}"; r2="#{getHash r2}";}|]
    where
      getHash (toText -> Right path) = T.drop 8 . snd $ T.breakOn "objects/" path
      c = if T.head key == 'N' || T.head key == 'B' || "Germline" `T.isPrefixOf` key || "GL" `T.isPrefixOf` key then "normals" :: T.Text else if "rna" `T.isInfixOf` (T.toLower key) then "rna" else "tumours"
      p = if "pdx" `T.isInfixOf` key then "true" else "false" :: T.Text

instance Nixable Donor where
  toNix (Donor d ss) =
    let samples = T.concat $ map (pad . toNix) ss
        pad x = T.concat ["\n", x, "\n"]
    in [i|
      with import ./milton-slurm.nix { };
      let
        samples = [ #{samples} ];
      in bionix.callBionix ./multisample.nix {
        inherit samples;
        name = "#{d}";
      }
    |]

-- Matching against meta data
extractID :: Text -> Maybe (DonorID, SampleID)
extractID = safeHead . match (
    has $ (fmt "SFRC" 5 combine) <|>
          (fmt "PH" 3 combine) <|>
          (fmt "SOLACE2-" 5 solace) <|>
          (fmt "SOLACE2-" 4 solace) <|>
          (fmt "TL" 7 combine) <|>
          (fmt "SOL2-" 4 solace) <|>
          (fmt "SOL2_" 4 solace) <|>
          (fmt "SOL2-" 3 solace) <|>
          (fmt "SOL2_" 3 solace) <|>
          (fmt "SOL2-" 2 solace) <|>
          (fmt "SOL2_" 2 solace) <|>
          (fmt "EMBRACE" 2 combine))
  where
    combine a b c = (a <> T.pack b, T.pack c)
    solace a b c = ("SOL2_" <> T.pack (replicate (max 0 $ 4 - length b) '0' <> b), T.pack c)
    fmt prefix k comb = comb <$> prefix <*> fixed k digits <*> siteLabel
    digits = many (oneOf "0123456789")
    siteLabel = optional (oneOf "-_") *> (some (noneOf ", \t") <* "_R" <* oneOf "12" <|> some (noneOf ", \t"))

closestMatchIn :: Text -> [Text] -> Text
closestMatchIn needle haystack = snd $ maximum [ (length . longestSubstring (T.unpack needle) $ T.unpack x, x) | x <- haystack ]

assign :: [Text] -> L.Fold FilePath [Donor]
assign meta = L.Fold step begin done
  where
    begin = mempty
    step lut path'@(toText -> Right path)  =
      let m = path `closestMatchIn` meta
      in case extractID m of
        Just (d, s) -> M.insertWith (M.unionWith (<>)) d (M.fromList [(s, [path'])]) lut
        _ -> lut
    done = mapMaybe toDonor . M.toList
    toDonor (d, M.toList -> ps) =
      let samples = concatMap toSample ps
      in if samples == mempty then Nothing else Just $ Donor d samples
    toSample (s, ps) =
      let
        r1s = filter (T.isInfixOf "R1" . right . toText) ps
        r2s = filter (T.isInfixOf "R2" . right . toText) ps
        right (Right x) = x
      in zipWith (Sample s) r1s r2s

main = do
  args <- arguments
  when (length args /= 1) $ do
    pname <- getProgName
    die $ "usage: " <> T.pack pname <> " metadata"

  -- Read in and parse metadata into lines
  meta <- fmap T.lines . readTextFile . fromText $ head args

  -- Find fastq files in cwd
  fastqs <- sort $ find (suffix "fastq.gz" <|> suffix "fq.gz") "."
  donors <- fold (select fastqs) (assign meta)

  -- Map to annex
  donors <- traverseOf (each . ss . each . pair) readlink donors

  -- Output expressions
  forM_ donors $ \d@(Donor n _) -> sh $
    shells [i|alejandra > #{T.toLower n <> ".nix"}|] (select . textToLines $ toNix d)
