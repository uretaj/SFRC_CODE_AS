{
  lib,
  mkDerivation,
  attoparsec,
  base,
  Cabal,
  classy-prelude,
  containers,
  lens,
  streaming-attoparsec,
  streaming-bytestring,
  streaming,
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
  license = lib.licenses.isc;
}
