{-# LANGUAGE DataKinds #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PackageImports #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE ViewPatterns #-}
{-# LANGUAGE NoImplicitPrelude #-}

module Main where

import Bioparse.AA
import Bioparse.HGVSC
import ClassyPrelude hiding (apply, takeWhile)
import Control.Lens hiding (index)
import Control.Monad.Trans.State
import "align" Data.Align
import Data.Attoparsec.Text hiding (take)
import Data.Char (isSpace)
import Data.IOData (hPutStrLn)
import Data.List (nub)
import qualified Data.Map as M
import Data.Maybe hiding (catMaybes)
import Data.Proxy
import qualified Data.Set as S
import qualified Data.Text as T
import qualified Data.Text.IO as T
import qualified Data.Text.Read as T
import Fasta
import GHC.TypeLits

type ENST = Text

data Input = Input ENST [([HGVSC], [HGVSC])]
  deriving (Show)

input = Input <$> word <* spaces <*> pg `sepBy` char ' '

muts = catMaybes <$> mut `sepBy` char '|'

pg = (,) <$> muts <*> (char ':' *> muts)

mut = toHGVSC <$> word

word = takeWhile1 (\x -> not (isSpace x) && x /= ':' && x /= '!' && x /= '|')

spaces = takeWhile isHorizontalSpace

main :: IO ()
main = do
  [path, T.decimal -> (Right (window, _))] <- getArgs
  pr "indexing ensembl"
  db <- indexFile (T.unpack path)
  pr "done"
  evalStateT (evalStateT (resolve db window 1) mempty) 0

pr :: MonadIO m => Text -> m ()
pr = hPutStrLn stderr

resolve :: IndexedFasta -> Int -> Int -> StateT (S.Set Text) (StateT Int IO) ()
resolve r window lno = do
  eof <- hIsEOF stdin
  unless eof $ do
    line <- liftIO T.getLine
    case parseOnly input line of
      Right (Input nm ps) -> do
        for_ (Fasta.lookup nm r) $ \p ->
          for_ ps $ \(gla, soma) ->
            let gla' = seqHGVSC gla
                soma' = fmap (drop (lengthIndex gla)) . seqHGVSC $ gla ++ soma
             in for_ (gla' >>= foldM mutate p) $ \p' ->
                  for_ (soma' >>= foldM mutate p') $ \p'' ->
                    for_ (translate' p') $ \q ->
                      for_ (translate' p'') $ \q' ->
                        when (q /= q') $
                          forM_ ([i - shift | i <- diff window q q', shift <- [0 .. window - 1]]) $ \i -> do
                            let start = max 0 i
                                id = nm ++ " " ++ (if gt == "" then "N" else gt) ++ " " ++ pack (show start)
                                mt = pack (take window . drop start $ show q')
                                gt = pack (take window . drop start $ show q)
                            completed <- get
                            when (length mt == window && mt `S.notMember` completed) $ do
                              uid <- lift get
                              lift $ put (uid + 1)
                              put (S.insert mt completed)
                              putStrLn $ "> " ++ pack (show uid) ++ " " ++ id
                              putStrLn mt
        resolve r window (lno + 1)
      Left e -> do
        pr $ pack (show lno) ++ ":parse error: " ++ line
        error e
        resolve r window (lno + 1)

diff :: Int -> ProtSeq -> ProtSeq -> [Int]
diff window (ProtSeq (toNullable -> a)) (ProtSeq (toNullable -> b)) =
  let tr = windowedAlign (alignConfig (\a b -> if a == b then 1 else (-0.25 :: Double)) (-0.5) (-1)) (2 * window) a b
      isMismatch (Right (a, b)) | a /= b = True
      isMismatch (Left _) = True
      isMismatch _ = False
      index (as, next) x@(Right (a, b)) = ((x, next) : as, next + 1)
      index (as, next) x@(Left (Left _)) = ((x, next + 1) : as, next)
      index (as, next) x@(Left (Right _)) = ((x, next) : as, next + 1)
   in map snd . filter (isMismatch . fst) . fst $ foldl' index ([], 0) tr

apply :: HGVSC -> HGVSC -> Maybe HGVSC
apply Sub {} b = Just b
apply (Del _ (natVal -> p) ns) b = maybe (Just b) (const $ b -: fromIntegral (olength ns)) $ b -: p
apply (Ins _ (natVal -> p) es) b = maybe (Just b) (const $ b +: fromIntegral (olength es)) $ b -: p
apply (InDel1 _ (natVal -> p) es) b = maybe (Just b) (const $ b +: fromIntegral (olength es) - 1) $ b -: p
apply (InDel _ (natVal -> p) ds es) b = maybe (Just b) (const $ b +: fromIntegral (olength es - olength ds)) $ b -: p

seqHGVSC :: [HGVSC] -> Maybe [HGVSC]
seqHGVSC (e : es) = (e :) <$> (mapM (apply e) es >>= seqHGVSC)
seqHGVSC [] = Just []

mutate :: DNASeq -> HGVSC -> Maybe DNASeq
mutate ps (Sub _ a (fromIntegral . natVal -> p) a')
  | ps ^? re dnaseq . ix p == Just a = (ps ^. re dnaseq & ix p .~ a') ^? dnaseq
mutate (DNASeq (toNullable -> ps)) (Del _ (fromIntegral . natVal -> p) (DNASeq (toNullable -> ns)))
  | take (olength ns) (drop p ps) == ns =
    Just . DNASeq $ impureNonNull (ps ^.. folded . ifiltered (\i _ -> i `notElem` [p .. p + olength ns - 1]))
mutate (DNASeq (toNullable -> ps)) (Ins _ (fromIntegral . natVal -> p) (DNASeq (toNullable -> is))) =
  Just . DNASeq $ impureNonNull (ps & _drop (1 + p) %~ (is ++))
mutate (DNASeq (toNullable -> ps)) (InDel1 _ (fromIntegral . natVal -> p) (DNASeq (toNullable -> is)))
  | p < length ps =
    Just . DNASeq . impureNonNull $ (ps ^.. folded . ifiltered (\i _ -> i /= p)) & _drop p %~ (is ++)
mutate (DNASeq (toNullable -> ps)) (InDel a (fromIntegral . natVal -> p) (DNASeq (toNullable -> is)) (DNASeq (toNullable -> is')))
  | take (olength is) (drop p ps) == is =
    Just . DNASeq . impureNonNull $ (ps ^.. folded . ifiltered (\i _ -> i `notElem` [p .. p + olength is - 1])) & _drop p %~ (is' ++)
mutate _ _ = Nothing

test_mutate_sub_0 = mutate (DNASeq (impureNonNull [A])) (Sub Cod A (Proxy :: Proxy 0) T) == Just (DNASeq (impureNonNull [T]))

test_mutate_sub_1 = mutate (DNASeq (impureNonNull [A])) (Sub Cod A (Proxy :: Proxy 1) T) == Nothing

test_mutate_sub_2 = mutate (DNASeq (impureNonNull [C])) (Sub Cod A (Proxy :: Proxy 0) T) == Nothing

test_mutate_sub_3 = mutate (DNASeq (impureNonNull [G])) (Sub Cod A (Proxy :: Proxy 0) T) == Nothing

test_mutate_sub_4 = mutate (DNASeq (impureNonNull [T])) (Sub Cod A (Proxy :: Proxy 0) T) == Nothing

test_mutate_del_0 = mutate (DNASeq (impureNonNull [A])) (Del Cod (Proxy :: Proxy 0) (DNASeq (impureNonNull [A, C, G, T]))) == Nothing

test_mutate_del_1 = mutate (DNASeq (impureNonNull [A, A, C, G, T, T])) (Del Cod (Proxy :: Proxy 0) (DNASeq (impureNonNull [A, C, G, T]))) == Nothing

test_mutate_del_2 = mutate (DNASeq (impureNonNull [A, A, C, G, T, T])) (Del Cod (Proxy :: Proxy 1) (DNASeq (impureNonNull [A, C, G, T]))) == Just (DNASeq (impureNonNull [A, T]))

test_mutate_ins_0 = mutate (DNASeq (impureNonNull [A])) (Ins Cod (Proxy :: Proxy 1) (DNASeq (impureNonNull [A, C, G, T]))) == Just (DNASeq (impureNonNull [A]))

test_mutate_ins_1 = mutate (DNASeq (impureNonNull [A])) (Ins Cod (Proxy :: Proxy 0) (DNASeq (impureNonNull [A, C, G, T]))) == Just (DNASeq (impureNonNull [A, A, C, G, T]))

test_mutate_indel1_0 = mutate (DNASeq (impureNonNull [A])) (InDel1 Cod (Proxy :: Proxy 1) (DNASeq (impureNonNull [A, C, G, T]))) == Nothing

test_mutate_indel1_1 = mutate (DNASeq (impureNonNull [A])) (InDel1 Cod (Proxy :: Proxy 0) (DNASeq (impureNonNull [A, C, G, T]))) == Just (DNASeq (impureNonNull [A, C, G, T]))

test_mutate_indel_0 = mutate (DNASeq (impureNonNull [A, C, G, T])) (InDel Cod (Proxy :: Proxy 0) (DNASeq (impureNonNull [A, C, G, T])) (DNASeq (impureNonNull [T, C, G, A]))) == Just (DNASeq (impureNonNull [T, C, G, A]))

test_mutate_indel_1 = mutate (DNASeq (impureNonNull [G, C, G, T])) (InDel Cod (Proxy :: Proxy 0) (DNASeq (impureNonNull [A, C, G, T])) (DNASeq (impureNonNull [T, C, G, A]))) == Nothing

test_mutate_indel_2 = mutate (DNASeq (impureNonNull [A, C, G, T])) (InDel Cod (Proxy :: Proxy 1) (DNASeq (impureNonNull [C, G])) (DNASeq (impureNonNull [G, A]))) == Just (DNASeq (impureNonNull [A, G, A, T]))

_drop 0 = id
_drop n = _tail . _drop (n - 1)
