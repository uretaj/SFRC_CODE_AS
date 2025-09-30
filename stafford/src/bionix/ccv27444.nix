with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "fF/7z/SHA256E-s1881625774--a968324ef6277b27f65e017bbd9f3416a805d5d7f279d24045c4d1e4790c2345.gz/SHA256E-s1881625774--a968324ef6277b27f65e017bbd9f3416a805d5d7f279d24045c4d1e4790c2345.gz";
      r2 = "V5/P5/SHA256E-s1886205314--154c848cc6c06106094c9d666456599eff742c0e1c8d0b711f583f3569df1625.gz/SHA256E-s1886205314--154c848cc6c06106094c9d666456599eff742c0e1c8d0b711f583f3569df1625.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "g3/X7/SHA256E-s1815070999--c8eb9dafce1b3e12b7053434fe8bae7d6f23230f5caa24f0a0436a93e38c6942.gz/SHA256E-s1815070999--c8eb9dafce1b3e12b7053434fe8bae7d6f23230f5caa24f0a0436a93e38c6942.gz";
      r2 = "Pg/wW/SHA256E-s1805512175--8fda34040c109d74bc1e58918585f76be09e94f35848b27d2eb4e0a972018c41.gz/SHA256E-s1805512175--8fda34040c109d74bc1e58918585f76be09e94f35848b27d2eb4e0a972018c41.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV27444";
  }
