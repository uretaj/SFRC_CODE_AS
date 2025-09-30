with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B3";
      class = "tumours";
      pdx = false;
      r1 = "ZP/w1/SHA256E-s14453965583--e73005c8f02a510f2d4aa0a5ced7b6374cce8cd4fc0cdb1600cb8434840a53e1.gz/SHA256E-s14453965583--e73005c8f02a510f2d4aa0a5ced7b6374cce8cd4fc0cdb1600cb8434840a53e1.gz";
      r2 = "4G/qv/SHA256E-s14964710736--92d5531f1237c1649ad008d569bf9e40c82286f3ee0c9fd540fe0a19a3923444.gz/SHA256E-s14964710736--92d5531f1237c1649ad008d569bf9e40c82286f3ee0c9fd540fe0a19a3923444.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "wJ/2K/SHA256E-s5563117231--8e9f41720bd2b2a1237d4b737502e74ff8037dfdac88190f0328041278133c36.gz/SHA256E-s5563117231--8e9f41720bd2b2a1237d4b737502e74ff8037dfdac88190f0328041278133c36.gz";
      r2 = "G0/MM/SHA256E-s5839086122--91e58cfd8190f86af8c24010baa67925a4bf893fdf425c74927d6c40a78b5241.gz/SHA256E-s5839086122--91e58cfd8190f86af8c24010baa67925a4bf893fdf425c74927d6c40a78b5241.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SOL2_0042";
  }
