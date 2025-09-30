{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

-- | Extra type level witnesses for comparisons
module Bioparse.Compare (module C, (%<?)) where

import Data.Proxy
import Data.Type.Equality
import GHC.TypeLits
import GHC.TypeLits.Compare as C
import Unsafe.Coerce

-- | Type witness for strictly less than
(%<?) :: (KnownNat m, KnownNat n) => Proxy m -> Proxy n -> ((m + 1) :<=? n)
m %<? n
  | natVal m < natVal n = LE (unsafeCoerce Refl)
  | otherwise = NLE (unsafeCoerce Refl) (unsafeCoerce Refl)
