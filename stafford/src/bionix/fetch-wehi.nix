{
  bionix ?
    import ../../../nix/bionix {
      nixpkgs = import ../../../nix/nixpkgs {};
    },
  key ? ./zeus_id,
}: {
  path,
  sha512,
}:
bionix.stage {
  inherit path key;
  name = "wehi-fetch";
  impureEnvVars = bionix.pkgs.stdenvNoCC.lib.fetchers.proxyImpureEnvVars;
  preferLocalBuild = true;
  builder = ./fetch-sftp.sh;
  outputHashAlgo = "sha512";
  outputHashMode = "flat";
  outputHash = sha512;
  passthru.multicore = false;
}
