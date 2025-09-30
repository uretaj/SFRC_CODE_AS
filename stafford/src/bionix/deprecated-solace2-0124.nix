with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "6C";
      class = "tumours";
      pdx = false;
      r1 = "v1/VX/SHA256E-s12759495191--801e3c1c998ba5778a9e73564c49ecd8f0da996761202ff9432d14c4196f9958.gz/SHA256E-s12759495191--801e3c1c998ba5778a9e73564c49ecd8f0da996761202ff9432d14c4196f9958.gz";
      r2 = "Pq/x9/SHA256E-s12718120569--6a31b09b6d9a3c41befd73bdbcd3b1981043a1026a2a067d46fc946093b1b0b7.gz/SHA256E-s12718120569--6a31b09b6d9a3c41befd73bdbcd3b1981043a1026a2a067d46fc946093b1b0b7.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "59/P0/SHA256E-s5198691470--755b128dbad495da3e5c03027c0ca2bc31505687e244251a9b457b463c90960a.gz/SHA256E-s5198691470--755b128dbad495da3e5c03027c0ca2bc31505687e244251a9b457b463c90960a.gz";
      r2 = "xZ/jW/SHA256E-s5449454136--57dd1b63fdd4a4695eadb24b62cf963f8d9d9f95112ff77f571850f322fccfad.gz/SHA256E-s5449454136--57dd1b63fdd4a4695eadb24b62cf963f8d9d9f95112ff77f571850f322fccfad.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = true;
    name = "SOL2_0124";
  }
