{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RankNTypes #-}

module VCF
  ( _Value,
    _String,
    _Delim,
    _Vector,
    _Map,
    _List,
    _Set,
    _KeyDelim,
    _Number,
    _Real,
    _Int,
    _Nat,
    _Seq,
    key,
    keys,
    values,
    _samples,
    parseVCF,
    Value (..),
    Nuc (..),
  )
where

import Control.Applicative
import Control.Lens
import Control.Monad
import Data.Attoparsec.Text
import qualified Data.ByteString.Lazy.Char8 as BSL
import Data.Foldable
import Data.Functor (($>))
import qualified Data.Map as M
import Data.Scientific hiding (scientific)
import qualified Data.Set as S
import Data.String
import qualified Data.Text as T
import qualified Data.Vector as V

data Nuc = A | C | G | T deriving (Eq, Ord, Show)

data Value
  = String !T.Text
  | Number Scientific
  | Array !(V.Vector Value)
  | KeyVal !T.Text !Value
  deriving (Eq, Ord, Show)

instance IsString Value where
  fromString = String . T.pack

toText = T.pack . BSL.unpack

isKeyVal (KeyVal _ _) = True
isKeyVal _ = False

unKeyVal (KeyVal x y) = (x, y)

unString (String x) = x

unArray (Array x) = x

unNumber (Number x) = x

rightToMaybe (Right x) = Just x
rightToMaybe _ = Nothing

parseVCF path = do
  cnt <- BSL.lines <$> BSL.readFile path
  let hdr : rest = dropWhile ("##" `BSL.isPrefixOf`) cnt
      keys = map toText . BSL.words $ BSL.tail hdr
  return $
    map
      ( Array
          . V.fromList
          . zipWith KeyVal keys
          . map (String . toText)
          . BSL.words
      )
      rest

nuc =
  (char 'A' $> A) <|> (char 'C' $> C) <|> (char 'G' $> G) <|> (char 'T' $> T)

class AsValue t where
  _Value :: Fold t Value

  _String :: Fold t T.Text
  _String = _Value . folding (\v -> case v of String s -> Right s; _ -> Left v)
  {-# INLINE _String #-}

  _Delim :: T.Text -> Fold t [T.Text]
  _Delim d = _Value . folding (\v -> case v of String s -> Right $ T.splitOn d s; _ -> Left v)
  {-# INLINE _Delim #-}

  _Vector :: Fold t (V.Vector Value)
  _Vector = _Value . folding (\v -> case v of Array a -> Right a; _ -> Left v)
  {-# INLINE _Vector #-}

  _List :: Fold t [Value]
  _List = _Value . _Vector . to V.toList
  {-# INLINE _List #-}

  _Map :: Fold t (M.Map T.Text Value)
  _Map =
    _Value
      . folding
        ( \v -> case v of
            Array a ->
              Right . M.fromList . map unKeyVal . filter isKeyVal $ V.toList a
            _ -> Left v
        )
  {-# INLINE _Map #-}

  _Set :: Fold t (S.Set Value)
  _Set = _Value . _Vector . to V.toList . to S.fromList
  {-# INLINE _Set #-}

  _KeyDelim :: T.Text -> Fold t (T.Text, T.Text)
  _KeyDelim d = _Value . _Delim d . folding (\v -> case v of [a, b] -> Right (a, b); _ -> Left v)
  {-# INLINE _KeyDelim #-}

  _Number :: Fold t Scientific
  _Number = _Value . folding (\case String s -> rightToMaybe $ parseOnly (scientific <* endOfInput) s; Number n -> Just n; _ -> Nothing)
  {-# INLINE _Number #-}

  _Real :: RealFloat r => Fold t r
  _Real = _Value . _Number . folding toBoundedRealFloat
  {-# INLINE _Real #-}

  _Int :: Fold t Int
  _Int = _Value . _Number . folding toBoundedInteger
  {-# INLINE _Int #-}

  _Nat :: Fold t Int
  _Nat = _Value . _Int . folding (\v -> if v < 0 then Nothing else Just v)
  {-# INLINE _Nat #-}

  _Seq :: Fold t [Nuc]
  _Seq = _Value . _String . folding (rightToMaybe . parseOnly (many nuc <* endOfInput))
  {-# INLINE _Seq #-}

instance AsValue T.Text where
  _Value = iso String unString
  {-# INLINE _Value #-}

instance AsValue Scientific where
  _Value = iso Number unNumber
  {-# INLINE _Value #-}

instance {-# OVERLAPPING #-} AsValue v => AsValue (T.Text, v) where
  _Value =
    folding
      ( \(a, b) -> case b ^? _Value of
          Just b -> Just $ KeyVal a b
          _ -> Nothing
      )
  {-# INLINE _Value #-}

instance AsValue Value where
  _Value = id
  {-# INLINE _Value #-}

instance (AsValue v, Functor f, Foldable f) => AsValue (f v) where
  _Value =
    folding (fmap (Array . V.fromList) . sequence . toList . fmap (^? _Value))
  {-# INLINE _Value #-}

key :: AsValue t => T.Text -> Fold t Value
key i = _Map . ix i
{-# INLINE key #-}

keys :: AsValue t => Fold t [T.Text]
keys = _Map . to M.keys

values :: AsValue t => Fold t [Value]
values = _Map . to M.elems

-- Parse out samples
samples v =
  let m = v ^? _Map
      Just m' = m
      keys = S.fromList $ M.keys m'
      otherCols =
        S.fromList
          ["CHROM", "POS", "ID", "REF", "ALT", "QUAL", "FILTER", "INFO", "FORMAT"]
      samples = S.toList $ keys `S.difference` otherCols
      --noSamples = compose $ map sans samples
      fmt = v ^? key "FORMAT"
      v' = case fmt of
        Just (String fmt) ->
          fmap (Array . V.fromList) . sequence $
            flip map samples $ \s ->
              case v ^? key s . _String of
                Just x ->
                  Just . KeyVal s $
                    (Array . V.fromList)
                      ( zipWith KeyVal (T.splitOn ":" fmt) (map String (T.splitOn ":" x))
                      )
                _ -> Nothing
        _ -> Nothing

      compose :: [r -> r] -> r -> r
      compose = flip (foldl (flip id))
   in case m of
        Just _ -> Samples <$> v'
        _ -> Nothing

newtype Samples = Samples
  { unSamples :: Value
  }
  deriving (Eq, Ord, Show)

_samples :: Fold Value Samples
_samples = folding samples
{-# INLINE _samples #-}

instance AsValue Samples where
  _Value = iso unSamples Samples
  {-# INLINE _Value #-}
