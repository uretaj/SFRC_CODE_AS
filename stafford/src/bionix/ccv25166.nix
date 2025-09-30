with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "kq/G5/SHA256E-s2193908965--68997190f06655494c8d6b1835592b8f07f9015e54f78567372a5e125f8bfb25.gz/SHA256E-s2193908965--68997190f06655494c8d6b1835592b8f07f9015e54f78567372a5e125f8bfb25.gz";
      r2 = "Xz/GV/SHA256E-s2212511540--f5bb1c19588ba174f0afc37f30e14a88f80f16ce42541f083d49899099ea8fbb.gz/SHA256E-s2212511540--f5bb1c19588ba174f0afc37f30e14a88f80f16ce42541f083d49899099ea8fbb.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "3v/f9/SHA256E-s2132585373--a7f93664e3426c5c27a34c70d0d8f5d7455886601ce9595f7fe5311d1581c87b.gz/SHA256E-s2132585373--a7f93664e3426c5c27a34c70d0d8f5d7455886601ce9595f7fe5311d1581c87b.gz";
      r2 = "0G/wM/SHA256E-s2134980216--aeabdef6c2ee52a2abde8fe72e12df1b7de758908c15f5010a3dfe9c97b6886c.gz/SHA256E-s2134980216--aeabdef6c2ee52a2abde8fe72e12df1b7de758908c15f5010a3dfe9c97b6886c.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV25166";
  }
