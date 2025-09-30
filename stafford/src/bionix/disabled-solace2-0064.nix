with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "gv/5F/SHA256E-s1218373616--c8bbf9a63afb08f6b3ee9ab983cd59adbb291d23ca2c3d0cc516fe77d26e7a76.gz/SHA256E-s1218373616--c8bbf9a63afb08f6b3ee9ab983cd59adbb291d23ca2c3d0cc516fe77d26e7a76.gz";
      r2 = "9q/0Q/SHA256E-s1217346903--79b761ed660d8c97e3506b6a89254ab73bdf20d6717eba30874c78a530ef86f0.gz/SHA256E-s1217346903--79b761ed660d8c97e3506b6a89254ab73bdf20d6717eba30874c78a530ef86f0.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "fM/k8/SHA256E-s1234673177--b6272d0b76a036cec9bebe5e60d0182de52fdecee01bbdaeaa144694a4862ef0.gz/SHA256E-s1234673177--b6272d0b76a036cec9bebe5e60d0182de52fdecee01bbdaeaa144694a4862ef0.gz";
      r2 = "KK/q8/SHA256E-s1231645504--26ff29bdb7b6a60c2e9d27fd465afe48fba0d665f0e762335a51206117744c6b.gz/SHA256E-s1231645504--26ff29bdb7b6a60c2e9d27fd465afe48fba0d665f0e762335a51206117744c6b.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "91/ZV/SHA256E-s1236265636--e040e9db170c14446ab67a21c87d92157ba63cf90247f9e643aaa5db4fb311a9.gz/SHA256E-s1236265636--e040e9db170c14446ab67a21c87d92157ba63cf90247f9e643aaa5db4fb311a9.gz";
      r2 = "7j/Jg/SHA256E-s1228056105--b2c28431f7886ac33d81a9af95f425c5879f193a32a06981fc46c4639b07bac5.gz/SHA256E-s1228056105--b2c28431f7886ac33d81a9af95f425c5879f193a32a06981fc46c4639b07bac5.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0064";
    capture = TwistV2HR;
  }
