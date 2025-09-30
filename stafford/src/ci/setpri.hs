{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeOperators #-}

module Main where

import API
import Options.Generic

data Options a = Options (a ::: Text <?> "derivation to target") (a ::: Int <?> "priority to set")
  deriving (Generic)

instance ParseRecord (Options Wrapped)

main :: IO ()
main = do
  (Options drv pri) <- unwrapRecord "change build priority"
  OK <- withConnection vc7shared . req $ SetPri drv pri
  pure ()
