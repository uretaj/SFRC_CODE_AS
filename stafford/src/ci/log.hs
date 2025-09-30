{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeOperators #-}

module Main where

import API
import qualified Data.Text.IO as T
import Options.Generic

newtype Options a = Options (a ::: Text <?> "derivation to retrieve failure log") deriving (Generic)

instance ParseRecord (Options Wrapped)

main :: IO ()
main = do
  (Options drv) <- unwrapRecord "query logs"
  Log log <- withConnection vc7shared . req $ GetLog drv
  T.putStr log
