{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ViewPatterns #-}
module Main where

import Bio.Prelude hiding ((.))
import Bio.Bam
import Control.Monad
import Control.Monad.Log
import Control.Monad.IO.Class
import System.Environment
import qualified Streaming.Prelude as S
import Streaming.Prelude (Stream, Of)

filterBams :: (MonadIO m, MonadLog m, MonadMask m) => Stream (Of BamRaw) m () ->  Stream (Of BamRaw) m () ->  Stream (Of BamRaw) m ()
filterBams a b = do
  str0 <- lift $ S.next a
  str1 <- lift $ S.next b
  loop str0 str1
  where
    loop a@(Right (a', a'')) b@(Right (b', b'')) =
      case compare (qname a') (qname b') of
        EQ -> do
          when (as a' > as b') $ S.yield a'
          filterBams a'' b''
        LT -> do
          n <- lift $ S.next a''
          loop n b
        GT -> do
          n <- lift $ S.next b''
          loop a n
          
    loop _ _ = return ()
    
    qname = b_qname . unpackBam
    as = extAsInt 0 "AS" . unpackBam

main = do
  args <- getArgs

  withLogging_ (LoggingConf Warning Error Error 10 True) $ do
    decodeBamFiles args (\[(hdr, prim), (_, sec)] -> writeBamFile "primary.bam" hdr $ filterBams prim sec)
