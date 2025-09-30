with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Mg/80/SHA256E-s1278526112--6b5ff410fcd423d275f3b5446c89d1aff9d17d208b928445ec37c4aa63da4c81.gz/SHA256E-s1278526112--6b5ff410fcd423d275f3b5446c89d1aff9d17d208b928445ec37c4aa63da4c81.gz";
      r2 = "fk/Jw/SHA256E-s1299783362--1e415a660c969e950f4250e3f8434091c6ebfe0fe273ca5eb20bddc1dd1e0625.gz/SHA256E-s1299783362--1e415a660c969e950f4250e3f8434091c6ebfe0fe273ca5eb20bddc1dd1e0625.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "W1/fq/SHA256E-s1304858471--a174ad7386cfd1b98529f3ccb0938377716f8d2088df3135e1ff6d75e0996280.gz/SHA256E-s1304858471--a174ad7386cfd1b98529f3ccb0938377716f8d2088df3135e1ff6d75e0996280.gz";
      r2 = "Zz/k2/SHA256E-s1326443357--cb09ba2477095a891ce98866e4295c4198a82f5f1b66d7276626d50c9b2c07e0.gz/SHA256E-s1326443357--cb09ba2477095a891ce98866e4295c4198a82f5f1b66d7276626d50c9b2c07e0.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV37946";
  }
