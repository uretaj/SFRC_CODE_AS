with import ../nix/nixpkgs {}; let
  ghc' = ghc.withPackages (x: with x; [wreq hnix prettyprinter atomic-write]);
in
  stdenv.mkDerivation {
    name = "annotredcap";

    src = ./annotredcap.hs;

    dontUnpack = true;
    buildInputs = [ghc'];

    buildPhase = ''
      ghc -O2 -optc-O3 -rtsopts -o annotredcap $src
    '';

    installPhase = ''
      install -Dm755 ./annotredcap $out/bin/annotredcap
    '';
  }
