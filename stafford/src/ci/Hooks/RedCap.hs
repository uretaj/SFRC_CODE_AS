{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE ViewPatterns #-}

module Hooks.RedCap (redcapSuccess) where

import Control.Lens
import Control.Monad
import Data.Aeson.Lens
import qualified Data.ByteString.Char8 as B
import Data.Text (Text)
import qualified Data.Text as T
import Directory
import qualified Hercules.CNix.Expr as E
import Hercules.CNix.Store
import Network.Connection
import Network.HTTP.Client.TLS
import Network.Wreq
import PyF
import Secrets
import System.Directory

sfrcToken :: Text
sfrcToken = getSecret "redcap"

solaceToken :: Text
solaceToken = getSecret "redcap-solace"

embraceToken :: Text
embraceToken = getSecret "redcap-embrace"

cache :: Text
cache = "http://nix.wehi.edu.au:5001"

redcapSuccess :: Text -> IO ()
redcapSuccess (("/nix/store/" <>) -> out) = do
  E.init
  withStoreFromURI cache $ \s' -> do
    refs <-
      parseStorePath s' (B.pack $ T.unpack out)
        >>= queryPathInfo s'
        >>= validPathInfoReferences s'
        >>= mapM getStorePathBaseName
    case filter (B.isSuffixOf "-meta.json") refs of
      [metaPath] -> withTempDirectory' $ \tmpdir -> do
        let [htmlPath] = filter (B.isSuffixOf "-org2html") refs
            docxPaths = filter (B.isSuffixOf "-md2docx") refs
        withStoreFromURI (T.pack tmpdir) $ \s -> do
          metaPath' <- parseStorePath s $ "/nix/store/" <> metaPath
          htmlPath' <- parseStorePath s $ "/nix/store/" <> htmlPath
          copyClosure s' s [metaPath', htmlPath']
          meta <- storePathToPath s metaPath' >>= readFile . (tmpdir <>) . B.unpack
          let Just aType = head . T.words . T.toLower <$> meta ^? key "analysisType" . _String
              Just id = T.toLower <$> meta ^? key "name" . _String
              field = if isStafford || isEmbrace then [PyF.fmt|stafford_{aType}|] else [PyF.fmt|{aType}_report|]
              isStafford = "sfrc" `T.isPrefixOf` id
              isEmbrace = "embrace" `T.isPrefixOf` id
              tok =
                if isStafford
                  then sfrcToken
                  else
                    if isEmbrace
                      then embraceToken
                      else solaceToken

          withTempDirectory' $ \tmpdir' -> do
            let trg = [PyF.fmt|{tmpdir'}/{id}-report.html|]
                trgX = [PyF.fmt|{tmpdir'}/{id}-summary.docx|]
            local <- (tmpdir <>) . B.unpack <$> storePathToPath s htmlPath'
            copyFile local trg
            void $ upload id tok field trg

            case docxPaths of
              [docxPath] -> do
                docxPath' <- parseStorePath s $ "/nix/store/" <> docxPath
                copyClosure s' s [docxPath']
                local <- (tmpdir <>) . B.unpack <$> storePathToPath s docxPath'
                when (aType == "wes" && isStafford) $ do
                  copyFile local trgX
                  void $ upload id tok "stafford_wes_summary" trgX
              _ -> pure ()
      _ -> pure ()
  where
    upload id tok field trg =
      let -- Disable certificate checking: as per ticket 227376, Milton does not trust the RedCap certificate and the recommended fix is to disable validation
          opts = defaults & manager .~ Left (mkManagerSettings (TLSSettingsSimple True False False) Nothing)
       in postWith
            opts
            "https://redcap.wehi.edu.au/api/"
            [ partText "token" tok,
              partText "record" id,
              partText "content" "file",
              partText "action" "import",
              partText "field" field,
              partFile "file" trg
            ]
