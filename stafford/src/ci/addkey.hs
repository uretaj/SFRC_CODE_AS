{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeOperators #-}

module Main where

import qualified Data.ByteString as B
import qualified Database.SQLite.Simple as S
import Options.Generic

data Options w = Options (w ::: FilePath <?> "path to database") (w ::: FilePath <?> "key to import") (w ::: Text <?> "a textual name describing key (usually username)")
  deriving (Generic)

instance ParseRecord (Options Wrapped)

main :: IO ()
main = do
  (Options db key owner) <- unwrapRecord "import a public key to the database for authentication"
  conn <- S.open db
  pub <- B.readFile key
  S.execute conn "insert into keys values (?,?)" (pub, owner)
