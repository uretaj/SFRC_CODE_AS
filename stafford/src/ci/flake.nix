{
  inputs.nixpkgs.url = "github:nixos/nixpkgs/release-22.11";
  outputs = {
    self,
    nixpkgs,
  }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {inherit system;};
  in {
    packages.${system} = {
      tui = pkgs.callPackage ./tui.nix {ci = self.packages.${system}.default;};
      default = pkgs.callPackage ./. {};
    };
    devShells.${system}.default = self.packages.${system}.default.env;
  };
}
