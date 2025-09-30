with import ../milton-slurm.nix {}; let
  samples = [
    {
      site = "1178-20829-CL1";
      pdx = false;
      r1 = "18/2g/SHA256E-s35839418370--4acf9a09256a3f5c2dfb147191b6ea3bce74979ffe7377535ccb934e427efb44.gz/SHA256E-s35839418370--4acf9a09256a3f5c2dfb147191b6ea3bce74979ffe7377535ccb934e427efb44.gz";
      r2 = "K8/07/SHA256E-s37284415636--2de411214a387eea781ef2c060e9db71f3d977356e1df6ba6e6fcdee154a1612.gz/SHA256E-s37284415636--2de411214a387eea781ef2c060e9db71f3d977356e1df6ba6e6fcdee154a1612.gz";
    }
  ];
in
  bionix.callBionix ./pipeline.nix {
    inherit samples;
    name = "ML234052";
  }
