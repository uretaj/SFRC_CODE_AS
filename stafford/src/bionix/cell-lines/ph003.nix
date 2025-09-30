with import ../milton-slurm.nix {}; let
  samples = [
    {
      site = "PH003";
      pdx = false;
      r1 = "1W/2M/SHA256E-s33461190954--e1889950766f6f3c8c03d83432cf79a01edb5cc1d92fb80e6ad411b3e9e39df1.gz/SHA256E-s33461190954--e1889950766f6f3c8c03d83432cf79a01edb5cc1d92fb80e6ad411b3e9e39df1.gz";
      r2 = "Z6/zg/SHA256E-s34268014659--6a47b9debc6f3c4970c72ed8d7199ccb20961b2879c8a602588ec8fe3e6ba660.gz/SHA256E-s34268014659--6a47b9debc6f3c4970c72ed8d7199ccb20961b2879c8a602588ec8fe3e6ba660.gz";
    }
  ];
in
  bionix.callBionix ./pipeline.nix {
    inherit samples;
    name = "PH003";
  }
