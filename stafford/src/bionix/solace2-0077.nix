with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1D";
      class = "tumours";
      pdx = false;
      r1 = "kG/jF/SHA256E-s5621804678--e546f61c3d193f47a570a8afd17d89dba11a0ce991ef6b3e59b014b002d4fa15.gz/SHA256E-s5621804678--e546f61c3d193f47a570a8afd17d89dba11a0ce991ef6b3e59b014b002d4fa15.gz";
      r2 = "w0/Gv/SHA256E-s5631705199--3a96e5f1e718149fcb0546e478548d599c3ef4ec7a5ceaeb14bc5365936012cf.gz/SHA256E-s5631705199--3a96e5f1e718149fcb0546e478548d599c3ef4ec7a5ceaeb14bc5365936012cf.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Z9/G2/SHA256E-s1187415431--37e6bf540311a4779fa4186a4e8d8b9be8fcba1b3f4477389541f94b2fce3ffa.gz/SHA256E-s1187415431--37e6bf540311a4779fa4186a4e8d8b9be8fcba1b3f4477389541f94b2fce3ffa.gz";
      r2 = "X4/9q/SHA256E-s1181140916--a1e422df330b5cea4759b68f9aabad1801178c58af6fc12d24cd58a160d0bc93.gz/SHA256E-s1181140916--a1e422df330b5cea4759b68f9aabad1801178c58af6fc12d24cd58a160d0bc93.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Q2/kQ/SHA256E-s1206500553--48329094fa19f20020dc1b5a754223ce426d1cc4d18acdb7de594fa2e529b1ec.gz/SHA256E-s1206500553--48329094fa19f20020dc1b5a754223ce426d1cc4d18acdb7de594fa2e529b1ec.gz";
      r2 = "F3/3K/SHA256E-s1199222051--800200af6542a42b709cecf78d70cd3d152dc98e28e4a1b9ae79baae0b709d14.gz/SHA256E-s1199222051--800200af6542a42b709cecf78d70cd3d152dc98e28e4a1b9ae79baae0b709d14.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "fM/1x/SHA256E-s1208186346--d743d72283008f31ffa5754c5c3b350c08508c922a51aeeed69a966751f1e9f1.gz/SHA256E-s1208186346--d743d72283008f31ffa5754c5c3b350c08508c922a51aeeed69a966751f1e9f1.gz";
      r2 = "XF/MX/SHA256E-s1195973991--596000176a2896ee1cb0f9f98c9244a0ac6431f163198fd390294b6fce377829.gz/SHA256E-s1195973991--596000176a2896ee1cb0f9f98c9244a0ac6431f163198fd390294b6fce377829.gz";
    }
    {
      site = "1D";
      class = "tumours";
      pdx = false;
      r1 = "ZV/18/SHA256E-s4694530840--6f12da05e7177f6188693a5b13601f39af2bfe53dccd38a75fd1d9c420aab187.gz/SHA256E-s4694530840--6f12da05e7177f6188693a5b13601f39af2bfe53dccd38a75fd1d9c420aab187.gz";
      r2 = "MV/2w/SHA256E-s4705874711--a6711cf358db348f5b47a5bd90bc8de8abc2b4d8b86944d4204975ce779dcb28.gz/SHA256E-s4705874711--a6711cf358db348f5b47a5bd90bc8de8abc2b4d8b86944d4204975ce779dcb28.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0077";
    typeHla = true;
    capture = TwistV2HR;
  }
