with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "gx/28/SHA256E-s694932536--d42a853e8f81b7f5b793ff57bc50464fe3e349ea861e8ed0fcae8ed9e28f5159.gz/SHA256E-s694932536--d42a853e8f81b7f5b793ff57bc50464fe3e349ea861e8ed0fcae8ed9e28f5159.gz";
      r2 = "V4/0W/SHA256E-s698788000--fb94f5c824026984dbe288ccaca8ea52ea89edcf3b8067666f2e92ecc9f4472e.gz/SHA256E-s698788000--fb94f5c824026984dbe288ccaca8ea52ea89edcf3b8067666f2e92ecc9f4472e.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV29318";
  }
