with import ../nix/nixpkgs-22.06 {}; let
  haskellPackages = pkgs.haskellPackages.override {
    overrides = self: super:
      with pkgs.haskell.lib; {
        pipes-text = markUnbroken super.pipes-text;
        bioparse = self.callPackage ../nix/bioparse {};
      };
  };
  ghcbs =
    haskellPackages.ghcWithPackages
    (pkgs: with pkgs; [classy-prelude bioparse lens align bytestring-mmap]);
in
  mkShell {buildInputs = [ghcbs];}
