{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeOperators #-}

module Main where

import API
import Options.Generic

newtype Options a = Options (a ::: Text <?> "derivation to retry") deriving (Generic)

instance ParseRecord (Options Wrapped)

main :: IO ()
main = do
  (Options drv) <- unwrapRecord "retry jobs"
  OK <- withConnection vc7shared . req $ Retry drv
  pure ()
