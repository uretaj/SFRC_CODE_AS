let
  pkgs = import (builtins.fetchTarball
    "https://github.com/NixOS/nixpkgs/archive/3735c9ef908eceaf348215c7669870945eb3262a.tar.gz")
  {};

  ghc = with pkgs.haskell.lib;
    pkgs.ghc.withPackages (pkgs:
      with pkgs; [
        (doJailbreak (markUnbroken
            (biohazard.overrideAttrs (_: {patches = [./biohazard.patch];}))))
      ]);
in
  pkgs.stdenv.mkDerivation {
    name = "xenomapper-hs";
    buildInputs = [ghc];
    src = ./.;
    buildPhase = ''
      ghc -O3 xenomapper.hs -o xenomapper
    '';
    installPhase = ''
      install -D xenomapper $out/bin/xenomapper
    '';
  }
