with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "zF/5f/SHA256E-s1846991247--0df0187fa920b0f64bd4841a25c129675c3312be9a71420647c255802069c76e.gz/SHA256E-s1846991247--0df0187fa920b0f64bd4841a25c129675c3312be9a71420647c255802069c76e.gz";
      r2 = "6W/Gf/SHA256E-s1872710650--ece9391a0bd959102f17b6c066b7a5053c6fc0263f79064c2c0bf5e42e53ee63.gz/SHA256E-s1872710650--ece9391a0bd959102f17b6c066b7a5053c6fc0263f79064c2c0bf5e42e53ee63.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "1G/M8/SHA256E-s1875199310--71721b1a831183b72918c81fb8c34d42d62c6d1e794174bf2f384d8fe936ed85.gz/SHA256E-s1875199310--71721b1a831183b72918c81fb8c34d42d62c6d1e794174bf2f384d8fe936ed85.gz";
      r2 = "pw/PX/SHA256E-s1901324039--82c7d22de7b0f21fea9946bff82451e2feb687400683e020224f08a41ace8b4a.gz/SHA256E-s1901324039--82c7d22de7b0f21fea9946bff82451e2feb687400683e020224f08a41ace8b4a.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV31185";
  }
