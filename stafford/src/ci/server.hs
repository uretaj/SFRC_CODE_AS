{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NumericUnderscores #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE ViewPatterns #-}

module Main where

import API
import Control.Concurrent
import Control.Concurrent.Timeout
import Control.Exception
import Data.Functor
import Data.Time.Clock
import qualified Database.SQLite.Simple as S
import GHC.Generics
import Hooks.Matrix
import Hooks.Onedrive
import Hooks.RedCap
import Network.RPC.Curryer.Server
import Options.Generic

newtype Options w = Options (w ::: FilePath <?> "path to SQLite database to host") deriving (Generic)

instance ParseRecord (Options Wrapped)

forkAndDetach :: QSem -> IO () -> IO ()
forkAndDetach s m = void $ forkIO $ void $ bracket_ (waitQSem s) (signalQSem s) $ timeout (2 * minutes) m
  where
    minutes = 60_000_000

main :: IO ()
main = do
  -- Semaphore for hooks -- libstore is not thread safe
  s <- newQSem 1

  (Options path) <- unwrapRecord "Stafford Fox CI server"
  conn <- S.open path >>= newMVar -- concurrent SQLite is tricky, don't share connections across threads
  void $ serve handlers (s, conn) vc7shared 8765 Nothing

handlers :: RequestHandlers (QSem, MVar S.Connection)
handlers =
  [ RequestHandler $ \(connectionServerState -> (s, conn')) (Request pubkey sig op) -> bracket (takeMVar conn') (putMVar conn') $ \conn -> do
      keys <- S.query conn "select 1 from keys where publickey = ?" (S.Only pubkey) :: IO [S.Only Bool]
      if length keys == 1 && verify (PublicKey pubkey) sig op
        then case op of
          Register drv out name -> do
            time <- getCurrentTime
            S.withTransaction conn $ do
              pri <-
                S.query conn "select priority from jobs where name = ? and stateid = ?" (name, Waiting) >>= \case
                  [(S.Only (pri :: Integer))] -> pure pri
                  _ -> pure 0
              S.execute conn "insert or ignore into jobs values (?,?,?,?,?,?,?)" (drv, out, time, time, Waiting, name, pri)
              S.execute conn "delete from jobs where name = ? and stateid = ? and drv != ?" (name, Waiting, drv) -- auto unqueue waiting tasks that match name
            pure OK
          Build -> S.withTransaction conn $ do
            res <- S.query conn "select drv from jobs where stateid = ? order by priority desc, random() limit 1" (S.Only Waiting)
            case res of
              [S.Only (drv :: Text)] -> do
                time <- getCurrentTime
                S.execute conn "update jobs set stateid=?, updated = ? where drv = ?" (Running, time, drv)
                pure $ Drv drv
              _ -> pure OK
          Fail drv log -> S.withTransaction conn $ do
            time <- getCurrentTime
            S.execute conn "update jobs set stateid=?, updated = ? where drv = ?" (Failed, time, drv)
            S.execute conn "delete from logs where drv = ?" (S.Only drv)
            S.execute conn "insert into logs values (?,?)" (drv, log)
            [S.Only (name :: Text)] <- S.query conn "select name from jobs where drv = ?" (S.Only drv)

            -- run hooks
            forkAndDetach s $ matrixFail name drv log

            pure OK
          Built drv -> do
            time <- getCurrentTime
            S.execute conn "update jobs set stateid=?, updated = ? where drv = ?" (Succeeded, time, drv)
            [(name, out)] <- S.query conn "select name, out from jobs where drv = ?" (S.Only drv)

            -- run hooks
            forkAndDetach s $ redcapSuccess out
            forkAndDetach s $ onedriveSuccess name out
            forkAndDetach s $ matrixSuccess name out

            pure OK
          List -> S.withTransaction conn $ do
            Listing <$> S.query_ conn "select name, updated, stateid, priority, drv, out from jobs order by updated"
          Remove drv -> do
            S.execute conn "delete from jobs where drv=? and stateid=?" (drv, Waiting)
            pure OK
          SetPri drv pri -> do
            S.execute conn "update jobs set priority = ? where drv = ? and stateid=?" (pri, drv, Waiting)
            pure OK
          Retry drv -> do
            S.execute conn "update jobs set stateid = ? where drv = ? and stateid = ?" (Waiting, drv, Failed)
            pure OK
          GetLog drv ->
            S.query conn "select log from logs where drv = ?" (S.Only drv) >>= \case
              [S.Only log] -> pure $ Log log
              _ -> pure (Log "")
        else pure AuthFailed
  ]
