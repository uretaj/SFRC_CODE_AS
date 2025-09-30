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


prefixColumn :: Text -> Text -> Text -> Text
prefixColumn name val table =
  let cells = map (dropEmpty . T.splitOn "|") $ T.lines table
      (a,b) = splitList ["-"] cells
      hdr = if b == [] then [] else head a
      rows = if b == [] then a else b
  in toOrg (name : hdr) (map (val :) rows)

  where
    toOrg hdr rows = T.intercalate "\n" $ map (T.intercalate "|") ((if tail hdr == [] then [] else ["" : hdr, ["|-"]]) ++ map ("":) rows)
    dropEmpty ("":xs) = xs
    dropEmpty xs = xs

main = do
  [path, hdr, val] <- getArgs
  cnt <- T.readFile path
  T.putStrLn $ prefixColumn (T.pack hdr) (T.pack val) cnt
