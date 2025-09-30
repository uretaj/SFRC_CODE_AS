with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "zz/KG/SHA256E-s2786125093--93ec2a0bc5456d4cbbe2772ad081efaf2584aec009b282ac2c9906e52315cf1d.gz/SHA256E-s2786125093--93ec2a0bc5456d4cbbe2772ad081efaf2584aec009b282ac2c9906e52315cf1d.gz";
      r2 = "4V/wp/SHA256E-s2793650105--20f215280cbc57edfcb7d4a51d01fa17909760f936f5fc5d0c6f800014df9e76.gz/SHA256E-s2793650105--20f215280cbc57edfcb7d4a51d01fa17909760f936f5fc5d0c6f800014df9e76.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV11429";
  }
