with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "wg/Jf/SHA256E-s5549596263--91184919721edc3c5dce15e33ffe806793401879634664357eb54eb492050d76.gz/SHA256E-s5549596263--91184919721edc3c5dce15e33ffe806793401879634664357eb54eb492050d76.gz";
      r2 = "w0/zV/SHA256E-s5712003544--4aac01b02548bd9d3f73e8183570568b680122cd72c999c2beac01eaa577cdc4.gz/SHA256E-s5712003544--4aac01b02548bd9d3f73e8183570568b680122cd72c999c2beac01eaa577cdc4.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    name = "SOL2_0068";
    capture = CREv2;
  }
