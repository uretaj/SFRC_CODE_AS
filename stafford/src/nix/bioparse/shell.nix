{
  nixpkgs ? import <nixpkgs> {},
  compiler ? "default",
}: let
  inherit (nixpkgs) pkgs;

  f = {
    mkDerivation,
    attoparsec,
    base,
    Cabal,
    classy-prelude,
    containers,
    lens,
    pipes-attoparsec,
    pipes-text,
    QuickCheck,
    split,
    stdenv,
    transformers,
    typelits-witnesses,
  }:
    mkDerivation {
      pname = "bioparse";
      version = "0.1.0.1";
      src = ./.;
      libraryHaskellDepends = [
        attoparsec
        base
        classy-prelude
        containers
        lens
        QuickCheck
        split
        transformers
        typelits-witnesses
        streaming-attoparsec
        streaming
        streaming-bytestring
      ];
      testHaskellDepends = [
        attoparsec
        base
        Cabal
        classy-prelude
        lens
        QuickCheck
        split
        typelits-witnesses
      ];
      license = stdenv.lib.licenses.isc;
    };

  haskellPackages =
    if compiler == "default"
    then pkgs.haskellPackages
    else pkgs.haskell.packages.${compiler};

  myHaskellPackages = haskellPackages.override {
    overrides = self: super:
      with pkgs.haskell.lib; {
        pipes-text = doJailbreak super.pipes-text;
      };
  };

  drv = myHaskellPackages.callPackage f {};
in
  if pkgs.lib.inNixShell
  then drv.env
  else drv
