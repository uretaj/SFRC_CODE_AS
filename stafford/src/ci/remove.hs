{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeOperators #-}

module Main where

import API
import Options.Generic

newtype Options a = Options (a ::: Text <?> "derivation to unqueue") deriving (Generic)

instance ParseRecord (Options Wrapped)

main :: IO ()
main = do
  (Options drv) <- unwrapRecord "unqueue jobs"
  OK <- withConnection vc7shared . req $ Remove drv
  pure ()
