with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Vg/ZQ/SHA256E-s9112834099--a039136891bce3d70b7804f529d7aa5da78c37f8d0bf68a63b864a48b1bec9c1.gz/SHA256E-s9112834099--a039136891bce3d70b7804f529d7aa5da78c37f8d0bf68a63b864a48b1bec9c1.gz";
      r2 = "Mp/P3/SHA256E-s9218615799--0b4dd36cd8eed3867823db6a4159eb31a773c120da66b9ad043d2ba6f24b3835.gz/SHA256E-s9218615799--0b4dd36cd8eed3867823db6a4159eb31a773c120da66b9ad043d2ba6f24b3835.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV14868";
  }
