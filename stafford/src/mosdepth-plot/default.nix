with import ../nix/nixpkgs {};
  stdenv.mkDerivation rec {
    name = "plot-${version}";
    version = "unstable";
    src = ./.;
    buildInputs = [ghcbs];
    ghcbs = haskellPackages.ghcWithPackages (pkgs: with pkgs; [relude aeson streaming streaming-bytestring streaming-attoparsec optparse-applicative interpolation]);
    buildPhase = ''
      ghc -O3 -o plot plot.hs
    '';
    installPhase = ''
      mkdir -p $out/bin
      cp plot $out/bin
    '';
  }
