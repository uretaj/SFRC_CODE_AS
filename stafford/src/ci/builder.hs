{-# LANGUAGE ExtendedDefaultRules #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NumericUnderscores #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Main where

import API
import Control.Concurrent (threadDelay)
import Control.Concurrent.Async (async, wait)
import Control.Exception
import Control.Monad
import Control.Monad.IO.Unlift
import Control.Monad.Trans.Reader
import Data.ByteString (ByteString)
import qualified Data.ByteString.Char8 as BC
import Data.Maybe
import Data.Text (Text)
import qualified Data.Text as T
import qualified Data.Text.IO as T
import Directory
import Hercules.CNix.Store
import Language.C.Inline.Cpp.Exception
import System.Environment
import System.FilePath
import System.IO
import System.Posix.IO (closeFd, createPipe, dup, dupTo, fdToHandle, stdError)
import System.Posix.Internals (setNonBlockingFD)
import System.Posix.Types (Fd)
import System.Timeout (timeout)

cache :: Text
cache = "file:///stornext/Bioinf/data/bioinf-data/Papenfuss_lab/projects/stafford/cache?compression=zstd"

drvStore :: Text
drvStore = cache

buildStorePrefix :: Text
buildStorePrefix = "ssh-ng://slurm-login01"

pollInterval :: Int
pollInterval = 600_000_000

t2b :: Text -> ByteString
t2b = BC.pack . T.unpack

b2t :: ByteString -> Text
b2t = T.pack . BC.unpack

getOuts :: Store -> Derivation -> IO [StorePath]
getOuts s drv = mapMaybe derivationOutputPath <$> getDerivationOutputs s "" drv

build :: (MonadUnliftIO m) => Text -> ReaderT FilePath m ()
build drvName = do
  keypath <- ask
  let buildStore = buildStorePrefix <> "?ssh-key=" <> T.pack keypath
  liftIO $ do
    -- Assume login name is last component of home directory
    user <- takeFileName <$> getEnv "HOME"
    setEnv "TMPDIR" $ "/vast/scratch/users/" <> user

    withStoreFromURI buildStore $ \s -> do
      drv <- parseStorePath s $ "/nix/store/" <> t2b drvName
      withStoreFromURI cache $ \s' -> copyClosure s' s [drv]
      drv' <- newStorePathWithOutputs drv ["out"]
      buildPath s drv'
      outs <- getDerivation s drv >>= getOuts s
      withStoreFromURI cache $ \s' -> copyClosure s s' outs

builder :: (MonadUnliftIO m) => ReaderT FilePath m ()
builder = do
  withRunInIO $ \run ->
    withConnection vc7shared (req Build) >>= \case
      Drv drv -> do
        log <- withSystemTempFile "builder-log" $ \_ logfile -> do
          res <- withLog logfile . try $ run (build drv)
          case res of
            Right _ -> pure Nothing
            Left err -> do
              let msg = case err of
                    CppStdException _ msg _ -> msg
                    _ -> ""
              hSeek logfile AbsoluteSeek 0
              Just . (<> b2t msg) <$> T.hGetContents logfile
        withConnection vc7shared $
          case log of
            Just log -> req $ Fail drv log
            Nothing -> req $ Built drv
        pure ()
      _ -> liftIO $ threadDelay pollInterval
  builder

main :: IO ()
main =
  getArgs >>= \case
    [keypath] -> runReaderT builder keypath
    _ -> hPutStrLn stderr "usage: builder path-to-keyfile"

-- Logging stderr - yuck
data Tap = Tap {original :: Fd, readable :: Handle}

tapStderr :: IO Tap
tapStderr = do
  oldStdError <- dup stdError
  (read, write) <- createPipe
  void $ dupTo write stdError
  forM_ [oldStdError, read, write] $ \fd -> setNonBlockingFD (fromIntegral fd) True
  read' <- mkHandle read
  pure Tap {original = oldStdError, readable = read'}
  where
    mkHandle fd = do
      h <- fdToHandle fd
      hSetBuffering h LineBuffering
      pure h

untap :: Tap -> IO ()
untap t = do
  void $ dupTo (original t) stdError
  closeFd (original t)

withTap :: (Tap -> IO a) -> IO a
withTap = bracket tapStderr untap

withLog :: Handle -> IO b -> IO b
withLog h cont = do
  (r, pid) <- withTap $ \t -> do
    pid <- async $ logger t
    r <- cont

    -- use a magic string to terminate the logging
    hPutStrLn stderr "\n__%%terminate log%%__"

    pure (r, pid)
  timeout 30_000_000 $ wait pid
  pure r
  where
    logger t = do
      hGetLine (readable t) >>= \case
        "__%%terminate log%%__" -> pure ()
        line -> do
          hPutStrLn h line
          logger t
