with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Zz/fv/SHA256E-s5128113239--f7123d48cd46cb4d5bbae402861a572be441f7e62864e0dcb013ee73d51039b8.gz/SHA256E-s5128113239--f7123d48cd46cb4d5bbae402861a572be441f7e62864e0dcb013ee73d51039b8.gz";
      r2 = "k2/qx/SHA256E-s5242144793--ea90ba6728ea30e53d1314a33ef83c675c8b874567d8960b64267d12684e8fc6.gz/SHA256E-s5242144793--ea90ba6728ea30e53d1314a33ef83c675c8b874567d8960b64267d12684e8fc6.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV40388";
  }
