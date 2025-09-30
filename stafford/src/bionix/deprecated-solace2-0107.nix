with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "m8/vg/SHA256E-s12047621724--f05885e4e317ca4b0bdda63d9c33292baff002e3eac590a3c076365159da2fc2.gz/SHA256E-s12047621724--f05885e4e317ca4b0bdda63d9c33292baff002e3eac590a3c076365159da2fc2.gz";
      r2 = "3q/k8/SHA256E-s12199273399--b6649d34f091e5a7526f558084498d8e7ad7fec17a22d0d3c3216dee9aa556c4.gz/SHA256E-s12199273399--b6649d34f091e5a7526f558084498d8e7ad7fec17a22d0d3c3216dee9aa556c4.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "1m/Jk/SHA256E-s7440765200--1ee18a2c77d2b0c45b9adf61000425e8431e00ee251f9aaee3195c7f217bcd46.gz/SHA256E-s7440765200--1ee18a2c77d2b0c45b9adf61000425e8431e00ee251f9aaee3195c7f217bcd46.gz";
      r2 = "18/fx/SHA256E-s7641421116--a34db0cf7fedf9049162600e292b721a36ba7035dd6842d37c2097578c04062c.gz/SHA256E-s7641421116--a34db0cf7fedf9049162600e292b721a36ba7035dd6842d37c2097578c04062c.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    name = "SOL2_0107";
    capture = CREv2;
  }
