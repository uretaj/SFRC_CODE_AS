{-# LANGUAGE OverloadedStrings #-}

module Main where

import Crypto.Sign.Ed25519
import qualified Data.ByteString as B
import System.Directory
import System.Posix.Files
import System.XDG

main :: IO ()
main = do
  (pub, priv) <- createKeypair
  root <- getConfigHome
  let cfgdir = root <> "/stafford-ci"
  createDirectoryIfMissing True cfgdir
  B.writeFile (cfgdir <> "/key.pub") $ unPublicKey pub
  _ <- setFileCreationMask 0o077
  B.writeFile (cfgdir <> "/key") $ unSecretKey priv
