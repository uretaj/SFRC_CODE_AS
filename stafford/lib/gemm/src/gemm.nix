{pkgs ? import <nixpkgs> {}}:
with pkgs;
  stdenv.mkDerivation rec {
    name = "gemm-${version}";
    version = "unstable";
    src = ./.;
    buildInputs = [ghcbs];
    ghcbs = haskellPackages.ghcWithPackages (pkgs: with haskellPackages; [bioshake]);
    buildPhase = "ghc -O3 -o gemm gemm.hs";
    installPhase = ''
      mkdir -p $out/bin
      cp gemm $out/bin
    '';
  }
