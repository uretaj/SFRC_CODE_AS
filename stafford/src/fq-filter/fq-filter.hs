{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

import Control.Monad.Trans.Resource
import Prelude hiding (Read)
import Control.Applicative
import qualified Data.Attoparsec.ByteString.Char8 as A
import qualified Data.Attoparsec.ByteString.Streaming as AS
import qualified Data.ByteString.Char8 as B
import qualified Streaming.ByteString.Char8 as Q
import Test.QuickCheck.Arbitrary.Generic
import GHC.Generics
import Test.QuickCheck.Instances.ByteString
import Test.QuickCheck.Modifiers (getPrintableString)
import Streaming
import qualified Streaming.Prelude as S
import Data.Function ((&))
import System.Environment (getArgs)
import System.IO (withFile, IOMode(..), Handle(..))

data Nuc = A | C | G | T deriving (Eq, Show, Enum, Generic)

toNuc 'a' = Just A
toNuc 'c' = Just C
toNuc 'g' = Just G
toNuc 't' = Just T
toNuc 'n' = Nothing
toNuc 'A' = Just A
toNuc 'C' = Just C
toNuc 'G' = Just G
toNuc 'T' = Just T
toNuc 'N' = Nothing

fromNuc (Just A) = 'A'
fromNuc (Just C) = 'C'
fromNuc (Just G) = 'G'
fromNuc (Just T) = 'T'
fromNuc _ = 'N'

instance Arbitrary Nuc where
  arbitrary = genericArbitrary
  shrink = genericShrink

prop_nuc :: Maybe Nuc -> Bool
prop_nuc n = toNuc (fromNuc n) == n

data Qual =  Q1 | Q2 | Q3 | Q4 | Q5 | Q6 | Q7 | Q8 | Q9 | Q10 | Q11 | Q12 | Q13 | Q14 | Q15 | Q16 | Q17 | Q18 | Q19 | Q20 | Q21 | Q22 | Q23 | Q24 | Q25 | Q26 | Q27 | Q28 | Q29 | Q30 | Q31 | Q32 | Q33 | Q34 | Q35 | Q36 | Q37 | Q38 | Q39 | Q40 | Q41 | Q42
  deriving (Show, Eq, Ord, Enum, Generic)

instance Arbitrary Qual where
  arbitrary = genericArbitrary
  shrink = genericShrink

toQual :: Char -> Qual
toQual c = toEnum $ fromEnum c - fromEnum '!'

fromQual :: Qual -> Char
fromQual q = toEnum $ fromEnum '!' + fromEnum q

prop_qual :: Qual -> Bool
prop_qual q = toQual (fromQual q) == q

newtype QSeq = QSeq {
    unQSeq :: [(Maybe Nuc, Qual)]
  } deriving (Eq, Show, Generic)

instance Arbitrary QSeq where
  arbitrary = genericArbitrary
  shrink = genericShrink

data Read = Read {
  _label :: B.ByteString,
  _sequence :: QSeq
} deriving (Eq, Show, Generic)

instance Arbitrary Read where
  arbitrary = do
    n <- B.filter (\x -> x /='\n' && x /= '\r') . B.pack . getPrintableString <$> arbitrary
    Read n <$> arbitrary
  shrink = genericShrink

type PairedRead = (Read, Read)

pair r1@(Read l1 s1) r2@(Read l2 s2)
  | first l1 == first l2 = (r1, r2)
  | otherwise = error $ unwords ["mismatched pair:", B.unpack l1, B.unpack l2]
  where first = head . B.words

hdr = A.char '@' *> A.takeTill (\c -> c == '\r' || c == '\n')  <* A.endOfLine
nuc = A.inClass "ACGTNacgtn"
nucs = A.takeWhile nuc <* A.endOfLine
qual = A.inClass ['!'..'K']
quals = A.takeWhile qual <* A.endOfLine

entry = do
  h <- hdr
  n <- nucs
  q <- A.char '+' *> A.endOfLine *> quals
  if B.length q == B.length n then
    return . Read h . QSeq $ zip (map toNuc $ B.unpack n) (map toQual $ B.unpack q)
  else
    empty

fromRead :: Read -> B.ByteString
fromRead (Read n seq) =
  B.unlines ["@" `B.append` n, B.pack $ map (fromNuc . fst) $ unQSeq seq, "+", B.pack $ map (fromQual . snd) $ unQSeq seq]

prop_read :: Read -> Bool
prop_read r =
  case A.parseOnly entry (fromRead r) of
    Right r' -> r == r'
    Left _ -> False

writeFQ h = Q.hPut h . Q.fromChunks . S.map fromRead
writeFQ_ h = void . writeFQ h

filterZeros :: FilePath -> FilePath -> Handle -> Handle -> IO ()
filterZeros i1 i2 o1 o2 = do
  r <- runResourceT $
    S.zipWith pair (Q.readFile i1 & AS.parsed entry) (Q.readFile i2 & AS.parsed entry)
      & S.filter (\(Read _ (QSeq xs), Read _ (QSeq ys)) -> not (null xs) && not (null ys))
      & S.unzip
      & writeFQ o1
      & writeFQ o2
  case r of
    Right () -> return ()
    Left _ -> error "trailing input"

main = do
  [p1, p2, o1, o2] <- getArgs
  withFile o1 WriteMode $ \o1' ->
    withFile o2 WriteMode $ \o2' ->
      filterZeros p1 p2 o1' o2'
