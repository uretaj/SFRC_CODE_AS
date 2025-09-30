with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "0G/x9/SHA256E-s2024288535--0ec631dc4a6380b6c17065515dd64b228dca9f03baa29bd638c56c3ca80f42e7.gz/SHA256E-s2024288535--0ec631dc4a6380b6c17065515dd64b228dca9f03baa29bd638c56c3ca80f42e7.gz";
      r2 = "Kg/94/SHA256E-s2042091953--0576b69adfe08565a0f71a3c734497e7d63d3be630b0f6405567a13b7b304a9b.gz/SHA256E-s2042091953--0576b69adfe08565a0f71a3c734497e7d63d3be630b0f6405567a13b7b304a9b.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV10782";
  }
