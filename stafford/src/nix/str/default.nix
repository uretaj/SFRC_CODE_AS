{bionix ? import ../bionix {nixpkgs = import ../nixpkgs {};}}:
with bionix;
with lib;
  makeExtensible (self:
    with self; {
      superstr = callBionix ./superSTR/bionix.nix {};
      ehdn = callBionix ./ExpansionHunterDenovo/bionix.nix {};
    })
