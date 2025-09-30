{-# LANGUAGE OverloadedStrings #-}

module Main where

import API
import qualified Data.Text as T
import qualified Data.Text.IO as T

main :: IO ()
main = do
  Listing jobs <- withConnection vc7shared $ req List
  mapM_ (\(name, tick, state, pri, drv, out) -> T.putStrLn $ T.intercalate "\t" [name, show' tick, show' state, show' pri, drv, out]) jobs
  where
    show' :: (Show a) => a -> T.Text
    show' = T.pack . show
