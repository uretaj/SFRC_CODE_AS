with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "1V/zP/SHA256E-s8850042582--8239a51f73cd571e1078b3ef0d1f8eae52d6b721bc59b08ed4033f6dbf39d28b.gz/SHA256E-s8850042582--8239a51f73cd571e1078b3ef0d1f8eae52d6b721bc59b08ed4033f6dbf39d28b.gz";
      r2 = "61/Mm/SHA256E-s8888654799--a83468a5785fb1d2d17d34b9134b600cabd360e97170a390070f8dc4ce6cabe3.gz/SHA256E-s8888654799--a83468a5785fb1d2d17d34b9134b600cabd360e97170a390070f8dc4ce6cabe3.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV16880";
  }
