{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE ViewPatterns #-}

module Hooks.Onedrive (onedriveSuccess) where

import Control.Exception
import Data.Aeson (encode)
import Data.Aeson.Types
import qualified Data.ByteString.Char8 as B
import qualified Data.ByteString.Lazy.Char8 as BL
import Data.Text (Text)
import qualified Data.Text as T
import Foreign.C.String (withCString)
import qualified Hercules.CNix.Expr as E
import Hercules.CNix.Store
import qualified Language.C.Inline as C
import PyF
import System.FilePath
import Directory

C.include "<librclone.h>"

cache :: Text
cache = "http://nix.wehi.edu.au:5001"

rcloneShare :: String
rcloneShare = "sfrc-reports:"

onedriveSuccess :: Text -> Text -> IO ()
onedriveSuccess name (("/nix/store/" <>) -> out) = do
  E.init
  withStoreFromURI cache $ \s' -> do
    refs <-
      parseStorePath s' (B.pack $ T.unpack out)
        >>= queryPathInfo s'
        >>= validPathInfoReferences s'
        >>= mapM getStorePathBaseName
    case filter (B.isSuffixOf "-meta.json") refs of
      [_] -> do
        let [htmlPath] = filter (B.isSuffixOf "-org2html") refs
        withTempDirectory' $ \tmpdir ->
          withStoreFromURI (T.pack tmpdir) $ \s -> do
            htmlPath' <- parseStorePath s $ "/nix/store/" <> htmlPath
            copyClosure s' s [htmlPath']

            local <- (tmpdir <>) . B.unpack <$> storePathToPath s htmlPath'
            upload (T.unpack name) local
      _ -> pure ()

upload :: String -> FilePath -> IO ()
upload id src =
  finally
    [C.exp| void { RcloneFinalize()}|]
    $ do
      [C.exp| void { RcloneInitialize()}|]

      -- Cleanup old file
      let trg = [PyF.fmt|{id}-report.html|] :: String
      rclone "operations/deletefile" $
        object
          [ "remote" .= trg,
            "fs" .= rcloneShare
          ]

      -- upload new one
      rclone "operations/copyfile" $
        object
          [ "srcFs" .= takeDirectory src,
            "srcRemote" .= takeFileName src,
            "dstFs" .= rcloneShare,
            "dstRemote" .= trg,
            "_config"
              .= object
                [ "NoCheckDest" .= True,
                  "IgnoreSize" .= True,
                  "IgnoreChecksum" .= True
                ]
          ]
  where
    -- rclone :: String -> M.Map String String -> IO ()
    rclone op map = do
      withCString op $ \op' ->
        withCString (BL.unpack $ encode map) $ \json ->
          [C.exp| void {
            RcloneRPC($(char* op'), $(char* json))
          }|]
