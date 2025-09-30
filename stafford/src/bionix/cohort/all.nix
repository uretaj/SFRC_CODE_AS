attrs @ {
  bionix ? (import ../milton-slurm.nix {}).bionix,
  prefix ? "sfrc",
  ...
}:
with builtins;
with bionix;
with lib; let
  filenames =
    filter (x: hasPrefix prefix x && hasSuffix ".nix" x)
    (attrNames (readDir ./..));

  genAttr = p:
    nameValuePair (removeSuffix ".nix" p)
    (let x = import (./.. + ("/" + p)) (removeAttrs attrs ["bionix" "prefix"]); in x // x.linkInputs);
in
  listToAttrs (map genAttr filenames)
