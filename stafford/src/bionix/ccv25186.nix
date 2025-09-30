with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "0J/m2/SHA256E-s2954729661--856050ac6d7bd86e23ddfc75e22fce3cfe10d21572029b14ae6b67790d5f28ed.gz/SHA256E-s2954729661--856050ac6d7bd86e23ddfc75e22fce3cfe10d21572029b14ae6b67790d5f28ed.gz";
      r2 = "MJ/7k/SHA256E-s2973321510--3359b99102d92a9ccb38eb49cae6ddcafd29c86e9b81fa12fb503d034764d48e.gz/SHA256E-s2973321510--3359b99102d92a9ccb38eb49cae6ddcafd29c86e9b81fa12fb503d034764d48e.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Zw/p3/SHA256E-s2866711067--70c54c9b30f457042188b0765c335d5714257ce7693dc5aab06807b7f787e09f.gz/SHA256E-s2866711067--70c54c9b30f457042188b0765c335d5714257ce7693dc5aab06807b7f787e09f.gz";
      r2 = "46/Vw/SHA256E-s2864238732--22cc0aae10627b51c7aa17ad62b82bb3dbda2cdc32a0a18d01f972c92ac2c801.gz/SHA256E-s2864238732--22cc0aae10627b51c7aa17ad62b82bb3dbda2cdc32a0a18d01f972c92ac2c801.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV25186";
  }
