with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "0q/Xg/SHA256E-s2889826077--b79a8ad15c83a336fbdc664927d32a8fc98d2cf985c6cbc42300deaa2e99cbbe.gz/SHA256E-s2889826077--b79a8ad15c83a336fbdc664927d32a8fc98d2cf985c6cbc42300deaa2e99cbbe.gz";
      r2 = "m3/X4/SHA256E-s2960743378--72b6f7bd7a0583e2d0272463514f36f6e29d42e1a939ba5d09664fa0a99b70ac.gz/SHA256E-s2960743378--72b6f7bd7a0583e2d0272463514f36f6e29d42e1a939ba5d09664fa0a99b70ac.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "mM/gF/SHA256E-s2925268453--f47426bd5fb12f08326168268ab8aa07de65d16db41e265de7998de5f5006e60.gz/SHA256E-s2925268453--f47426bd5fb12f08326168268ab8aa07de65d16db41e265de7998de5f5006e60.gz";
      r2 = "Q7/WF/SHA256E-s2997135881--6e2a1a2f011b6aa60f78ac93f95b141028ab07e73046c14ff739f56fb312d5c4.gz/SHA256E-s2997135881--6e2a1a2f011b6aa60f78ac93f95b141028ab07e73046c14ff739f56fb312d5c4.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV35439";
  }
