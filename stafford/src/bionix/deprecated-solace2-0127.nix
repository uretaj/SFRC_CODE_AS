with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "xF/4f/SHA256E-s13373684699--536a17bc13f1fd8887fe98554c2ef7f96fb9b9363549af434434b3d151d90101.gz/SHA256E-s13373684699--536a17bc13f1fd8887fe98554c2ef7f96fb9b9363549af434434b3d151d90101.gz";
      r2 = "13/kV/SHA256E-s13569302018--4846b807186afc6ca79c2aca6b7662046e898428d9e0c7a81718255e964b004c.gz/SHA256E-s13569302018--4846b807186afc6ca79c2aca6b7662046e898428d9e0c7a81718255e964b004c.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "06/Kz/SHA256E-s6140665234--91fc87e6b3dd34de737a56ed5ded056464f0ccd5c608bee940b7d33679b7f2ca.gz/SHA256E-s6140665234--91fc87e6b3dd34de737a56ed5ded056464f0ccd5c608bee940b7d33679b7f2ca.gz";
      r2 = "Qk/Vf/SHA256E-s6340275656--81c61cf0c122fc45d9446140f822bad8004cf6d4d0c3ef204631726dbd1a1361.gz/SHA256E-s6340275656--81c61cf0c122fc45d9446140f822bad8004cf6d4d0c3ef204631726dbd1a1361.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    name = "SOL2_0127";
    capture = CREv2;
  }
