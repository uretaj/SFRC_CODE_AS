with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Z8/m7/SHA256E-s2157265080--916ff94271d90f1ff44083d89b2b9bd0fa78597464e79e9e7f0b3c096892f61c.gz/SHA256E-s2157265080--916ff94271d90f1ff44083d89b2b9bd0fa78597464e79e9e7f0b3c096892f61c.gz";
      r2 = "25/vx/SHA256E-s2197513817--64c07b178cfc05dc49c69690754c50493b57841757e2c314735106c29b93e609.gz/SHA256E-s2197513817--64c07b178cfc05dc49c69690754c50493b57841757e2c314735106c29b93e609.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "ZZ/wp/SHA256E-s2187090905--0883c09af769ba94b6c857f0112b418cf938ef7af1ce86f9da3395388a72b6b4.gz/SHA256E-s2187090905--0883c09af769ba94b6c857f0112b418cf938ef7af1ce86f9da3395388a72b6b4.gz";
      r2 = "mz/j3/SHA256E-s2228412952--d07b04df6827a4b1b84d34495b982f5653227112c3f5905bb9db95dcab8d1018.gz/SHA256E-s2228412952--d07b04df6827a4b1b84d34495b982f5653227112c3f5905bb9db95dcab8d1018.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV29791";
  }
