{-# LANGUAGE OverloadedStrings #-}
module Main where

import Data.Text (Text)
import qualified Data.Text as T
import qualified Data.Text.IO as T
import System.Environment

splitList sep = go []
  where
    go acc [] = (reverse acc, [])
    go acc (x:xs)
      | x == sep = (reverse acc, xs)
      | otherwise = go (x:acc) xs


stripHdr :: Text -> Text
stripHdr table =
  let lines = T.lines table
      (a,b) = splitList "|-" lines
      rows = if b == [] then a else b
  in T.intercalate "\n" rows

main = do
  [path] <- getArgs
  cnt <- T.readFile path
  T.putStrLn $ stripHdr cnt
