with import ../nix/nixpkgs {}; let
  ghcbs =
    haskellPackages.ghcWithPackages
    (pkgs: with pkgs; [lens attoparsec lens-aeson]);
in
  mkShell {buildInputs = with pkgs; [ghcbs hlint ormolu];}
