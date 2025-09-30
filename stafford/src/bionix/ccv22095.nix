with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "w4/1m/SHA256E-s288911728--fb082230cf346fdbb1220f07f9a26d567c199f823a79bbde0212a6ef677fa494.gz/SHA256E-s288911728--fb082230cf346fdbb1220f07f9a26d567c199f823a79bbde0212a6ef677fa494.gz";
      r2 = "q0/pM/SHA256E-s296681429--c3c267a5ae7ecacedbb0b08906e0c83ff9096498c0fe72e8b12b68fa47cc1c10.gz/SHA256E-s296681429--c3c267a5ae7ecacedbb0b08906e0c83ff9096498c0fe72e8b12b68fa47cc1c10.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV22095";
  }
