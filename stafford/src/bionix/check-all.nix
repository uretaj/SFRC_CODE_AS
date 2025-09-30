# Allows easy checking of all sfrc derivations usint nix-eval-jobs
# e.g., nix run nixpkgs#nix-eval-jobs -- check-all.nix
with import ../nix/bionix {};
with builtins;
with lib; let
  filenames = filter (x: hasPrefix "sfrc" x && hasSuffix ".nix" x) (attrNames (readDir ./.));

  genAttr = p:
    nameValuePair (removeSuffix ".nix" p)
    (import (./. + ("/" + p)) {});
in
  listToAttrs (map genAttr filenames)
