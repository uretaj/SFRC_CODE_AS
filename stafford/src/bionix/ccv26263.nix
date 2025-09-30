with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "qG/28/SHA256E-s1900200430--80a01b004910da804986c87c6e8a9999dcb5dca51204c7f0962d39995a116290.gz/SHA256E-s1900200430--80a01b004910da804986c87c6e8a9999dcb5dca51204c7f0962d39995a116290.gz";
      r2 = "3v/vx/SHA256E-s1907107407--865f4fb81d8157ba5c1467abc084421e11da5718cc7e12c9e0356895330a8035.gz/SHA256E-s1907107407--865f4fb81d8157ba5c1467abc084421e11da5718cc7e12c9e0356895330a8035.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "zj/gX/SHA256E-s1865139671--41f479a41883598630d2c74a3af7210521fb758b3c8397e09f4d792b0ae8fecf.gz/SHA256E-s1865139671--41f479a41883598630d2c74a3af7210521fb758b3c8397e09f4d792b0ae8fecf.gz";
      r2 = "wF/9X/SHA256E-s1857063007--9d1c3e6252795bb3e106aafbac5a129c168aa327ba428a2fcaf2f998b6f46e26.gz/SHA256E-s1857063007--9d1c3e6252795bb3e106aafbac5a129c168aa327ba428a2fcaf2f998b6f46e26.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV26263";
  }
