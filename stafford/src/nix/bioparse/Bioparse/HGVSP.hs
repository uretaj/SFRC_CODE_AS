{-# LANGUAGE DataKinds #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE ViewPatterns #-}
{-# LANGUAGE NoImplicitPrelude #-}

-- | HGVSP data structure and parsers. See 'HGVSC' for HGVSC notation.
module Bioparse.HGVSP
  ( HGVSP (..),
    toHGVSP,
    parser,
    shift,
    (+:),
    (-:),
    prop_invHGVSP,
    prop_invshift,
  )
where

import Bioparse.AA
import Bioparse.Compare
import ClassyPrelude
import Data.Attoparsec.Text as A
import Data.Maybe
import Data.Proxy
import Data.Type.Equality
import GHC.TypeLits
import Test.QuickCheck

-- | Datatype for HGVSP notation. Note that the special case of a single nucleotide indel is a separate constructor. 'p' in the following represents a zero indexed position.
data HGVSP where
  Sub :: KnownNat p => AminoAcid -> Proxy p -> AminoAcid -> HGVSP
  Del1 :: KnownNat p => AminoAcid -> Proxy p -> HGVSP
  DelRng :: (KnownNat p, KnownNat p', p + 1 <= p') => AminoAcid -> Proxy p -> AminoAcid -> Proxy p' -> HGVSP
  Ins :: KnownNat p => AminoAcid -> Proxy p -> AminoAcid -> ProtSeq -> HGVSP
  InDel1 :: KnownNat p => AminoAcid -> Proxy p -> ProtSeq -> HGVSP
  InDel :: (KnownNat p, KnownNat p', p + 1 <= p') => AminoAcid -> Proxy p -> AminoAcid -> Proxy p' -> ProtSeq -> HGVSP

instance Eq HGVSP where
  a == b = show a == show b

instance Show HGVSP where
  show (Sub a p b) = "p." ++ fromAA a ++ show (1 + natVal p) ++ fromAA b
  show (Del1 a p) = "p." ++ fromAA a ++ show (1 + natVal p) ++ "del"
  show (DelRng a p b p') = "p." ++ fromAA a ++ show (1 + natVal p) ++ "_" ++ fromAA b ++ show (1 + natVal p') ++ "del"
  show (Ins a p b (ProtSeq es)) = "p." ++ fromAA a ++ show (1 + natVal p) ++ "_" ++ fromAA b ++ show (2 + natVal p) ++ "ins" ++ ofoldMap1 fromAA es
  show (InDel1 a p (ProtSeq es)) = "p." ++ fromAA a ++ show (1 + natVal p) ++ "delins" ++ ofoldMap1 fromAA es
  show (InDel a p b p' (ProtSeq es)) = "p." ++ fromAA a ++ show (1 + natVal p) ++ "_" ++ fromAA b ++ show (1 + natVal p') ++ "delins" ++ ofoldMap1 fromAA es

instance Arbitrary HGVSP where
  arbitrary = do
    NonNegative (n :: Int) <- arbitrary
    case n `mod` 6 of
      0 -> do
        NonNegative (n :: Integer) <- arbitrary
        a <- arbitrary
        b <- arbitrary
        case someNatVal n of
          Just (SomeNat n') -> return $ Sub a n' b
      1 -> do
        NonNegative (n :: Integer) <- arbitrary
        a <- arbitrary
        case someNatVal n of
          Just (SomeNat n') -> return $ Del1 a n'
      2 -> do
        NonNegative (n :: Integer) <- arbitrary
        Positive (m :: Integer) <- arbitrary
        (a :: AminoAcid) <- arbitrary
        (b :: AminoAcid) <- arbitrary
        case someNatVal n of
          Just (SomeNat n') ->
            case someNatVal (n + m) of
              Just (SomeNat m') ->
                case n' %<? m' of
                  LE Refl -> return $ DelRng a n' b m'
      3 -> do
        NonNegative (n :: Integer) <- arbitrary
        a <- arbitrary
        b <- arbitrary
        ps <- arbitrary
        case someNatVal n of
          Just (SomeNat n') -> return $ Ins a n' b ps
      4 -> do
        NonNegative (n :: Integer) <- arbitrary
        a <- arbitrary
        ps <- arbitrary
        case someNatVal n of
          Just (SomeNat n') -> return $ InDel1 a n' ps
      5 -> do
        NonNegative (n :: Integer) <- arbitrary
        Positive (m :: Integer) <- arbitrary
        (a :: AminoAcid) <- arbitrary
        (b :: AminoAcid) <- arbitrary
        (ps :: ProtSeq) <- arbitrary
        case someNatVal n of
          Just (SomeNat n') ->
            case someNatVal (n + m) of
              Just (SomeNat m') ->
                case n' %<? m' of
                  LE Refl -> return $ InDel a n' b m' ps

toHGVSP :: Text -> Maybe HGVSP
toHGVSP str =
  case parse parser str of
    Done _ x -> Just x
    Partial p ->
      case p "" of
        Done _ x -> Just x
        _ -> Nothing
    _ -> Nothing

parser = string "p." *> hgvsp

hgvsp = sub <|> ins <|> indel <|> indel1 <|> del1 <|> delRng

ins = toIns <$> aa <*> decimal <*> (string "_" *> aa) <*> decimal <*> (string "ins" *> many aa)

del1 = toDel <$> aa <*> decimal <* string "del"

delRng = toDelRng <$> aa <*> decimal <*> (string "_" *> aa) <*> (decimal <* string "del")

indel1 = toInDel1 <$> aa <*> decimal <*> (string "delins" *> many aa)

indel = toInDel <$> aa <*> decimal <*> (string "_" *> aa) <*> decimal <*> (string "delins" *> many aa)

sub = toSub <$> aa <*> decimal <*> aa

aa =
  fromJust . toAA
    <$> ( string "Ala"
            <|> string "Asx"
            <|> string "Cys"
            <|> string "Asp"
            <|> string "Glu"
            <|> string "Phe"
            <|> string "Gly"
            <|> string "His"
            <|> string "Ile"
            <|> string "Lys"
            <|> string "Leu"
            <|> string "Met"
            <|> string "Asn"
            <|> string "Pro"
            <|> string "Gln"
            <|> string "Arg"
            <|> string "Ser"
            <|> string "Thr"
            <|> string "Sec"
            <|> string "Val"
            <|> string "Trp"
            <|> string "Xaa"
            <|> string "Tyr"
            <|> string "Glx"
            <|> string "Ter"
            <|> string "*"
        )

toIns :: AminoAcid -> Integer -> AminoAcid -> Integer -> [AminoAcid] -> HGVSP
toIns a b c d es =
  if b + 1 /= d
    then error "toIns: start must be adjacent to end"
    else case someNatVal (b - 1) of
      Nothing -> error "toIns: invalid start position"
      Just (SomeNat start) ->
        case fromNullable es of
          Nothing -> error "toIns: empty insertion sequence"
          Just es' -> Ins a start c (ProtSeq es')

toSub :: AminoAcid -> Integer -> AminoAcid -> HGVSP
toSub a b c =
  case someNatVal (b - 1) of
    Just (SomeNat p) -> Sub a p c
    _ -> error "toSub: Invalid amino acid position"

toDel a b =
  case someNatVal (b - 1) of
    Just (SomeNat n) -> Del1 a n
    _ -> error "toDel: invalid start position"

toDelRng :: AminoAcid -> Integer -> AminoAcid -> Integer -> HGVSP
toDelRng a b c d =
  case someNatVal (b - 1) of
    Nothing -> error "toDelRng: invalid start position"
    Just (SomeNat start) ->
      case someNatVal (d - 1) of
        Nothing -> error "toDelRng: invalid end position"
        Just (SomeNat end) ->
          case start %<? end of
            LE Refl -> DelRng a start c end
            _ -> error "toDelRngs: start must precede end"

toInDel1 :: AminoAcid -> Integer -> [AminoAcid] -> HGVSP
toInDel1 a b cs =
  case someNatVal (b - 1) of
    Nothing -> error "toInDel1: invalid start position"
    Just (SomeNat start) ->
      case fromNullable cs of
        Nothing -> error "toInDel1: empty insertion sequence"
        Just cs' -> InDel1 a start (ProtSeq cs')

toInDel :: AminoAcid -> Integer -> AminoAcid -> Integer -> [AminoAcid] -> HGVSP
toInDel a b c d es =
  case someNatVal (b - 1) of
    Nothing -> error "toInDel: invalid start position"
    Just (SomeNat start) ->
      case someNatVal (d - 1) of
        Nothing -> error "toInDel: invalid end position"
        Just (SomeNat end) ->
          case start %<? end of
            LE Refl ->
              case fromNullable es of
                Nothing -> error "toInDel: empty insertion sequence"
                Just es' -> InDel a start c end (ProtSeq es')
            _ -> error "toInDel: start must precede end"

prop_invHGVSP :: HGVSP -> Bool
prop_invHGVSP a = let Just a' = toHGVSP (pack $ show a) in show a == show a'

shift :: HGVSP -> Integer -> Maybe HGVSP
shift (Sub a (natVal -> p) b) p' =
  case someNatVal (p + p') of
    Nothing -> Nothing
    Just (SomeNat p'') -> Just $ Sub a p'' b
shift (Del1 a (natVal -> p)) p' =
  case someNatVal (p + p') of
    Nothing -> Nothing
    Just (SomeNat p'') -> Just $ Del1 a p''
shift (DelRng a (natVal -> p) b (natVal -> q)) p' =
  case someNatVal (p + p') of
    Nothing -> Nothing
    Just (SomeNat p'') ->
      case someNatVal (q + p') of
        Nothing -> Nothing
        Just (SomeNat q'') ->
          case p'' %<? q'' of
            LE Refl -> Just $ DelRng a p'' b q''
            _ -> Nothing
shift (Ins a (natVal -> p) b c) p' =
  case someNatVal (p + p') of
    Nothing -> Nothing
    Just (SomeNat p'') -> Just $ Ins a p'' b c
shift (InDel1 a (natVal -> p) b) p' =
  case someNatVal (p + p') of
    Nothing -> Nothing
    Just (SomeNat p'') -> Just $ InDel1 a p'' b
shift (InDel a (natVal -> p) b (natVal -> q) c) p' =
  case someNatVal (p + p') of
    Nothing -> Nothing
    Just (SomeNat p'') ->
      case someNatVal (q + p') of
        Nothing -> Nothing
        Just (SomeNat q'') ->
          case p'' %<? q'' of
            LE Refl -> Just $ InDel a p'' b q'' c
            _ -> Nothing

(+:) = shift

a -: b = shift a $ negate b

infixr 5 +:

infixr 5 -:

prop_invshift a (Positive b) = Just (Just a) == fmap (`shift` negate b) (shift a b)
