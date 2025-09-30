with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "4A";
      class = "tumours";
      pdx = false;
      r1 = "wX/x9/SHA256E-s12074822681--6d89dd16e0139f0697e4e58f03a9d25050c0dd21a85a4e3658edf6dee5f8d51f.gz/SHA256E-s12074822681--6d89dd16e0139f0697e4e58f03a9d25050c0dd21a85a4e3658edf6dee5f8d51f.gz";
      r2 = "vg/51/SHA256E-s12469786496--e9a77e923df595baf1f9bfc82f85ea052f797dfe26cdbaa34230e8f724b5c51d.gz/SHA256E-s12469786496--e9a77e923df595baf1f9bfc82f85ea052f797dfe26cdbaa34230e8f724b5c51d.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "18/qf/SHA256E-s5718586760--fb6b5a7f21dd4a1f24b139f237ea6235674a669a71ba7dc34e9d7fc098b2c2cf.gz/SHA256E-s5718586760--fb6b5a7f21dd4a1f24b139f237ea6235674a669a71ba7dc34e9d7fc098b2c2cf.gz";
      r2 = "gX/jw/SHA256E-s6251266558--7ff1f64ba61f9d7ef5ec3568a63aebfa5f81e69a0a7b55a7227dbec2b3c0f035.gz/SHA256E-s6251266558--7ff1f64ba61f9d7ef5ec3568a63aebfa5f81e69a0a7b55a7227dbec2b3c0f035.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SOL2_0140";
  }
