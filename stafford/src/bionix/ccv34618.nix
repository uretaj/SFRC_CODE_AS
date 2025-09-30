with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "kp/Zf/SHA256E-s3637156470--5975f0dccf13a6d33622c500a29b930b7fb3af6787d3858ddcf79d73d3b0c06c.gz/SHA256E-s3637156470--5975f0dccf13a6d33622c500a29b930b7fb3af6787d3858ddcf79d73d3b0c06c.gz";
      r2 = "7g/4g/SHA256E-s3705879556--8d5ddff23816a4ff4ee40b4bd8c58b8aeb8bd8ae8276216da182def8bc369204.gz/SHA256E-s3705879556--8d5ddff23816a4ff4ee40b4bd8c58b8aeb8bd8ae8276216da182def8bc369204.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "72/p9/SHA256E-s3685218159--cc8c47321eaf4c2c26a813652bba572ff67abb8caed4d9250b06f4fc013ee7c9.gz/SHA256E-s3685218159--cc8c47321eaf4c2c26a813652bba572ff67abb8caed4d9250b06f4fc013ee7c9.gz";
      r2 = "zF/Xx/SHA256E-s3754748348--fbfc627dc5d8997b66a361f18b26e8fa1352d52c66d5c1be77561a8538780408.gz/SHA256E-s3754748348--fbfc627dc5d8997b66a361f18b26e8fa1352d52c66d5c1be77561a8538780408.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV34618";
  }
