{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingVia #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE ViewPatterns #-}

module API
  ( JobState (..),
    Op (..),
    verify,
    sign,
    Signer,
    req,
    runSigner,
    withConnection,
    vc7shared,
    Request (..),
    Response (..),
    PublicKey (..),
    SecretKey (..),
  )
where

import Codec.Winery
import Control.Monad.Trans
import Control.Monad.Trans.Reader
import Crypto.Sign.Ed25519 (PublicKey (..), SecretKey (..), Signature (..), dsign, dverify)
import Data.ByteString (ByteString)
import qualified Data.ByteString.Char8 as BC
import qualified Data.ByteString.Lazy as BL
import Data.Text (Text)
import Data.Time
import Database.SQLite.Simple.FromField
import Database.SQLite.Simple.ToField
import GHC.Generics
import Network.RPC.Curryer.Client (Connection, call)
import qualified Network.RPC.Curryer.Client as C
import Network.RPC.Curryer.Server (HostAddr)
import System.XDG

-- Job states
data JobState = Waiting | Running | Failed | Succeeded
  deriving (Generic, Show, Enum)
  deriving (Serialise) via WineryVariant JobState

instance FromField JobState where
  fromField = fmap toEnum <$> fromField

instance ToField JobState where
  toField = toField . fromEnum

-- operations
data Op
  = Build
  | Register Text Text Text
  | Fail Text Text
  | Built Text
  | List
  | SetPri Text Int
  | Remove Text
  | Retry Text
  | GetLog Text
  deriving (Generic, Show)
  deriving (Serialise) via WineryVariant Op

data Request = Request ByteString ByteString Op
  deriving (Generic, Show)
  deriving (Serialise) via WineryVariant Request

data Response
  = AuthFailed
  | OK
  | Drv Text
  | Listing [(Text, UTCTime, JobState, Int, Text, Text)]
  | Log Text
  deriving (Generic, Show)
  deriving (Serialise) via WineryVariant Response

newtype Reset = Reset ByteString
  deriving (Generic, Show)
  deriving (Serialise) via WineryVariant Reset

verify :: PublicKey -> ByteString -> Op -> Bool
verify p sig op = dverify p (BC.pack $ show op) (Signature sig)

sign :: SecretKey -> Op -> ByteString
sign p op = unSignature . dsign p $ BC.pack $ show op

type Signer m r = ReaderT (Connection, SecretKey, PublicKey) m r

req :: Op -> Signer IO Response
req op = do
  (conn, secret, PublicKey pub) <- ask
  let r = Request pub (sign secret op) op
  liftIO (call conn r) >>= \case
    Left _ -> error "request error"
    Right resp -> do
      pure resp

runSigner :: Connection -> SecretKey -> PublicKey -> Signer m r -> m r
runSigner conn secret public = flip runReaderT (conn, secret, public)

withConnection :: HostAddr -> Signer IO r -> IO r
withConnection host cont = do
  readConfigFile "stafford-ci/key" >>= \case
    Nothing -> error "secret key not found"
    Just (BL.toStrict -> secret) ->
      readConfigFile "stafford-ci/key.pub" >>= \case
        Nothing -> error "public key not found"
        Just (BL.toStrict -> public) -> do
          conn <- C.connect [] host 8765
          runSigner conn (SecretKey secret) (PublicKey public) cont

vc7shared :: HostAddr
vc7shared = (10, 11, 1, 76)
