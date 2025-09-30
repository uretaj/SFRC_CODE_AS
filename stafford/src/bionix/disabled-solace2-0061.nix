with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "gq/3G/SHA256E-s1289212208--722ee7fbfb1de418e0a2eb748584d85cd187fa066a8cd2fdf04a749346f7d6c7.gz/SHA256E-s1289212208--722ee7fbfb1de418e0a2eb748584d85cd187fa066a8cd2fdf04a749346f7d6c7.gz";
      r2 = "pk/9J/SHA256E-s1287657461--d3a3ca055268f559802e49fb665f77282ab7d783d57bc6d838fad18039761454.gz/SHA256E-s1287657461--d3a3ca055268f559802e49fb665f77282ab7d783d57bc6d838fad18039761454.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "05/Z3/SHA256E-s1316842286--a090879bca629d244835c4f262f0699f260c6c96df6b90c44314b13375c60a8d.gz/SHA256E-s1316842286--a090879bca629d244835c4f262f0699f260c6c96df6b90c44314b13375c60a8d.gz";
      r2 = "wW/Zm/SHA256E-s1313805166--37f4d6c47659ee8142f042c9748d3bbf9cf16affea3d4dd2ee1ee94fe4e38d95.gz/SHA256E-s1313805166--37f4d6c47659ee8142f042c9748d3bbf9cf16affea3d4dd2ee1ee94fe4e38d95.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "pQ/V7/SHA256E-s1336240836--70cfc51c06b34b8ac000ec52145aa59a4aa600423fd58c16978e2141838a9c93.gz/SHA256E-s1336240836--70cfc51c06b34b8ac000ec52145aa59a4aa600423fd58c16978e2141838a9c93.gz";
      r2 = "Qg/Zg/SHA256E-s1327223688--4dee56021848e9d49c0fce62c9b81170f964e2c613190ab8e4e9948920f0cc49.gz/SHA256E-s1327223688--4dee56021848e9d49c0fce62c9b81170f964e2c613190ab8e4e9948920f0cc49.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0061";
    capture = TwistV2HR;
  }
