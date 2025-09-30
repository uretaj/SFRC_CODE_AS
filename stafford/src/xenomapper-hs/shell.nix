let
  pkgs = import <nixpkgs> {};

  ghc = with pkgs.haskell.lib;
    pkgs.ghc.withPackages (pkgs:
      with pkgs; [
        (doJailbreak (markUnbroken
            (biohazard.overrideAttrs (_: {patches = [./biohazard.patch];}))))
      ]);
in
  pkgs.mkShell {buildInputs = [ghc];}
