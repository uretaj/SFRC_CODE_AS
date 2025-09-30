with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "59/0M/SHA256E-s1152398467--35ca3f81d894c3d13b7245f26a2906a507eba1053a2b82b2bb4be73b2629e1b9.gz/SHA256E-s1152398467--35ca3f81d894c3d13b7245f26a2906a507eba1053a2b82b2bb4be73b2629e1b9.gz";
      r2 = "f3/Gw/SHA256E-s1151471446--58225a397631881c0038d54d558a8493da3edbdcebf47ffd7b68c31b9cec641f.gz/SHA256E-s1151471446--58225a397631881c0038d54d558a8493da3edbdcebf47ffd7b68c31b9cec641f.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "fW/67/SHA256E-s1142966316--ed8da8dd4334a8ed5041b10bc589b98dc31ca92912c31d0c7d3087e6f4982b3c.gz/SHA256E-s1142966316--ed8da8dd4334a8ed5041b10bc589b98dc31ca92912c31d0c7d3087e6f4982b3c.gz";
      r2 = "Jv/01/SHA256E-s1141850895--93b31cb9b6f8c6f840c7bf8aaeef554b9d29fe26c6db85a15a260e024ad67e20.gz/SHA256E-s1141850895--93b31cb9b6f8c6f840c7bf8aaeef554b9d29fe26c6db85a15a260e024ad67e20.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV35578";
  }
