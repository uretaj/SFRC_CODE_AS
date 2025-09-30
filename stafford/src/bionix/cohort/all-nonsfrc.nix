{bionix}:
with builtins;
with bionix;
with lib; let
  filenames =
    filter (x: (hasPrefix "ph" x || hasPrefix "solace2" x) && hasSuffix ".nix" x)
    (attrNames (readDir ./..));

  genAttr = p:
    nameValuePair (removeSuffix ".nix" p)
    (import (./.. + ("/" + p)) {}).linkInputs;
in
  listToAttrs (map genAttr filenames)
