with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A2";
      class = "tumours";
      pdx = false;
      r1 = "M3/4G/SHA256E-s12826116028--3192930d850abd131419c75a34f9c232203e7017d389d10e72f1949394e35754.gz/SHA256E-s12826116028--3192930d850abd131419c75a34f9c232203e7017d389d10e72f1949394e35754.gz";
      r2 = "mG/W6/SHA256E-s13176619387--0ae87ea44604a834a7b8e673f3dbd74985e759c4840644cb9445157351bb1e87.gz/SHA256E-s13176619387--0ae87ea44604a834a7b8e673f3dbd74985e759c4840644cb9445157351bb1e87.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "7g/ZG/SHA256E-s11442298987--709e2337d94a69bc9ba99b3d4b64049e24ce3313ee94a371b7b6d0edf9f9cc20.gz/SHA256E-s11442298987--709e2337d94a69bc9ba99b3d4b64049e24ce3313ee94a371b7b6d0edf9f9cc20.gz";
      r2 = "51/p3/SHA256E-s13155540127--8448d79ce0f46bfceca90bef12706a671f7cee4a4f6ac34b6c9c45345ea871cc.gz/SHA256E-s13155540127--8448d79ce0f46bfceca90bef12706a671f7cee4a4f6ac34b6c9c45345ea871cc.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SOL2_0098";
  }
