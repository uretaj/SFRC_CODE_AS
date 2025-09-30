#!/usr/bin/env nix-shell
#!nix-shell -i runghc --pure -I nixpkgs=channel:nixos-23.05 --packages "ghc.withPackages (x: with x; [hnix lens-aeson wreq])"

{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ViewPatterns #-}

import Control.Exception
import Control.Lens
import Control.Monad
import Data.Aeson.Key (toText)
import Data.Aeson.Lens
import qualified Data.ByteString.Char8 as B
import Data.Fix
import qualified Data.Map as M
import Data.Maybe
import qualified Data.Set as S
import Data.Text (Text)
import qualified Data.Text as T
import qualified Data.Text.IO as T
import Network.Wreq
import Nix.Expr.Types
import Nix.Parser
import Nix.Prelude (NonEmpty (..))
import System.Environment
import System.IO

nestring :: AsValue t => Fold t Text
nestring = folding (\v -> case v ^? _String of Just "" -> Left v; Nothing -> Left v; Just x -> Right x)

queryRedcap :: String -> IO (M.Map Text (S.Set Text))
queryRedcap apikey = do
  rsp <-
    view responseBody
      <$> post
        "https://redcap.wehi.edu.au/api"
        ( [ "token" := apikey,
            "content" := ("record" :: String),
            "format" := ("json" :: String),
            "rawOrLabel" := ("label" :: String),
            "type" := ("flat" :: String),
            "fields" := ("record_id" :: String)
          ]
            ++ [ "forms[" <> B.pack (show i) <> "]" := str
                 | (i, str) <- zip [0 ..] ["receipt_blood", "receipt_eyebrow_hairs", "receipt_fresh_human_tissue", "receipt_fresh_pdx_and_cdx_sample", "receipt_ffpe_blockssections", "preparation_dna_rna_protein" :: String]
               ]
        )

  let getField f = rsp ^.. _Array . traverse . runFold ((,) <$> Fold (key "record_id" . nestring) <*> Fold (key f . nestring))
      idpairs = concatMap getField . S.toList . S.filter (T.isSuffixOf "_id" . toText) . S.fromList $ rsp ^.. _Array . traverse . members . asIndex
      ids = concatMap (\(id, t) -> map (id,) . tail $ T.splitOn "_" t) idpairs
  pure $ ids & traverse . _2 %~ S.singleton & M.fromListWith S.union

parseNix path = bracket (openFile path ReadMode) hClose $ \fd -> do
  hSetEncoding fd utf8_bom
  Right a <- fmap unFix . parseNixText <$> T.hGetContents fd
  pure $
    ( a ^. _NWith . _2 . to unFix . _NLet . _2 . to unFix . _NBinary . _3 . to unFix . _NSet . _2 . traverse . _NamedVar . getkey "name",
      a ^.. _NWith . _2 . to unFix . _NLet . _1 . each . _NamedVar . _2 . to unFix . _NList . traverse . to unFix . _NSet . _2 . traverse . _NamedVar . getkey "site"
    )
  where
    getkey k = folding $ \v -> case v of (StaticKey (VarName n) :| [], Fix (NStr (DoubleQuoted [Plain r])), _) | n == k -> Right r; _ -> Left v

check db path = do
  (id, sites) <- parseNix path
  case M.lookup id db of
    Just preps ->
      let mismatch = S.fromList sites & S.filter (\k -> none (T.isInfixOf k) preps)
       in when (S.size mismatch > 0) $ T.putStrLn $ "mismatched ids: " <> id <> ": " <> T.pack (show mismatch) <> ": valid ids:" <> T.pack (show preps)
    _ -> T.putStrLn $ "id not found:" <> id <> ":" <> T.pack path

main =
  getArgs >>= \case
    (key : paths) -> do
      db <- queryRedcap key
      mapM_ (check db) paths
    _ -> hPutStrLn stderr "usage: RedcapKey NixFile ..."
