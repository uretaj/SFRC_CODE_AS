with import ../nix/nixpkgs {}; let
  ghcbs = haskellPackages.ghcWithPackages (pkgs: with pkgs; [relude aeson streaming streaming-bytestring streaming-attoparsec optparse-applicative interpolation]);
in
  mkShell {
    buildInputs = [ghcbs];
  }
