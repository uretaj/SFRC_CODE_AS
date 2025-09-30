{-# LANGUAGE OverloadedStrings #-}

import Control.Lens hiding (rewrite)
import Data.Aeson hiding (Success)
import Data.Aeson.Lens
import Data.Fix
import qualified Data.HashMap.Lazy as HM
import Data.List (foldl')
import Data.List.NonEmpty (NonEmpty (..))
import Data.Maybe
import qualified Data.Text as T
import qualified Data.Text.Read as T
import GHC.IO.Encoding
import Network.Connection
import Network.HTTP.Client.TLS
import Network.Wreq
import Nix.Expr.Types
import Nix.Expr.Types.Annotated
import Nix.Parser
import Nix.Pretty
import Prettyprinter (defaultLayoutOptions, layoutPretty)
import Prettyprinter.Render.Text (renderStrict)
import System.AtomicWrite.Writer.Text
import System.Environment

safeHead [] = Nothing
safeHead (x : _) = Just x

rewrite db z@(NBinary NApp (Fix (NBinary NApp (Fix (NSelect (Fix (NSym "bionix")) (StaticKey "callBionix" :| []) Nothing)) (Fix (NLiteralPath "./multisample.nix")))) (Fix (NSet r xs))) =
  case n of
    Nothing -> Fix z
    Just n' ->
      case dbEntry of
        Nothing -> Fix z
        Just _ -> Fix (NBinary NApp (Fix (NBinary NApp (Fix (NSelect (Fix (NSym "bionix")) (StaticKey "callBionix" :| []) Nothing)) (Fix (NLiteralPath "./multisample.nix")))) (Fix (NSet r xs')))
  where
    n = getName xs
    getName =
      foldl'
        ( \r x ->
            case x of
              (NamedVar (StaticKey "name" :| []) (Fix (NStr (DoubleQuoted [Plain n]))) _) -> Just n
              _ -> r
        )
        Nothing
    xs' = NamedVar (StaticKey "redcap" :| []) (Fix (NSet NNonRecursive meta)) fakePos : filter notRedcap xs
    notRedcap (NamedVar (StaticKey "redcap" :| []) _ _) = False
    notRedcap _ = True

    fakePos = SourcePos "/dev/null" (mkPos 1) (mkPos 1)

    number = check . T.double
      where
        check (Right (x, "")) = Just x
        check _ = Nothing

    dbEntry = db ^? _Array . traverse . filtered (\x -> x ^? key "record_id" . _String == n) . _Object
    dbEntry' = HM.filter (\x -> isNothing (x ^? _String >>= number) && x /= "" && x /= "[document]" && x ^? _String /= n) $ fromJust dbEntry
    meta = filter (\(k, _) -> k `notMatch` ignoredPrefixes) (HM.toList dbEntry') & flip map $ \(k, v) -> NamedVar (StaticKey k :| []) (Fix (NStr (DoubleQuoted [Plain (T.filter (/= '\r') $ v ^. _String)]))) fakePos
    ignoredPrefixes = ["project_", "patient_history_reports", "histology_report", "patient_summary", "stafford_", "other_document", "other_panel_report", "nominator_report", "blood_report", "biopsy_procedure_report"]
    whitelist = ["tumour_type"]
    notMatch key prefixes = not $ any (`T.isPrefixOf` key) ignoredPrefixes
rewrite db x = Fix x

getRedcap key =
  let -- Disable certificate checking: as per ticket 227376, Milton does not trust the RedCap certificate and the recommended fix is to disable validation
      opts = defaults & manager .~ Left (mkManagerSettings (TLSSettingsSimple True False False) Nothing)
   in view responseBody
        <$> postWith
          opts
          "https://redcap.wehi.edu.au/api"
          [ "token" := (key :: String),
            "content" := ("record" :: String),
            "format" := ("json" :: String),
            "rawOrLabel" := ("label" :: String),
            "type" := ("flat" :: String)
          ]

annotate db path = do
  setLocaleEncoding utf8
  parse <- parseNixFile path
  case parse of
    Right expr ->
      let fexpr = renderStrict $ layoutPretty defaultLayoutOptions $ foldFix (rewrite db) expr & prettyNix
       in atomicWriteFile path fexpr
    _ -> do
      putStrLn $ "error: failed to parse " ++ path

main = do
  paths <- getArgs
  if length paths < 2
    then do
      n <- getProgName
      putStrLn $ unwords ["usage:", n, "secret-file", "nix-file", "[nix-file ...]"]
    else do
      key <- head . lines <$> readFile (head paths)
      db <- getRedcap key
      mapM_ (annotate db) $ tail paths
