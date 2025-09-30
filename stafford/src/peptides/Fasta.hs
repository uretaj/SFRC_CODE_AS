module Fasta where

import Bioparse.AA
import qualified Data.ByteString as B
import qualified Data.ByteString.Char8 as BC
import qualified Data.Map.Strict as M
import Data.Text (Text)
import qualified Data.Text as T
import System.IO.Posix.MMap
import Text.Read (readMaybe)

data IndexedFasta = IndexedFasta (M.Map Text Int) B.ByteString

indexFile :: FilePath -> IO IndexedFasta
indexFile path = do
  bs <- unsafeMMapFile path
  return $ IndexedFasta (M.fromList . map (tagId bs) $ BC.findIndices (== '>') bs) bs
  where
    -- assume Ensembl ids in the following, and take only non-versioned part
    tagId bs idx = (toText . BC.take 15 $ B.drop (idx + 1) bs, idx)

toText = T.pack . BC.unpack

lookup :: Text -> IndexedFasta -> Maybe DNASeq
lookup key (IndexedFasta idx bs) = M.lookup key idx >>= parseDNA . parseFasta . flip B.drop bs
  where
    parseFasta = BC.filter (/= '\n') . BC.takeWhile (/= '>') . BC.dropWhile (/= '\n')
    parseDNA = readMaybe . BC.unpack
