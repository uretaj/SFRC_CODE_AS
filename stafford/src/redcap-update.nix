{pkgs ? import <nixpkgs> {}}:
with pkgs; let
  alejandra = (import (builtins.fetchTarball "https://github.com/kamadorueda/alejandra/tarball/1.2.0")).${system};
  annotredcap = import ./annotredcap;

  bot =
    writers.writeHaskellBin "redcap-bot"
    {
      libraries = with haskellPackages; [shh string-interpolate Glob temporary async];
    } ''
      {-# LANGUAGE OverloadedStrings #-}
      {-# LANGUAGE TemplateHaskell #-}
      {-# LANGUAGE ExtendedDefaultRules #-}
      {-# LANGUAGE QuasiQuotes #-}

      import Shh
      import Data.String.Interpolate
      import System.IO.Temp
      import System.FilePath.Glob
      import Control.Monad
      import qualified Data.ByteString.Lazy.Char8 as B
      import Control.Exception (finally)
      import Control.Concurrent.Async (mapConcurrently)
      import System.Environment

      scratch = "/vast/scratch/users/bedo.j"
      repo = "/stornext/Bioinf/data/bioinf-data/Papenfuss_lab/projects/stafford"
      secret = repo <> "/lib/secrets/redcap.key"

      $(loadFromBins [ "${coreutils}", "${git}", "${alejandra}", "${statix}", "${annotredcap}" ])

      main = do
        setEnv "PATH" "${gitAndTools.gitAnnex}/bin:${coreutils}/bin"
        withTempDirectory scratch "redcap" $ (\worktree -> do
          echo "Branching"
          cd repo
          git "worktree" "add" worktree "-b" "redcap-bot" "master"

          echo "annotating"
          cd [i|#{worktree}/src/bionix|]
          files <- glob "sfrc*.nix"
          annotredcap secret files

          -- reformat
          mapConcurrently (statix "fix") files
          alejandra files

          echo "commiting"
          git "-c" "user.email=bedo.j@wehi.edu.au" "-c" "user.name=RedCap bot" "commit" "-am" "redcap sync" "--no-verify"

          echo "merging"
          cd repo
          git "merge" "--ff-only" "redcap-bot")
        `finally` do
          echo "cleaning up"
          cd repo
          git "worktree" "prune"
          git "branch" "-D" "redcap-bot"
    '';
in
  bot
