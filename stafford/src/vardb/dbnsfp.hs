{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TupleSections #-}

module Main where

import Cleff
import Cleff.Reader
import Codec.Archive.Zip.Conduit.UnZip
import Conduit
import Control.Lens
import Control.Monad
import Data.Attoparsec.Text (endOfInput, parseOnly, scientific)
import qualified Data.ByteString as B
import qualified Data.ByteString.Char8 as B8
import qualified Data.Conduit.Binary as CB
import Data.Conduit.Zlib
import Data.FileEmbed
import qualified Data.Map as M
import Data.Scientific hiding (scientific)
import Data.String
import Data.Text (Text)
import qualified Data.Text as T
import qualified Data.Vector as V
import Database.SQLite.Simple
import Database.SQLite3
import PyF
import System.Environment
import VCF

schema :: IsString a => a
schema = $(embedStringFile "./dbnsfp.sql")

cols :: [Text]
cols =
  [ "1000Gp3_AF",
    "1000Gp3_AFR_AF",
    "1000Gp3_EUR_AF",
    "1000Gp3_AMR_AF",
    "1000Gp3_EAS_AF",
    "1000Gp3_SAS_AF",
    "ExAC_AF",
    "gnomAD_genomes_AF",
    "gnomAD_exomes_AF",
    "clinvar_clnsig",
    "clinvar_id"
  ]

indexedCols :: [Text]
indexedCols =
  [ "SIFT_pred",
    "Polyphen2_HDIV_pred",
    "Polyphen2_HVAR_pred",
    "Ensembl_transcriptid",
    "MutationTaster_pred",
    "REVEL_score"
  ]

allCols = cols <> indexedCols

a .&& b = \x -> a x && b x

_Text :: Iso' B.ByteString Text
_Text = iso (T.pack . B8.unpack) (B8.pack . T.unpack)

-- There are a lot of columns in dbNSFP, so building a map for each row is expensive;
--  instead we will just subset the string here so they match our above columns
parse :: Monad m => ConduitM B.ByteString [Text] m ()
parse = go []
  where
    go :: Monad m => [Int] -> ConduitM B.ByteString [Text] m ()
    go idxs = do
      str <- await
      case str of
        Nothing -> return ()
        Just str ->
          if B8.head str == '#'
            then -- Header row, parse (assume first columns are chr, pos, ref, alt)

              let keys = B8.tail str ^. _Text . _Delim "\t"
                  m = M.fromList $ zip keys [0 ..]
               in go $ 0 : 1 : 2 : 3 : [m M.! k | k <- allCols]
            else
              let values = V.fromList $ str ^. _Text . _Delim "\t"
               in do
                    yield $ map (V.unsafeIndex values) idxs
                    go idxs

getVariants :: Monad m => ConduitM (Either ZipEntry B.ByteString) B.ByteString m ()
getVariants = go False
  where
    go accept = do
      block <- await
      case block of
        Just (Left ZipEntry {..}) ->
          if either
            ((".gz" `T.isSuffixOf`) .&& ("_variant.chr" `T.isInfixOf`))
            ((".gz" `B8.isSuffixOf`) .&& ("_variant.chr" `B8.isInfixOf`))
            zipEntryName
            then go True
            else go False
        Just (Right b) -> do
          when accept $ yield b
          go accept
        _ -> return ()

insertDB :: (MonadFail m, MonadIO m) => Connection -> ConduitM [Text] Void m ()
insertDB conn = do
  row <- await
  case row of
    Just (chr : pos : ref : alt : rest) -> do
      [Only (id :: Int)] <- liftIO $ insertID (chr, pos, ref, alt)

      liftIO $
        zipWithM_
          ( \col v ->
              if col `elem` indexedCols
                then
                  zipWithM_
                    ( \i x ->
                        when (x /= ".") $
                          execute conn [PyF.fmt|insert or ignore into dbnsfp_{col} values (?,?,?)|] (id, i, x)
                    )
                    [1 :: Int ..]
                    $ T.splitOn ";" v
                else
                  when (v /= ".") $
                    execute conn [PyF.fmt|insert or ignore into dbnsfp_{col} values (?,?)|] (id, v)
          )
          allCols
          rest

      insertDB conn
    Nothing -> return ()
  where
    key' :: Text -> ReifiedFold Value Text
    key' x = Fold (key x . _String)

    insertID pars = do
      execute conn "insert or ignore into muts(chr, pos, ref, alt) values (?,?,?,?)" pars
      query conn "select hmutid from muts where chr = ? and pos = ? and ref = ? and alt = ?" pars

main = do
  [db, zip] <- getArgs
  withConnection db $ \conn -> do
    execute_ conn schema
    execute_ conn "pragma synchronous = off;"
    execute_ conn "pragma journal_mode = MEMORY;"

    -- Create tables for each col
    -- NB: have to prefix with alpha for a valid table name
    forM_ indexedCols $ \col -> execute_ conn [PyF.fmt|create table if not exists dbnsfp_{col}(hmutid integer not null, idx integer not null, dbnsfp_{col}, primary key (hmutid, idx), foreign key (hmutid) references muts(hmutid) on delete cascade);|]
    forM_ cols $ \col -> execute_ conn [PyF.fmt|create table if not exists dbnsfp_{col}(hmutid integer not null, dbnsfp_{col}, primary key (hmutid), foreign key (hmutid) references muts(hmutid) on delete cascade);|]

    withTransaction conn $
      runResourceT $
        runConduit $
          sourceFileBS zip
            .| void unZipStream
            .| getVariants
            .| peekForever ungzip
            .| CB.lines
            .| parse
            .| insertDB conn
