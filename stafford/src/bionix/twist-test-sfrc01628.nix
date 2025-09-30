with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "4p/fJ/SHA256E-s7337845313--49ad7a28c150a3f625f29c8d02929685e4f863f3e80a38fc42ceb10ee821a7a5.gz/SHA256E-s7337845313--49ad7a28c150a3f625f29c8d02929685e4f863f3e80a38fc42ceb10ee821a7a5.gz";
      r2 = "8p/v4/SHA256E-s7629096433--64e5af8d1c15f9518d0bd0e06639eeceac11354d5c465ba274fb533df2f6e6bc.gz/SHA256E-s7629096433--64e5af8d1c15f9518d0bd0e06639eeceac11354d5c465ba274fb533df2f6e6bc.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "59/98/SHA256E-s7512933759--9e7d765272543816e4ca29c62586b6e9ae7b9daa42f5cdad6a382830dac2d73d.gz/SHA256E-s7512933759--9e7d765272543816e4ca29c62586b6e9ae7b9daa42f5cdad6a382830dac2d73d.gz";
      r2 = "X8/z2/SHA256E-s7840070238--f22bc5ecd6bb72cf1e5872e8d75eca179c0aa89b1db30d04238588a13280c85a.gz/SHA256E-s7840070238--f22bc5ecd6bb72cf1e5872e8d75eca179c0aa89b1db30d04238588a13280c85a.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "VZ/Fx/SHA256E-s7446510771--0c22479519bdcc857e9c9cee12b0e78f122c8798a3a334505682d9a9e47ea9e3.gz/SHA256E-s7446510771--0c22479519bdcc857e9c9cee12b0e78f122c8798a3a334505682d9a9e47ea9e3.gz";
      r2 = "2j/0M/SHA256E-s7781977398--180d65065fda98e2e7fc2115cff1333ba2388f0458ff683af0531e1abe0b4a82.gz/SHA256E-s7781977398--180d65065fda98e2e7fc2115cff1333ba2388f0458ff683af0531e1abe0b4a82.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      umi = false;
      r1 = "16/ZF/SHA256E-s36697380318--94213a0a2f7f98122e720774bac68b9931264191101863abe27fadb7d4f51595.gz/SHA256E-s36697380318--94213a0a2f7f98122e720774bac68b9931264191101863abe27fadb7d4f51595.gz";
      r2 = "6W/93/SHA256E-s37796440411--dcf52967b5d1223d5a1383f923f56e5cb98424ddfc54fa58a4173662350aad9d.gz/SHA256E-s37796440411--dcf52967b5d1223d5a1383f923f56e5cb98424ddfc54fa58a4173662350aad9d.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SFRC01628-twist-test";
    capture = TwistV2HR;
  }
