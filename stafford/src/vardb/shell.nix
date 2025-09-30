with import ../nix/nixpkgs {}; let
  ghcbs =
    haskellPackages.ghcWithPackages
    (pkgs: with pkgs; [attoparsec lens sqlite-simple cleff zip-stream conduit-extra file-embed PyF optparse-applicative]);
in
  mkShell {buildInputs = [ghcbs];}
