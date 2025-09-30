{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE ViewPatterns #-}
{-# LANGUAGE NoImplicitPrelude #-}

-- | This module defines data types for representation of nucleotide and
-- aminoacid sequences. This includes functions for translating DNA strings.
module Bioparse.AA where

import ClassyPrelude
import Control.Lens
import Data.List.Split
import Data.Maybe
import Test.QuickCheck
import Text.Read

-- | Amino acids (standard nomenclature)
data AminoAcid
  = Ala
  | Asx
  | Cys
  | Asp
  | Glu
  | Phe
  | Gly
  | His
  | Ile
  | Lys
  | Leu
  | Met
  | Asn
  | Pro
  | Gln
  | Arg
  | Ser
  | Thr
  | Sec
  | Val
  | Trp
  | Xaa
  | Tyr
  | Glx
  | Ter -- Termination
  deriving (Eq, Ord, Generic, Enum, Bounded)

instance Arbitrary AminoAcid where
  arbitrary = arbitraryBoundedEnum

-- | Convert from an aminoacid to a textual representation.
fromAA Ala = "Ala"
fromAA Asx = "Asx"
fromAA Cys = "Cys"
fromAA Asp = "Asp"
fromAA Glu = "Glu"
fromAA Phe = "Phe"
fromAA Gly = "Gly"
fromAA His = "His"
fromAA Ile = "Ile"
fromAA Lys = "Lys"
fromAA Leu = "Leu"
fromAA Met = "Met"
fromAA Asn = "Asn"
fromAA Pro = "Pro"
fromAA Gln = "Gln"
fromAA Arg = "Arg"
fromAA Ser = "Ser"
fromAA Thr = "Thr"
fromAA Sec = "Sec"
fromAA Val = "Val"
fromAA Trp = "Trp"
fromAA Xaa = "Xaa"
fromAA Tyr = "Tyr"
fromAA Glx = "Glx"
fromAA Ter = "Ter"

-- | Convert from a textual representation to an amino acid. This is a partial
-- function.
toAA "Ala" = Just Ala
toAA "Asx" = Just Asx
toAA "Cys" = Just Cys
toAA "Asp" = Just Asp
toAA "Glu" = Just Glu
toAA "Phe" = Just Phe
toAA "Gly" = Just Gly
toAA "His" = Just His
toAA "Ile" = Just Ile
toAA "Lys" = Just Lys
toAA "Leu" = Just Leu
toAA "Met" = Just Met
toAA "Asn" = Just Asn
toAA "Pro" = Just Pro
toAA "Gln" = Just Gln
toAA "Arg" = Just Arg
toAA "Ser" = Just Ser
toAA "Thr" = Just Thr
toAA "Sec" = Just Sec
toAA "Val" = Just Val
toAA "Trp" = Just Trp
toAA "Xaa" = Just Xaa
toAA "Tyr" = Just Tyr
toAA "Glx" = Just Glx
toAA "Ter" = Just Ter
toAA _ = Nothing

prop_invFrom :: AminoAcid -> Bool
prop_invFrom a = Just a == toAA (fromAA a)

-- | Show instance for amino acids. Shows using short single character
-- nomenclature (FASTA notation). See 'toAA' for three-letter nomenclature.
instance Show AminoAcid where
  show Ala = "A"
  show Asx = "B"
  show Cys = "C"
  show Asp = "D"
  show Glu = "E"
  show Phe = "F"
  show Gly = "G"
  show His = "H"
  show Ile = "I"
  show Lys = "K"
  show Leu = "L"
  show Met = "M"
  show Asn = "N"
  show Pro = "P"
  show Gln = "Q"
  show Arg = "R"
  show Ser = "S"
  show Thr = "T"
  show Sec = "U"
  show Val = "V"
  show Trp = "W"
  show Xaa = "X"
  show Tyr = "Y"
  show Glx = "Z"
  show Ter = "*"

-- | Converts FASTA notation to amino acids.
instance Read AminoAcid where
  readsPrec _ (c : cs) =
    case c of
      'A' -> [(Ala, cs)]
      'B' -> [(Asx, cs)]
      'C' -> [(Cys, cs)]
      'D' -> [(Asp, cs)]
      'E' -> [(Glu, cs)]
      'F' -> [(Phe, cs)]
      'G' -> [(Gly, cs)]
      'H' -> [(His, cs)]
      'I' -> [(Ile, cs)]
      'K' -> [(Lys, cs)]
      'L' -> [(Leu, cs)]
      'M' -> [(Met, cs)]
      'N' -> [(Asn, cs)]
      'P' -> [(Pro, cs)]
      'Q' -> [(Gln, cs)]
      'R' -> [(Arg, cs)]
      'S' -> [(Ser, cs)]
      'T' -> [(Thr, cs)]
      'U' -> [(Sec, cs)]
      'V' -> [(Val, cs)]
      'W' -> [(Trp, cs)]
      'X' -> [(Xaa, cs)]
      'Y' -> [(Tyr, cs)]
      'Z' -> [(Glx, cs)]
      '*' -> [(Ter, cs)]
      _ -> []
  readsPrec _ _ = []

prop_invShow :: AminoAcid -> Bool
prop_invShow a = a == read (show a)

-- | Protein sequences are non-empty amino acid strings
newtype ProtSeq = ProtSeq (NonNull [AminoAcid])
  deriving (Eq, Ord, MonoFoldable, MonoFunctor, Semigroup)

type instance Element ProtSeq = AminoAcid

instance Arbitrary ProtSeq where
  arbitrary = ProtSeq . impureNonNull <$> listOf1 arbitrary

instance Show ProtSeq where
  show (ProtSeq p) = ofoldMap1 show p

instance Read ProtSeq where
  readsPrec _ = collect []
    where
      collect ps cs =
        case reads cs of
          [(p, cs')] -> collect (p : ps) cs'
          [] ->
            case ps of
              [] -> []
              _ -> [(ProtSeq . impureNonNull . reverse $ ps, cs)]

prop_ProtSeq_invShow :: ProtSeq -> Bool
prop_ProtSeq_invShow a = a == read (show a)

-- | A prism for amino acids in a protein sequence.
protseq :: Prism' [AminoAcid] ProtSeq
protseq = prism (\(ProtSeq x) -> toNullable x) $ \as ->
  case fromNullable as of
    Nothing -> Left as
    Just x -> Right $ ProtSeq x

--- DNA
data Nuc
  = A
  | C
  | G
  | T
  deriving (Eq, Ord, Show, Enum, Bounded)

instance Arbitrary Nuc where
  arbitrary = arbitraryBoundedEnum

instance Read Nuc where
  readsPrec _ (c : cs) =
    case c of
      'A' -> [(A, cs)]
      'C' -> [(C, cs)]
      'G' -> [(G, cs)]
      'T' -> [(T, cs)]
      'a' -> [(A, cs)]
      'c' -> [(C, cs)]
      'g' -> [(G, cs)]
      't' -> [(T, cs)]
      _ -> []
  readsPrec _ _ = []

newtype DNASeq = DNASeq (NonNull [Nuc])
  deriving (Eq, Ord, MonoFoldable, MonoFunctor, Semigroup)

type instance Element DNASeq = Nuc

instance Arbitrary DNASeq where
  arbitrary = DNASeq . impureNonNull <$> listOf1 arbitrary

instance Show DNASeq where
  show (DNASeq p) = ofoldMap1 show p

instance Read DNASeq where
  readsPrec _ = collect []
    where
      collect ds cs =
        case reads cs of
          [(d, cs')] -> collect (d : ds) cs'
          [] ->
            case ds of
              [] -> []
              _ -> [(DNASeq . impureNonNull . reverse $ ds, cs)]

prop_dna_invShow :: Nuc -> Bool
prop_dna_invShow a = a == read (show a)

prop_dnaSeq_invShow :: DNASeq -> Bool
prop_dnaSeq_invShow a = a == read (show a)

-- Transcription

-- | Reverse complement a DNA sequence
rc :: DNASeq -> DNASeq
rc (DNASeq ns) = DNASeq . reverse $ omap (toEnum . (3 -) . fromEnum) ns

prop_invrc a = a == rc (rc a)

dnaseq :: Prism' [Nuc] DNASeq
dnaseq = prism (\(DNASeq x) -> toNullable x) $ \ns ->
  case fromNullable ns of
    Nothing -> Left ns
    Just x -> Right $ DNASeq x

-- | Translate a DNA sequence to protein peptides. It is assumed the start codon is ATG.
translate (DNASeq ns) = translate'' (findStart $ toNullable ns)

-- | Translate a DNA sequence to protein peptides. It is assumed the sequence is aligned with the start codon and that the start codon is translate to M.
translate' :: DNASeq -> Maybe ProtSeq
translate' (DNASeq ns) = translate'' (([A, T, G] ++) . drop 3 $ toNullable ns)

translate'' ns' =
  case takeWhile (/= Ter) <$> mapM tr (filter (\x -> length x == 3) $ chunksOf 3 ns') of
    Just [] -> Nothing
    a -> ProtSeq . impureNonNull <$> a
  where
    tr [A, A, A] = Just Lys
    tr [A, A, C] = Just Asn
    tr [A, A, G] = Just Lys
    tr [A, A, T] = Just Asn
    tr [A, C, _] = Just Thr
    tr [A, G, A] = Just Arg
    tr [A, G, C] = Just Ser
    tr [A, G, G] = Just Arg
    tr [A, G, T] = Just Ser
    tr [A, T, A] = Just Ile
    tr [A, T, C] = Just Ile
    tr [A, T, G] = Just Met
    tr [A, T, T] = Just Ile
    tr [C, A, A] = Just Gln
    tr [C, A, C] = Just His
    tr [C, A, G] = Just Gln
    tr [C, A, T] = Just His
    tr [C, C, _] = Just Pro
    tr [C, G, _] = Just Arg
    tr [C, T, _] = Just Leu
    tr [G, A, A] = Just Glu
    tr [G, A, C] = Just Asp
    tr [G, A, G] = Just Glu
    tr [G, A, T] = Just Asp
    tr [G, C, _] = Just Ala
    tr [G, G, _] = Just Gly
    tr [G, T, _] = Just Val
    tr [T, A, A] = Just Ter
    tr [T, A, C] = Just Tyr
    tr [T, A, G] = Just Ter
    tr [T, A, T] = Just Tyr
    tr [T, C, _] = Just Ser
    tr [T, G, A] = Just Ter
    tr [T, G, C] = Just Cys
    tr [T, G, G] = Just Trp
    tr [T, G, T] = Just Cys
    tr [T, T, A] = Just Leu
    tr [T, T, C] = Just Phe
    tr [T, T, G] = Just Leu
    tr [T, T, T] = Just Phe
    tr _ = Nothing

-- | Trims a list of nucleotides until start codon is first frame. Assumes start codon is ATG.
findStart [] = []
findStart x@(A : T : G : _) = x
findStart (_ : x) = findStart x

-- | Returns the start position (zero indexed) of the start codon. Assumes start codon is ATG.
startPos :: DNASeq -> Maybe Integer
startPos (DNASeq ns) = findStart 0 $ toNullable ns
  where
    findStart _ [] = Nothing
    findStart n (A : T : G : _) = Just n
    findStart n (x : xs) = findStart (n + 1) xs

-- | Trims a DNASeq using 'findStart'.
trimStart :: DNASeq -> Maybe DNASeq
trimStart (DNASeq (toNullable -> a)) = fmap DNASeq . fromNullable $ findStart a
