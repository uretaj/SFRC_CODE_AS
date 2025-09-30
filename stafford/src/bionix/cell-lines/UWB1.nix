with import ../milton-slurm.nix {}; let
  samples = [
    {
      site = "UWB1";
      pdx = false;
      r1 = "f8/3v/SHA256E-s4598542108--530135e34caa26928ade801e11e8e0e088350f3d80a0cbf6fddb2f59520d8ddc.gz/SHA256E-s4598542108--530135e34caa26928ade801e11e8e0e088350f3d80a0cbf6fddb2f59520d8ddc.gz";
      r2 = "g7/j1/SHA256E-s4747753055--7db7ead205d7ce6b05024fe5e067a127b8723061445dc4ebef96ce12e4c16248.gz/SHA256E-s4747753055--7db7ead205d7ce6b05024fe5e067a127b8723061445dc4ebef96ce12e4c16248.gz";
    }
  ];
in
  bionix.callBionix ./pipeline.nix {
    inherit samples;
    name = "UWB1";
    capture = TwistVCGS;
  }
