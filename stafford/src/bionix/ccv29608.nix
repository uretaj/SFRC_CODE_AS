with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "5J/0x/SHA256E-s2709976214--63b25d39de29ad9a2988e7dfb6c962d701eb111d8940e88a8084aecc281464fc.gz/SHA256E-s2709976214--63b25d39de29ad9a2988e7dfb6c962d701eb111d8940e88a8084aecc281464fc.gz";
      r2 = "Xk/kF/SHA256E-s2721234327--3ea1637555f59699bb9a17a1f8608578d6286e393875e360b55ac4577a9f6a35.gz/SHA256E-s2721234327--3ea1637555f59699bb9a17a1f8608578d6286e393875e360b55ac4577a9f6a35.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "m9/xP/SHA256E-s2730684477--9fa786470e226baab78f8d9417552684c29ca575b0f2b6e247445e9c69b36611.gz/SHA256E-s2730684477--9fa786470e226baab78f8d9417552684c29ca575b0f2b6e247445e9c69b36611.gz";
      r2 = "81/PF/SHA256E-s2741984691--1ac44f6e8eb51c9e13edada9185fe2ae53ca4d9942b8ed465956050ce6b3858f.gz/SHA256E-s2741984691--1ac44f6e8eb51c9e13edada9185fe2ae53ca4d9942b8ed465956050ce6b3858f.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV29608";
  }
