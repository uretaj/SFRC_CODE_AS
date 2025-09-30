{
  ansible-lint,
  haskellPackages,
  hlint,
  shellcheck,
  ormolu,
  hindent,
  cabal-fmt,
  elmPackages,
  niv,
  gitAndTools,
  runCommand,
  writeText,
  writeScript,
  git,
  nixpkgs-fmt,
  nixfmt,
  nix-linter,
  callPackage,
  python39Packages,
  rustfmt,
  clippy,
  cargo,
  nodePackages,
  hunspell,
  html-tidy,
  nix,
}: {
  inherit
    hlint
    shellcheck
    ormolu
    hindent
    cabal-fmt
    nixpkgs-fmt
    nixfmt
    nix-linter
    rustfmt
    clippy
    cargo
    html-tidy
    nix
    ;
  inherit (elmPackages) elm-format elm-review elm-test;
  inherit (haskellPackages) stylish-haskell brittany hpack fourmolu;
  inherit (python39Packages) yamllint ansible-lint;
  inherit (nodePackages) prettier;
  purty = callPackage ./purty {inherit (nodePackages) purty;};
  terraform-fmt = callPackage ./terraform-fmt {};
  hpack-dir = callPackage ./hpack-dir {inherit (haskellPackages) hpack;};
  hunspell = callPackage ./hunspell {};
  fqref = callPackage ./fqref.nix {};
}
