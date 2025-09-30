{
  fetchurl,
  fetchFromGitHub,
  haskell,
  stdenv,
  sqlite,
}: let
  hp = haskell.packages.ghc922.override {
    overrides = self: super: {
      direct-sqlite = super.direct-sqlite.overrideAttrs (_: {
        src = fetchFromGitHub {
          owner = "IreneKnapp";
          repo = "direct-sqlite";
          rev = "f4e73fe8d61117fef853697d0609c9efe888a3d8";
          sha256 = "sha256-ux5oxNNEh0mdt8QBKklxZUVQWX67Ge2OYqUFh3Zgp2Y=";
        };
      });
    };
  };
  ghcbs =
    hp.ghcWithPackages
    (pkgs: with pkgs; [attoparsec lens sqlite-simple cleff zip-stream conduit-extra file-embed PyF optparse-applicative]);
in
  stdenv.mkDerivation {
    name = "vardb";
    buildInputs = [ghcbs];
    src = ./.;
    buildPhase = ''
      ghc -o import import.hs -O2 -optlo-O3 -funfolding-use-threshold=1000
      ghc -o dbnsfp dbnsfp.hs -O2 -optlo-O3 -funfolding-use-threshold=1000
    '';
    installPhase = ''
      install -Dm755 import $out/bin/import
      install -Dm755 dbnsfp $out/bin/dbnsfp
    '';
  }
