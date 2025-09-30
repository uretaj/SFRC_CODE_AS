module Main where

import Bioparse.AA
import Bioparse.HGVSC as C
import Bioparse.HGVSP as P
import Control.Monad
import System.Exit
import Test.QuickCheck

isPass :: Result -> Bool
isPass (Success {}) = True
isPass _ = False

check :: Testable p => p -> IO ()
check p =
  quickCheckResult p >>= \r ->
    unless (isPass r) exitFailure

main = do
  check prop_invFrom
  check prop_invShow
  check prop_ProtSeq_invShow
  check prop_dna_invShow
  check prop_dnaSeq_invShow
  check prop_invrc
  check prop_invHGVSC
  check C.prop_invshift
  check prop_invHGVSP
  check P.prop_invshift
