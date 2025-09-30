with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "vg/zV/SHA256E-s6418689683--1927ad510162eadc9855d6e671fba74ca817fe7f61e7825902309dd36a26a509.gz/SHA256E-s6418689683--1927ad510162eadc9855d6e671fba74ca817fe7f61e7825902309dd36a26a509.gz";
      r2 = "12/m1/SHA256E-s6390200912--606b5ce4248d82de1178ae668c59052bf666f0dfeb8de7587e35a3707b939aab.gz/SHA256E-s6390200912--606b5ce4248d82de1178ae668c59052bf666f0dfeb8de7587e35a3707b939aab.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV6620";
  }
