with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "FP/gk/SHA256E-s3378710580--7837e9f80490e91eceaf71da138ee634f2a45d8d1267e56cbf4d569c497888b4.gz/SHA256E-s3378710580--7837e9f80490e91eceaf71da138ee634f2a45d8d1267e56cbf4d569c497888b4.gz";
      r2 = "g4/24/SHA256E-s3382501424--0006d599e910342be8d3fa9f5a62cfbd1a84ecd825473c704f5a20e7f6b0dd6e.gz/SHA256E-s3382501424--0006d599e910342be8d3fa9f5a62cfbd1a84ecd825473c704f5a20e7f6b0dd6e.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV4092";
  }
