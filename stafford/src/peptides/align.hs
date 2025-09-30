{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ViewPatterns #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Main where

import Bioparse.AA
import Bioparse.Fasta
import Blosum
import ClassyPrelude
import qualified Data.Map as M
import Data.Either
import qualified Data.Set as S
import qualified Data.Text as T
import qualified Data.Text.IO as T
import qualified Data.Vector as V

getAAs (ProtSeq ps) = toNullable ps

main = do
  [dbPath] <- getArgs
  db <- loadFasta $ unpack dbPath
  let pepdb = S.fromList . map getAAs . rights $ M.elems db

  -- read from stdin and annotate with alignment scores
  lines <- T.lines <$> T.getContents
  forM_ lines $ \line -> do
    for_ (readMay line) $ \ps ->
      let Just score = S.lookupMax $ S.map (sum . zipWith blosum62 (getAAs ps)) pepdb
       in putStrLn $ pack (show ps) ++ "\t" ++ pack (show score)
