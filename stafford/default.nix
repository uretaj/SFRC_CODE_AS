let
  nix-pre-commit-hooks = import ./src/nix/commit-hooks.nix;
in {
  pre-commit-check = nix-pre-commit-hooks.run {
    src = ./.;
    hooks = {
      nixpkgs-fmt.enable = true;
      sfrc-fq-ref.enable = true;
      sfrc-germline.enable = false;
      sfrc-multisample.enable = true;
      sfrc-inst.enable = true;
    };
  };
}
