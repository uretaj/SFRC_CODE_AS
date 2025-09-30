{-# LANGUAGE ViewPatterns #-}
{-# LANGUAGE DeriveFunctor #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE Strict #-}
module Main where

import Data.Maybe
import Control.Monad
import System.Environment
import Data.List (foldl', sort)
import qualified Data.Map.Strict as M

data Interval a = Interval a a deriving (Functor, Show)

instance (Ord a, Eq a) => Eq (Interval a) where
  (Interval l u) == (Interval l' u') = l' < u && l < u' || l < u' && l' < u

instance Ord a => Ord (Interval a) where
  (Interval l u) <= (Interval l' u') = l < u'

type Chr = String
type TCount = Int
type NBases = Int
type ID = String

data Region v a = Region String Chr (Interval a) v
  deriving (Functor, Show)

instance (Ord a, Eq a) => Eq (Region v a) where
  (Region _ chr loc _) == (Region _ chr' loc' _) = chr == chr' && loc == loc'

instance Ord a => Ord (Region v a) where
  (Region _ chr loc _) <= (Region _ chr' loc' _) = chr < chr' || chr == chr' && loc <= loc'

(Region _ chr loc _) `overlaps` (Region _ chr' loc' _) = chr == chr' && loc == loc'
(Region _ chr loc _) `lessThan` (Region _ chr' loc' _) = chr < chr' || chr == chr' && loc <= loc'

data ITree k = Node Integer k (ITree k) (ITree k) | Empty
  deriving (Eq, Ord, Show)

toList Empty = []
toList (Node _ k l r) = k : toList l ++ toList r

insert :: Ord k => ITree k -> k -> ITree k
insert Empty r = Node 1 r Empty Empty
insert n@(Node lv d l r) d'
  | d' < d = split $ skew $ Node lv d (insert l d') r
  | d < d' = split $ skew $ Node lv d l (insert r d')
  | otherwise = error "regions must be disjoint"

skew (Node lvx kx (Node lvy ky a b) c) | lvx == lvy = Node lvx ky a (Node lvx kx b c)
skew t = t

split (Node lvx kx a (Node lvy ky b (Node lvz kz c d))) | (lvx == lvy) && (lvy == lvz)= Node (lvx+1) ky (Node lvx kx a b) (Node lvx kz c d)
split t = t

update _ Empty _ = Empty
update f (Node lv d l r) d' = Node lv (if d `overlaps` d' then f d d' else d) (if d' `lessThan` d then update f l d' else l) (if d `lessThan` d' then update f r d' else r)

read' x = if x == "NA" then Nothing else Just (read x)

parseRegions path = do
  contents <- readFile path
  return $ mapMaybe (parse' . words) $ tail $ lines contents
  where
    parse' (chr:(read -> start :: Int):(read -> end :: Int):name:_) = Just $ Region name chr (Interval start end) []
    parse' _ = Nothing

parseSample path = do
  contents <- readFile path
  return $ map (parse' . words) $ lines contents
  where
    parse' (chr:(read -> start :: Int):(read -> end :: Int):(read -> tcn :: Int):_) = Region "" ("chr" ++ chr) (Interval start end) tcn

splitCNV (Region n chr (Interval s e) cns) (Region _ _ (Interval s' e') cn) = Region n chr (Interval s e) ((cn, min e' e - max s' s):cns)

mean :: Int -> [(Int, Int)] -> Double
mean m x = 
  let (s, n) = foldl' (\(a, b) (c, d) -> (a + c*d, b + d)) (0, 0) x
      av = fromIntegral s / n'
      n' = fromIntegral n
      m' = fromIntegral m
  in av * n' / m' + 2 * (m' - n') / m'

main = do
  [regions, sample] <- getArgs
  tree <- foldl' insert Empty  <$> parseRegions regions :: IO (ITree (Region [(Int, Int)] Int))
  sr <- parseSample sample
  forM_ (toList $ foldl' (update splitCNV) tree sr) $
    \(Region n chr (Interval s e) cns) ->
      unless (null cns) $ do
        putStrLn $ unwords [ n, chr, show s, show e, show $ mean (e-s) cns ]
