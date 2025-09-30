{
  lib,
  stdenv,
  ghc,
}: let
  ghcp =
    ghc.withPackages
    (pkgs:
      with pkgs; [
        generic-arbitrary
        quickcheck-instances
        streaming-bytestring
        streaming
        resourcet
        attoparsec
      ]);
in
  stdenv.mkDerivation {
    name = "fq-filter";

    buildInputs = [ghcp];
    src = ./.;

    buildPhase = ''
      ghc -O -o fq-filter fq-filter.hs Data/Attoparsec/ByteString/Streaming.hs
    '';

    installPhase = ''
      install -D fq-filter $out/bin/fq-filter
    '';
  }
