{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeOperators #-}

module Main where

import API
import Control.Exception
import Control.Monad
import Data.List (intercalate)
import qualified Data.Map as M
import qualified Data.Text as T
import qualified Data.Text.IO as T
import Data.Time.Clock
import qualified Database.SQLite.Simple as S
import GHC.Generics
import Hooks.Onedrive
import Hooks.RedCap
import Language.C.Inline.Cpp.Exception (CppException (..))
import Options.Generic
import System.IO

data Options w = Options
  { db :: w ::: FilePath <?> "path to SQLite database to host",
    redcap :: w ::: Bool <?> "upload to redcap" <!> "false",
    onedrive :: w ::: Bool <?> "upload to onedrive" <!> "false",
    drvs :: w ::: [String] <?> "drvs to upload, all if unspecified"
  }
  deriving (Generic)

instance ParseRecord (Options Wrapped)

main :: IO ()
main = do
  opts <- unwrapRecord "Upload all latest reports"
  conn <- S.open $ db opts
  outs <-
    map snd . M.elems
      <$> S.fold
        conn
        ( S.Query . T.pack $
            "select name, updated, out from jobs where stateid=?"
              ++ case drvs opts of
                [] -> ""
                drvs -> " and (" ++ intercalate " or " ["drv = '" ++ d ++ "'" | d <- drvs] ++ ")"
        )
        (S.Only Succeeded)
        mempty
        (\m (name :: Text, stamp :: UTCTime, out :: Text) -> pure $ M.insertWith max name (stamp, (name, out)) m)
  forM_ outs $ \(name, out) -> do
    res <- try $ do
      when (redcap opts) $ redcapSuccess out
      when (onedrive opts) $ onedriveSuccess name out
      T.putStrLn out
    case res of
      (Left (e :: CppException)) -> do
        T.hPutStrLn stderr $ "error: processing " <> name <> " " <> out
        hPrint stderr e
      Right _ -> pure ()
