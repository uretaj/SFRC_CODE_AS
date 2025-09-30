{-# LANGUAGE OverloadedStrings #-}

module Secrets where

import Data.Text (Text)
import qualified Data.Text as T
import qualified Data.Text.IO as T
import GHC.IO.Unsafe (unsafePerformIO)

getSecret :: Text -> Text
getSecret name =
  unsafePerformIO $
    T.readFile $
      "/stornext/Bioinf/data/bioinf-data/Papenfuss_lab/projects/stafford/lib/secrets/" <> T.unpack name <> ".key"
