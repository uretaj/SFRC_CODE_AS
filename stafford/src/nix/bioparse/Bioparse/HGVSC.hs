{-# LANGUAGE DataKinds #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE ViewPatterns #-}
{-# LANGUAGE NoImplicitPrelude #-}

-- | HGVSC data structure and parsers. See 'HGVSP' for HGVSP notation.
module Bioparse.HGVSC
  ( Type (..),
    parser,
    HGVSC (..),
    toHGVSC,
    shift,
    (+:),
    (-:),
    prop_invHGVSC,
    prop_invshift,
  )
where

import Bioparse.AA
import ClassyPrelude
import Data.Attoparsec.Text as A
import Data.Either
import Data.Maybe
import Data.Proxy
import Data.Type.Equality
import GHC.TypeLits
import Test.QuickCheck
import Text.Read

data Type
  = -- | Genomic
    Gen
  | -- | Mitocondrial
    Mit
  | -- | Coding
    Cod
  | -- | Non-coding
    NonCod
  deriving (Eq, Enum, Bounded)

instance Show Type where
  show Gen = "g"
  show Mit = "m"
  show Cod = "c"
  show NonCod = "n"

instance Arbitrary Type where
  arbitrary = arbitraryBoundedEnum

instance Read Type where
  readsPrec _ (c : cs) =
    case c of
      'g' -> [(Gen, cs)]
      'm' -> [(Mit, cs)]
      'c' -> [(Cod, cs)]
      'n' -> [(NonCod, cs)]
      _ -> []

parser = sub <|> indel <|> indel1 <|> del <|> del1 <|> ins

indel = toInDel <$> typ <*> (decimal <* string "_") <*> decimal <*> (string "del" *> pnucs) <*> (string "ins" *> pnucs)

indel1 = toInDel1 <$> typ <*> decimal <*> (string "delins" *> pnucs)

ins = toIns <$> typ <*> (decimal <* string "_") <*> decimal <*> (string "ins" *> pnucs)

del = toDel <$> typ <*> (decimal <* string "_") <*> decimal <*> (string "del" *> pnucs)

pnucs = DNASeq . impureNonNull <$> many1 nuc

del1 = toDel1 <$> typ <*> (decimal <* string "del") <*> nuc

sub = toSub <$> typ <*> decimal <*> (nuc <* string ">") <*> nuc

nuc = read . return <$> satisfy (inClass "acgtACGT")

typ = read . return <$> satisfy (inClass "gmcn") <* string "."

toSub ty p s t =
  case someNatVal (p - 1) of
    Nothing -> Left "toSub: invalid position"
    Just (SomeNat p') -> Right $ Sub ty s p' t

toDel1 ty p n =
  case someNatVal (p - 1) of
    Nothing -> Left "toDel1: invalid position"
    Just (SomeNat p') -> Right $ Del ty p' (DNASeq $ impureNonNull [n])

toDel :: Type -> Integer -> Integer -> DNASeq -> Either String HGVSC
toDel ty p1 p2 ns =
  let n = 1 + p2 - p1
   in if n == fromIntegral (olength ns)
        then case someNatVal (p1 - 1) of
          Nothing -> Left "toDel: invalid start position"
          Just (SomeNat p1') -> Right $ Del ty p1' ns
        else Left "toDel: invalid size"

toIns :: Type -> Integer -> Integer -> DNASeq -> Either String HGVSC
toIns ty p1 p2 ns =
  if p1 /= p2 - 1
    then Left "toIns: invalid insertion position"
    else case someNatVal (p1 - 1) of
      Nothing -> Left "toIns: invalid insertion position"
      Just (SomeNat p') -> Right $ Ins ty p' ns

toInDel1 :: Type -> Integer -> DNASeq -> Either String HGVSC
toInDel1 ty p ns =
  case someNatVal (p - 1) of
    Nothing -> Left "toInDel1: invalid insertion position"
    Just (SomeNat p') -> Right $ InDel1 ty p' ns

toInDel :: Type -> Integer -> Integer -> DNASeq -> DNASeq -> Either String HGVSC
toInDel ty p1 p2 ns ns' =
  if 1 + p2 - p1 == fromIntegral (olength ns)
    then case someNatVal (p1 - 1) of
      Nothing -> Left "toInDel: invalid start position"
      Just (SomeNat p1') -> Right $ InDel ty p1' ns ns'
    else Left "toInDel: invalid size"

-- | Datatype for HGVSC notation. Note that the special case of a single nucleotide indel is a separate constructor. 'p' in the following represents a zero indexed position.
data HGVSC where
  -- | Substitutions
  Sub :: KnownNat p => Type -> Nuc -> Proxy p -> Nuc -> HGVSC
  -- | Deletions
  Del :: KnownNat p => Type -> Proxy p -> DNASeq -> HGVSC
  -- | Insertions
  Ins :: KnownNat p => Type -> Proxy p -> DNASeq -> HGVSC
  -- | InDel: more than a single nucleotide
  InDel :: KnownNat p => Type -> Proxy p -> DNASeq -> DNASeq -> HGVSC
  -- | Single nucleotide indel
  InDel1 :: KnownNat p => Type -> Proxy p -> DNASeq -> HGVSC

instance Eq HGVSC where
  a == b = show a == show b

instance Show HGVSC where
  show (Sub ty s (natVal -> p) t) = show ty ++ "." ++ show (1 + p) ++ show s ++ ">" ++ show t
  show (Del ty (natVal -> p) ns) =
    case olength ns of
      1 -> show ty ++ "." ++ show (1 + p) ++ "del" ++ show (unsafeHead ns)
      n -> show ty ++ "." ++ show (1 + p) ++ "_" ++ show (p + fromIntegral n) ++ "del" ++ ofoldMap1Ex show ns
  show (Ins ty (natVal -> p) ns) = show ty ++ "." ++ show (1 + p) ++ "_" ++ show (2 + p) ++ "ins" ++ ofoldMap1Ex show ns
  show (InDel1 ty (natVal -> p) ns) = show ty ++ "." ++ show (1 + p) ++ "delins" ++ ofoldMap1Ex show ns
  show (InDel ty (natVal -> p) ns ns') = show ty ++ "." ++ show (1 + p) ++ "_" ++ show (p + fromIntegral (olength ns)) ++ "del" ++ ofoldMap1Ex show ns ++ "ins" ++ ofoldMap1Ex show ns'

instance Arbitrary HGVSC where
  arbitrary = do
    NonNegative (i :: Int) <- arbitrary
    ty <- arbitrary
    NonNegative n <- arbitrary
    case someNatVal n of
      Just (SomeNat p) ->
        case i `mod` 5 of
          0 -> do
            s <- arbitrary
            t <- arbitrary
            return $ Sub ty s p t
          1 -> do
            (ns :: DNASeq) <- arbitrary
            return $ Del ty p ns
          2 -> do
            (ns :: DNASeq) <- arbitrary
            return $ Ins ty p ns
          3 -> do
            (ns :: DNASeq) <- arbitrary
            return $ InDel1 ty p ns
          4 -> do
            (ns :: DNASeq) <- arbitrary
            (ns' :: DNASeq) <- arbitrary
            return $ InDel ty p ns ns'

toHGVSC :: Text -> Maybe HGVSC
toHGVSC str =
  case parse parser str of
    Done _ (Right x) -> Just x
    Partial p ->
      case p "" of
        Done _ (Right x) -> Just x
        _ -> Nothing
    _ -> Nothing

-- | Shifts the position by the specified offset.
shift :: HGVSC -> Integer -> Maybe HGVSC
shift (Sub a b (natVal -> p) c) p' =
  case someNatVal (p + p') of
    Nothing -> Nothing
    Just (SomeNat p'') -> Just $ Sub a b p'' c
shift (Del a (natVal -> p) b) p' =
  case someNatVal (p + p') of
    Nothing -> Nothing
    Just (SomeNat p'') -> Just $ Del a p'' b
shift (Ins a (natVal -> p) b) p' =
  case someNatVal (p + p') of
    Nothing -> Nothing
    Just (SomeNat p'') -> Just $ Ins a p'' b
shift (InDel1 a (natVal -> p) b) p' =
  case someNatVal (p + p') of
    Nothing -> Nothing
    Just (SomeNat p'') -> Just $ InDel1 a p'' b
shift (InDel a (natVal -> p) b c) p' =
  case someNatVal (p + p') of
    Nothing -> Nothing
    Just (SomeNat p'') -> Just $ InDel a p'' b c

(+:) = shift

a -: b = shift a $ negate b

infixr 5 +:

infixr 5 -:

prop_invshift a (Positive b) = Just (Just a) == fmap (`shift` negate b) (shift a b)

prop_invHGVSC x = toHGVSC (pack $ show x) == Just x
