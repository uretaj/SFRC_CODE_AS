{
  haskellPackages,
  stdenv,
}: let
  ghcbs =
    haskellPackages.ghcWithPackages
    (pkgs: with pkgs; [lens lens-aeson attoparsec]);
in
  stdenv.mkDerivation {
    name = "gridss2pl";
    buildInputs = [ghcbs];
    src = ./.;
    buildPhase = ''
      ghc -o gridss2pl gridss2pl.hs -O2 -rtsopts -threaded -optlo-O3 -funfolding-use-threshold=1000
    '';
    installPhase = ''
      install -Dm 755 ./gridss2pl $out/bin/gridss2pl
    '';
  }
