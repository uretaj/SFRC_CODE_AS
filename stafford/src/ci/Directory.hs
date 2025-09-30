{-# LANGUAGE TupleSections #-}

module Directory (withTempDirectory, withSystemTempDirectory, withTempDirectory', withSystemTempFile, withTempFile) where

import Control.Exception
import Foreign.C
import System.Directory
import System.Environment
import System.FilePath
import System.IO
import System.IO.Unsafe
import System.Posix.IO
import System.Posix.Types (Fd (..), UserID)
import System.Posix.User

foreign import ccall unsafe "stdlib.h mkdtemp"
  c_mkdtemp :: CString -> IO CString

mkdtemp :: FilePath -> IO FilePath
mkdtemp template =
  withCString (template ++ "XXXXXX") $ \ptr -> do
    cname <- throwErrnoIfNull "mkdtemp" (c_mkdtemp ptr)
    name <- peekCString cname
    pure name

foreign import ccall unsafe "stdlib.h mkstemp"
  c_mkstemp :: CString -> IO CInt

mkstemp :: FilePath -> IO (FilePath, Handle)
mkstemp template =
  withCString (template ++ "XXXXXX") $ \ptr -> do
    fd <- throwErrnoIfMinus1 "mkstemp" (c_mkstemp ptr)
    name <- peekCString ptr
    (name,) <$> fdToHandle (Fd fd)

withTempFile :: FilePath -> String -> (FilePath -> Handle -> IO r) -> IO r
withTempFile root prefix f =
  bracket
    (mkstemp $ root </> prefix)
    (removePathForcibly . fst)
    (uncurry f)

withTempDirectory :: FilePath -> String -> (FilePath -> IO r) -> IO r
withTempDirectory root prefix f =
  bracket
    (mkdtemp $ root </> prefix)
    removePathForcibly
    f

withSystemTempFile :: String -> (FilePath -> Handle -> IO b) -> IO b
withSystemTempFile prefix f = do
  root <- getTemporaryDirectory
  withTempFile root prefix f

withSystemTempDirectory :: String -> (FilePath -> IO b) -> IO b
withSystemTempDirectory prefix f = do
  root <- getTemporaryDirectory
  withTempDirectory root prefix f

uid :: UserID
uid = unsafeDupablePerformIO getRealUserID

withTempDirectory' :: (FilePath -> IO a) -> IO a
withTempDirectory' f =
  withTempDirectory ("/run/user/" <> show uid) "stafford-ci" $ \tmpdir -> do
    setEnv "TMPDIR" tmpdir
    setEnv "XDG_CACHE_HOME" tmpdir
    f tmpdir
