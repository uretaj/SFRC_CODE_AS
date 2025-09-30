with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "f6/j6/SHA256E-s1204836698--98c95e6c3c55e20d2962a45aca27134b26c986eb3e1377d68ee2cb9ef1b33ac1.gz/SHA256E-s1204836698--98c95e6c3c55e20d2962a45aca27134b26c986eb3e1377d68ee2cb9ef1b33ac1.gz";
      r2 = "P8/64/SHA256E-s1201934586--041d5d0268de4e29b864a0288f6154aa0b95378e0a8717b3063943528003d803.gz/SHA256E-s1201934586--041d5d0268de4e29b864a0288f6154aa0b95378e0a8717b3063943528003d803.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "PJ/7W/SHA256E-s1217375592--c13980c17740eb0a5d2c49de3dc6a352f9dd4319e3151c0c417776d51b3b1a5f.gz/SHA256E-s1217375592--c13980c17740eb0a5d2c49de3dc6a352f9dd4319e3151c0c417776d51b3b1a5f.gz";
      r2 = "gg/VF/SHA256E-s1212997696--11d3919d100b93331c7bcc2b9e785b0c887a6a6e8172cb9319ecb1b198f28d0d.gz/SHA256E-s1212997696--11d3919d100b93331c7bcc2b9e785b0c887a6a6e8172cb9319ecb1b198f28d0d.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "4G/pw/SHA256E-s1219450329--314a8f70fdb1a0bbc28d07a8f0b41a17497f6965407a95eb7f5801915d8e1a03.gz/SHA256E-s1219450329--314a8f70fdb1a0bbc28d07a8f0b41a17497f6965407a95eb7f5801915d8e1a03.gz";
      r2 = "g8/m7/SHA256E-s1210097254--3c4ea09feb3319dac3ccba460d0e771cc0514b167664d8ccd29c534e39048497.gz/SHA256E-s1210097254--3c4ea09feb3319dac3ccba460d0e771cc0514b167664d8ccd29c534e39048497.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0016";
    capture = TwistV2HR;
  }
