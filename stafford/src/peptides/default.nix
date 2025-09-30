with import ../nix/nixpkgs-22.06 {}; let
  haskellPackages = pkgs.haskellPackages.override {
    overrides = self: super:
      with pkgs.haskell.lib; {
        pipes-text = markUnbroken super.pipes-text;
        bioparse = self.callPackage ../nix/bioparse {};
      };
  };
in
  stdenv.mkDerivation rec {
    name = "peptides-${version}";
    version = "unstable";
    src = ./.;
    buildInputs = [ghcbs];
    ghcbs = haskellPackages.ghcWithPackages (pkgs: with pkgs; [classy-prelude bioparse lens align bytestring-mmap]);
    buildPhase = ''
      ghc -O -rtsopts -o peptides peptides.hs
      ghc -O -rtsopts -o align align.hs
    '';
    installPhase = ''
      mkdir -p $out/bin
      cp peptides $out/bin
      cp align $out/bin
    '';
  }
