{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeApplications #-}

module Main where

import API
import Control.Concurrent.Async
import Control.Concurrent.MVar
import Data.ByteString.Char8 (ByteString)
import Data.Map (Map)
import Data.Maybe
import Data.Text (Text)
import qualified Data.Text as T
import qualified Data.Text.IO as T
import Directory
import Hercules.CNix.Expr as E
import System.Directory
import System.Environment
import System.FilePath.Posix
import System.Posix.Process

drvStore :: Text
drvStore = "http://nix.wehi.edu.au:5001?compression=zstd"

maxWorkers :: Int
maxWorkers = 5

stripNixSuffix :: Text -> Text
stripNixSuffix x = fromMaybe x $ T.stripSuffix ".nix" x

runFork :: IO () -> IO ()
runFork proc = do
  pid <- forkProcess proc
  getProcessStatus True False pid
  pure ()

worker :: MVar (Maybe FilePath) -> FilePath -> IO ()
worker input root =
  takeMVar input >>= \case
    Just path -> do
      runFork $ evaluator path root
      worker input root
    Nothing -> putMVar input Nothing

evaluator :: FilePath -> FilePath -> IO ()
evaluator path storePath = do
  setEnv "XDG_CACHE_HOME" storePath
  setEnv "TMPDIR" storePath
  (drv, out, name) <- withStoreFromURI (T.pack storePath) $ \s -> do
    drv <- withEvalState s $ \es -> do
      abspath <- makeAbsolute path
      rootValueOrFunction <- evalFile es abspath
      args <- unsafeAssertType @NixAttrs <$> toRawValue es (mempty :: Map ByteString ByteString)
      autoCallFunction es rootValueOrFunction args >>= getDrvFile es
    [Just out] <- map derivationOutputPath . filter (\x -> derivationOutputName x == "out") <$> (getDerivation s drv >>= getDerivationOutputs s "")
    let name = stripNixSuffix . T.pack $ takeFileName path
    withStoreFromURI drvStore $ \ds -> copyClosure s ds [drv]
    pure (drv, out, name)
  withConnection vc7shared $ do
    OK <- req $ Register (T.pack $ show drv) (T.pack $ show out) name
    pure ()
  T.putStrLn $ "registered " <> name

main :: IO ()
main = do
  paths <- getArgs
  E.init
  withTempDirectory' $ \root -> do
    inpath <- newEmptyMVar
    workers <- mapM (async . worker inpath) [root <> "/" <> show i | i <- [1 .. maxWorkers]]
    mapM_ (putMVar inpath . Just) paths
    putMVar inpath Nothing
    mapM_ wait workers
