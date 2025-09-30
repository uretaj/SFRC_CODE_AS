{-# LANGUAGE OverloadedStrings #-}

module Main where

import Control.Lens
import Control.Monad
import qualified Data.Text as T
import qualified Data.Text.IO as T
import System.Environment
import VCF
import Data.Maybe

main = do
  [input] <- getArgs
  vcf <- parseVCF input

  forM_ vcf $ \row ->
    let chr = row ^. key "CHROM" . _String
        Just pos = row ^? key "POS" . _Nat
        id' = row ^. key "ID" . _String
        mateid = (row ^.. key "INFO" . _Delim ";" . traverse . _KeyDelim "=") ^? key "MATEID" . _String
        alt = row ^. key "ALT" . _String
     in case mateid of
          Just mateid' ->
            T.putStrLn $
              "breakend("
                <> T.intercalate
                  ","
                  [ maybe chr id $ T.stripPrefix "chr" chr,
                    T.pack $ show pos,
                    id',
                    mateid',
                    if T.last alt `elem` ("[]" :: [Char]) then "true" else "false",
                    if T.head alt `elem` ("[]" :: [Char]) then "true" else "false"
                  ]
                <> ")."
          Nothing -> pure ()
