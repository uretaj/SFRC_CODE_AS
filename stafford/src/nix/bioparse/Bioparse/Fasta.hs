{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ViewPatterns #-}
{-# LANGUAGE NoImplicitPrelude #-}

-- | Fasta file creation and parsing. Includes some parsers for
-- loading refseq protein and nucleotide sequences into a map.
-- Also has attoparsec parser for fast rows.
module Bioparse.Fasta
  ( Row (..),
    toFasta,
    row,
    loadFasta,
  )
where

import Bioparse.AA
import ClassyPrelude hiding (withFile)
import Control.Monad.Trans.Resource
import Control.Monad.Trans.State.Strict
import Data.Attoparsec.ByteString.Char8 as A hiding (take)
import qualified Data.Attoparsec.ByteString.Streaming as PA
import Data.ByteString.Char8 (ByteString)
import qualified Data.ByteString.Char8 as BS
import Data.Function ((&))
import qualified Data.Map.Strict as M
import Streaming
import qualified Streaming.ByteString.Char8 as Q
import qualified Streaming.Prelude as S
import System.IO (IOMode (ReadMode), withFile)
import Text.Read (readMaybe)

-- | Represents an entry in a fast file. Entries have header text and either a DNA or peptide sequence
data Row = Row Text (Either DNASeq ProtSeq)
  deriving (Show)

-- | Convert a 'Row' to Fasta representation.
toFasta :: Row -> Text
toFasta (Row hdr (Right (ProtSeq ns))) = ">" ++ hdr ++ "\n" ++ pack (show ns) ++ "\n"
toFasta (Row hdr (Left (DNASeq ns))) = ">" ++ hdr ++ "\n" ++ pack (show ns) ++ "\n"

-- | Parse a fasta row
row = char '>' *> (toRow <$> (takeTill (== '\n') <* char '\n') <*> many aaRow)

aaRow = takeWhile1 (\c -> c /= '\n' && c /= '>') <* char '\n'

bs2t = pack . BS.unpack

toRow :: ByteString -> [ByteString] -> Maybe Row
toRow (bs2t -> hdr) (BS.unpack . BS.concat -> ns) =
  let prot = Row hdr . Right <$> readMaybe ns
      dna = Row hdr . Left <$> readMaybe ns
   in if isJust dna then dna else prot

-- | Load fasta into a map
loadFasta :: FilePath -> IO (M.Map Text (Either DNASeq ProtSeq))
loadFasta path =
  runResourceT $
    Q.readFile path
      & PA.parsed row
      & S.catMaybes
      & S.fold_ (\m (Row hdr as) -> M.insert hdr as m) mempty id
