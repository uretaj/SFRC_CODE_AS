{ pkgs ? import (builtins.getFlake "github:nixos/nixpkgs/release-22.11") {}}:
let
  haskellPackages = pkgs.haskellPackages.override {
    overrides = self: super:
      with pkgs.haskell.lib; {
        curryer-rpc = markUnbroken super.curryer-rpc;
      };
  };

in
  haskellPackages.callCabal2nixWithOptions "ci" ./. "" {rclone = pkgs.callPackage ./librclone.nix {};}
