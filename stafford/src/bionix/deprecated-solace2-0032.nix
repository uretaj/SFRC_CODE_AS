with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "germline";
      class = "normals";
      pdx = false;
      r1 = "WQ/3W/SHA256E-s4395733423--fa2b0d1928fed10f5af026c76bcdae6741b5b8a8d940a9614b78067ea032a720.gz/SHA256E-s4395733423--fa2b0d1928fed10f5af026c76bcdae6741b5b8a8d940a9614b78067ea032a720.gz";
      r2 = "78/kp/SHA256E-s4213213612--0749a3bcf4e7f7c9a40dedccd1eb17b85ee285f79dd3eca4f0c0a028de0b6f00.gz/SHA256E-s4213213612--0749a3bcf4e7f7c9a40dedccd1eb17b85ee285f79dd3eca4f0c0a028de0b6f00.gz";
    }

    {
      site = "germline";
      class = "normals";
      pdx = false;
      r1 = "xJ/7q/SHA256E-s1607908449--c40ed3aab28a80ffe993944ac5bf404dd960dae09f4576cfe252f1994f511ab9.gz/SHA256E-s1607908449--c40ed3aab28a80ffe993944ac5bf404dd960dae09f4576cfe252f1994f511ab9.gz";
      r2 = "0W/p0/SHA256E-s1689681663--1791a43d597797726f5e48a2b02b05b5a4c8a5e4b35afa1c9b9aa146bd46884f.gz/SHA256E-s1689681663--1791a43d597797726f5e48a2b02b05b5a4c8a5e4b35afa1c9b9aa146bd46884f.gz";
    }

    {
      site = "tumour";
      class = "tumours";
      pdx = false;
      r1 = "vZ/Z0/SHA256E-s20145046636--4ec8721b3eb99d3e90a3279ed47f5ac9c746675b7616265cb13f1f4166c9327e.gz/SHA256E-s20145046636--4ec8721b3eb99d3e90a3279ed47f5ac9c746675b7616265cb13f1f4166c9327e.gz";
      r2 = "pK/89/SHA256E-s18415217634--2dd1189b3e78a628f43f56ee6c1a1b0bea17bff50d1a65bbddc22f25d1c70ee1.gz/SHA256E-s18415217634--2dd1189b3e78a628f43f56ee6c1a1b0bea17bff50d1a65bbddc22f25d1c70ee1.gz";
    }

    {
      site = "tumour";
      class = "tumours";
      pdx = false;
      r1 = "28/xp/SHA256E-s8707937108--ba550e08849be9b341139fad4384bcf363c00231c7f45b0d0d0683a65f712f3c.gz/SHA256E-s8707937108--ba550e08849be9b341139fad4384bcf363c00231c7f45b0d0d0683a65f712f3c.gz";
      r2 = "5J/F7/SHA256E-s8959109479--8a07dc43ce5a9508615a24bbfd85432a18f4c58d71ea60dfbeb615deb8878964.gz/SHA256E-s8959109479--8a07dc43ce5a9508615a24bbfd85432a18f4c58d71ea60dfbeb615deb8878964.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = true;
    name = "SOL2_0032";
  }
