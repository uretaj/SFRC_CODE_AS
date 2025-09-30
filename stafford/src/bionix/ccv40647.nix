with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "ZX/Fv/SHA256E-s2152687303--ca213a86ef3083b023b634e7d6f66f47bb3a3ae02025908cfba26bef42be6f08.gz/SHA256E-s2152687303--ca213a86ef3083b023b634e7d6f66f47bb3a3ae02025908cfba26bef42be6f08.gz";
      r2 = "0j/g9/SHA256E-s2204749753--5a2e2f0aa64e3eaeee2e1bcf1b8bacf8cbe3d2d24fdee7ca7a2607d24882d455.gz/SHA256E-s2204749753--5a2e2f0aa64e3eaeee2e1bcf1b8bacf8cbe3d2d24fdee7ca7a2607d24882d455.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV40647";
  }
