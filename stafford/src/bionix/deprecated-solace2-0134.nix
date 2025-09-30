with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "8K/fw/SHA256E-s7130925488--8349c9432605a4a21bf1554f9740a01111a35117a81dc2ba84eb74f56e096ab2.gz/SHA256E-s7130925488--8349c9432605a4a21bf1554f9740a01111a35117a81dc2ba84eb74f56e096ab2.gz";
      r2 = "Vw/0q/SHA256E-s7324872377--59969aa1cf61e7b9b4ba68b30e1be1a854ea50243907f86d4cff279a0a4a8ee2.gz/SHA256E-s7324872377--59969aa1cf61e7b9b4ba68b30e1be1a854ea50243907f86d4cff279a0a4a8ee2.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    name = "SOL2_0134";
    capture = CREv2;
  }
