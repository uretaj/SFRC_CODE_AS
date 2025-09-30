{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveTraversable #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TupleSections #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE ViewPatterns #-}

module Main where

import Cleff
import Cleff.Fail
import Cleff.Reader
import Control.Exception (bracket)
import Control.Lens
import Control.Monad
import Data.FileEmbed
import Data.Foldable
import qualified Data.Map as M
import Data.Maybe
import qualified Data.Set as S
import Data.String
import Data.Text (Text)
import qualified Data.Text as T
import Database.SQLite3
import Options.Applicative
import VCF

schema :: IsString a => a
schema = $(embedStringFile "./schema.sql")

columnInt :: Statement -> ColumnIndex -> IO Int
columnInt stmt idx = fromIntegral <$> columnInt64 stmt idx

newtype SampleIDs = SampleIDs (M.Map Text SampleID)

type SampleID = Int

type PhaseGroup = Int

type HapIndex = Int

type HapID = Int

-- Create or get various ids
newtype HaplotypeIDPrep s = HaplotypeIDPrep s
  deriving (Functor, Traversable, Foldable)

getHaplotypeID ::
  (IOE :> es, Reader (HaplotypeIDPrep Statement) :> es) =>
  SampleID ->
  PhaseGroup ->
  HapIndex ->
  Bool ->
  Eff (Fail : es) HapID
getHaplotypeID sampleid phasegroup index somatic = do
  HaplotypeIDPrep stmt <- ask
  liftIO $ do
    reset stmt
    bindInt stmt 1 sampleid
    bindInt stmt 2 phasegroup
    bindInt stmt 3 index
    bindInt stmt 4 $ if somatic then 1 else 0
    stepNoCB stmt
    columnInt stmt 0

data InsertAltPrep s = InsertAltPrep s s s s s s
  deriving (Functor, Traversable, Foldable)

data InsertSamplePrep s = InsertSamplePrep s s s
  deriving (Functor, Traversable, Foldable)

data InsertHaplotypePrep s = InsertHaplotypePrep s s
  deriving (Functor, Traversable, Foldable)

data InsertFilter = All | SomaticOnly

insert ::
  ( IOE :> es,
    Reader (InsertHaplotypePrep Statement) :> es,
    Reader (InsertSamplePrep Statement) :> es,
    Reader (InsertAltPrep Statement) :> es,
    Reader (HaplotypeIDPrep Statement) :> es,
    Reader SampleIDs :> es
  ) =>
  InsertFilter ->
  Value ->
  Eff (Fail : es) ()
insert filtering row =
  let nalleles = length $ row ^. key "ALT" . _Delim ","
   in case filtering of
        All -> mapM_ insertAlt [0 .. nalleles - 1]
        SomaticOnly -> when ("SOMATIC" `S.member` (row ^. key "INFO" . _Delim ";" . _Set)) $ mapM_ insertAlt [0 .. nalleles - 1]
  where
    insertAlt i = do
      let alt = row ^? key "ALT" . _Delim "," . ix i . _String

      -- Don't need to insert these ones
      when (alt /= Just "*" && isJust alt) $ do
        InsertAltPrep iMuts sMuts ips ics iannotations iimpacts <- ask

        -- Fetch mutant id
        when (isNothing (row ^? key "CHROM" . _String >>= T.stripPrefix "chr")) $ liftIO $ print row
        mutid <-
          let Just chr = row ^? key "CHROM" . _String >>= T.stripPrefix "chr"
              Just pos = row ^? key "POS" . _Nat
              Just ref = row ^? key "REF" . _String
              Just alt' = alt
           in liftIO $ do
                reset iMuts
                bindText iMuts 1 chr
                bindInt iMuts 2 pos
                bindText iMuts 3 ref
                bindText iMuts 4 alt'
                stepNoCB iMuts
                columnInt iMuts 0

        let filters = row ^. key "FILTER" . _Delim ","
            samples = row ^. _samples . _Map
        forM_ (M.toList samples) $ insertSample i mutid

        let info = row ^.. key "INFO" . _Delim ";" . traverse . _KeyDelim "="
            ann = filter ((== alt) . (^? _Delim "|" . ix 0)) (info ^. key "ANN" . _Delim ",")
            submit stmt (mutid, i, j, k) = do
              reset stmt
              bindInt stmt 1 mutid
              bindText stmt 2 i
              bindInt stmt 3 j
              bindText stmt 4 k
              stepNoCB stmt
            lookup i =
              ann
                ^.. traverse
                  . _Delim "|"
                  . runFold
                    ( (mutid,,,)
                        <$> Fold (ix 6 . _Delim "." . ix 0)
                        <*> Fold (ix 6 . _Delim "." . ix 1 . _Nat)
                        <*> Fold (ix i . nonEmpty)
                    )

        traverse_ (liftIO . submit ips) (lookup 10)
        traverse_ (liftIO . submit ics) (lookup 9)
        traverse_ (liftIO . submit iannotations) (lookup 1)
        traverse_ (liftIO . submit iimpacts) (lookup 2)

    insertSample i mid (k, sample) = do
      SampleIDs sids <- ask
      let Just gt = sample ^? key "GT" . _Delim "|"
          m = length gt
          Just sid = sids ^? ix k

      InsertSamplePrep iaf icf idp <- ask

      forM_ [0 .. m - 1] $ insertHaplotype i mid (k, sample) sid

      let af = sample ^? key "AF" . _Delim "," . ix (i + 1) . _Real
      when (isJust af) $
        let Just af' = af
         in liftIO $ do
              reset iaf
              bindInt iaf 1 mid
              bindInt iaf 2 sid
              bindDouble iaf 3 af'
              void $ stepNoCB iaf

      let ads = sample ^.. key "AD" . _Delim "," . traverse . _Nat
          dp = sum ads
          ad = fromMaybe 0 $ sample ^? key "AD" . _Delim "," . ix (i + 1) . _Nat
       in liftIO $ do
            reset idp
            bindInt idp 1 mid
            bindInt idp 2 sid
            bindInt idp 3 ad
            bindInt idp 4 dp
            stepNoCB idp

      forM_ (sample ^. key "FT" . _Delim ",") $ \f ->
        liftIO $ do
          reset icf
          bindInt icf 1 mid
          bindInt icf 2 sid
          bindText icf 3 f
          stepNoCB icf

    insertHaplotype i mid (k, sample) sid j = do
      let gt = sample ^? key "GT" . _Delim "|" . ix j . _Nat
          Just phasegroup = sample ^? key "PS" . _Nat

      when (gt == Just (i + 1)) $ do
        InsertHaplotypePrep ic ihf <- ask
        let somatic = sample ^? key "HSS" . _Delim "," . ix j . _Nat == Just 1
        hid <- getHaplotypeID sid phasegroup j somatic
        liftIO $ do
          reset ic
          bindInt ic 1 hid
          bindInt ic 2 mid
          stepNoCB ic

        let hf = sample ^? key "MAP_HF" . _Delim "," . ix j . _Real
        when (isJust hf) $
          let Just (hf' :: Double) = hf
           in liftIO $ do
                reset ihf
                bindInt ihf 1 hid
                bindDouble ihf 2 hf'
                void $ stepNoCB ihf

nonEmpty :: Prism' Text Text
nonEmpty = prism' id (\case "" -> Nothing; x -> Just x)

data Config = Config
  { db :: FilePath,
    donorid :: String,
    vcf :: FilePath,
    somaticOnly :: InsertFilter
  }

config :: Parser Config
config =
  Config
    <$> strArgument (metavar "DB" <> help "path to SQLITE database to insert into")
    <*> strArgument (metavar "DONOR" <> help "ID of the donor corresponding to the VCF")
    <*> strArgument (metavar "VCF" <> help "path to VCF file to insert")
    <*> flag All SomaticOnly (long "somatic-only" <> help "insert somatic variants only")

main = configured =<< execParser opts
  where
    opts =
      info
        (config <**> helper)
        ( fullDesc
            <> progDesc "imports Octopus variants from a VCF file into a SQLite DB"
            <> header "import -- Octopus VCF importer"
        )

configured config = do
  conn <- open $ T.pack $ db config
  exec conn schema
  exec conn "begin transaction"
  rows <- parseVCF $ vcf config

  -- generate sample ids
  sampleids <- fmap M.fromList . forM (head rows ^. _samples . keys) $ \k ->
    bracket (prepare conn "insert into samples (donor, siteid) values (?, ?) on conflict do update set sampleid=sampleid returning sampleid") finalize $ \stmt -> do
      bindText stmt 1 $ T.pack $ donorid config
      bindText stmt 2 k
      stepNoCB stmt
      x <- columnInt stmt 0
      return (k, x)

  -- prepare statements
  hstmts <-
    HaplotypeIDPrep
      <$> prepare
        conn
        "insert into haplotypes(sampleid, phasegroup, hapindex, somatic) values (?,?,?,?) on conflict do update set haplotypeid=haplotypeid returning haplotypeid"
  iAltStmts <-
    InsertAltPrep
      <$> prepare
        conn
        "insert into muts(chr, pos, ref, alt) values (?, ?, ?, ?) on conflict do update set mutid=mutid returning mutid"
      <*> prepare
        conn
        "select mutid from muts where chr = ? and pos = ? and ref = ? and alt = ?"
      <*> prepare
        conn
        "insert or ignore into hgvs_ps(mutid, transcriptid, transcriptver,hgvs_p) values (?,?,?,?)"
      <*> prepare
        conn
        "insert or ignore into hgvs_cs(mutid, transcriptid, transcriptver,hgvs_c) values (?,?,?,?)"
      <*> prepare
        conn
        "insert or ignore into annotations(mutid, transcriptid, transcriptver,annotation) values (?,?,?,?)"
      <*> prepare
        conn
        "insert or ignore into impacts(mutid, transcriptid, transcriptver,impact) values (?,?,?,?)"
  iSampleStmts <-
    InsertSamplePrep
      <$> prepare
        conn
        "insert or ignore into allelefrequencies(mutid, sampleid, frequency) values (?,?,?)"
      <*> prepare
        conn
        "insert or ignore into callfilters(mutid, sampleid, filter) values (?,?,?)"
      <*> prepare
        conn
        "insert or ignore into allelecounts(mutid, sampleid, count, depth) values (?,?,?,?)"
  iHaplotypeStmts <-
    InsertHaplotypePrep
      <$> prepare
        conn
        "insert or ignore into calls(haplotypeid, mutid) values (?,?)"
      <*> prepare
        conn
        "insert or ignore into haplotypefrequencies(haplotypeid, frequency) values (?,?)"
  runIOE
    . runReader iHaplotypeStmts
    . runReader iSampleStmts
    . runReader iAltStmts
    . runReader hstmts
    . runReader (SampleIDs sampleids)
    $ mapM (runFailIO . insert (somaticOnly config)) rows

  -- close all statements
  mapM_ finalize hstmts
  mapM_ finalize iAltStmts
  mapM_ finalize iSampleStmts
  mapM_ finalize iHaplotypeStmts

  exec conn "commit"
  exec conn "analyze"

  close conn
