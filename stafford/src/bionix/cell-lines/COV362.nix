with import ../milton-slurm.nix {}; let
  samples = [
    {
      site = "COV362";
      pdx = false;
      r1 = "PK/xq/SHA256E-s4452817338--fb1dedfd4e75ebb1b688fe8955201da5bb312bc0a4be02829990a686bee0e5ce.gz/SHA256E-s4452817338--fb1dedfd4e75ebb1b688fe8955201da5bb312bc0a4be02829990a686bee0e5ce.gz";
      r2 = "jv/7p/SHA256E-s4556993728--cc4c1721bd24c19bc1ef4cd8fea370f39c21b273fc680bc7df525a021d33657a.gz/SHA256E-s4556993728--cc4c1721bd24c19bc1ef4cd8fea370f39c21b273fc680bc7df525a021d33657a.gz";
    }
  ];
in
  bionix.callBionix ./pipeline.nix {
    inherit samples;
    name = "COV362";
    capture = TwistVCGS;
  }
