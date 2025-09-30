{-# LANGUAGE NumericUnderscores #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes #-}

module Hooks.Matrix (matrixSuccess, matrixFail) where

import Control.Monad
import Data.Aeson (toJSON)
import qualified Data.Map as M
import Data.Text (Text)
import qualified Data.Text as T
import Network.Wreq (post)
import PyF
import Secrets

matrixToken :: Text
matrixToken = getSecret "matrix"

notifyRoom :: Text
notifyRoom = "!GefNJIrsgjgkNYuwdh:vk3.wtf"

notifyFailRoom :: Text
notifyFailRoom = notifyRoom

notifySuccessRoom :: Text
notifySuccessRoom = notifyRoom

matrixSuccess :: Text -> Text -> IO ()
matrixSuccess name out =
  void
    $ post
      [PyF.fmt|https://matrix.org/_matrix/client/r0/rooms/{notifySuccessRoom}/send/m.room.message?access_token={matrixToken}|]
      . toJSON
    $ M.fromList
      [ ("msgtype" :: Text, "m.text" :: Text),
        ("body", [PyF.fmt|{name} ({out}) built successfully|])
      ]

matrixFail :: Text -> Text -> Text -> IO ()
matrixFail name drv log =
  void
    $ post
      [PyF.fmt|https://matrix.org/_matrix/client/r0/rooms/{notifyFailRoom}/send/m.room.message?access_token={matrixToken}|]
      . toJSON
    $ M.fromList
      [ ("msgtype" :: Text, "m.text" :: Text),
        ("body", msg),
        ("format", "org.matrix.custom.html"),
        ("formatted_body", fmtMsg)
      ]
  where
    msg = [PyF.fmt|{name} ({drv}) build failure|]
    fmtMsg =
      [PyF.fmt|{name} ({drv}) build failure: <pre><code>{shortLog}</code></pre>|]
    shortLog = T.drop (T.length log - 1_500) log
