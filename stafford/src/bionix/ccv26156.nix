with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Fp/5K/SHA256E-s2588365200--0b7a522f7929f3139d82e8f7f68c96deee988b6fa8807a36bc5e1b86b9bfccbe.gz/SHA256E-s2588365200--0b7a522f7929f3139d82e8f7f68c96deee988b6fa8807a36bc5e1b86b9bfccbe.gz";
      r2 = "0q/8z/SHA256E-s2599333882--59088eadadb5a58515753fe9e38d649e4ed5a8b2cc16f919e919f8787bb25dea.gz/SHA256E-s2599333882--59088eadadb5a58515753fe9e38d649e4ed5a8b2cc16f919e919f8787bb25dea.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "42/8K/SHA256E-s2506300287--027dc9063e927e0c652e9fd62b0eeacbcc1767399e0aea8417ffe2423065a42b.gz/SHA256E-s2506300287--027dc9063e927e0c652e9fd62b0eeacbcc1767399e0aea8417ffe2423065a42b.gz";
      r2 = "Gq/v5/SHA256E-s2499542030--2e37c9cb65bf4c4105756db264acf1b82645bad169a9d4c370b32befecf4a626.gz/SHA256E-s2499542030--2e37c9cb65bf4c4105756db264acf1b82645bad169a9d4c370b32befecf4a626.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV26156";
  }
