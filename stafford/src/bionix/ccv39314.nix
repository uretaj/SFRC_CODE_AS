with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "k0/gW/SHA256E-s6125502378--5ce5d439e85ae9d4e8a0c3667335e67feb096a71f3a343c42ce72971f443b92e.gz/SHA256E-s6125502378--5ce5d439e85ae9d4e8a0c3667335e67feb096a71f3a343c42ce72971f443b92e.gz";
      r2 = "4q/gx/SHA256E-s6250613411--940399722ccc07a3b5c4bf1b898f199e46aea18f8087b41920e921dfc1e481e7.gz/SHA256E-s6250613411--940399722ccc07a3b5c4bf1b898f199e46aea18f8087b41920e921dfc1e481e7.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV39314";
  }
