with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "Mq/G8/SHA256E-s801338697--a38ae4a4aa0cd74d3234154cda5372a40ea105f82f8ad36a7c2e226d1a42541d.gz/SHA256E-s801338697--a38ae4a4aa0cd74d3234154cda5372a40ea105f82f8ad36a7c2e226d1a42541d.gz";
      r2 = "94/gp/SHA256E-s809883465--11e46d2909f25a87a7255bf634b3d0d86fba6433845b400153a291865d1a687c.gz/SHA256E-s809883465--11e46d2909f25a87a7255bf634b3d0d86fba6433845b400153a291865d1a687c.gz";
    }

    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "9J/Z9/SHA256E-s830591084--be508d3d45e50e2b4b3813e898e0a9f26eafa7d48368d5bf1c589a7660223ad7.gz/SHA256E-s830591084--be508d3d45e50e2b4b3813e898e0a9f26eafa7d48368d5bf1c589a7660223ad7.gz";
      r2 = "MF/jf/SHA256E-s841526038--bf0d4b35a795349d66b1b3a87cf3415fb9b817de611967daeb540dffdf0ff1b5.gz/SHA256E-s841526038--bf0d4b35a795349d66b1b3a87cf3415fb9b817de611967daeb540dffdf0ff1b5.gz";
    }

    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "q1/Kq/SHA256E-s821184941--f311a8d5112c52e6f58b8415ee4d43273431abfaf0b29ee752be8c7cbe4f5c5d.gz/SHA256E-s821184941--f311a8d5112c52e6f58b8415ee4d43273431abfaf0b29ee752be8c7cbe4f5c5d.gz";
      r2 = "qf/g5/SHA256E-s832944476--7c22b8c07766ca527992af51eb63c95d11d67b18e228c98851dd7157067b0286.gz/SHA256E-s832944476--7c22b8c07766ca527992af51eb63c95d11d67b18e228c98851dd7157067b0286.gz";
    }

    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "3Q/J1/SHA256E-s826534558--abb67f2143dee5d07b3bc79c1cf5ce1667a2321c4e5550f11c850c6dbed6d8c6.gz/SHA256E-s826534558--abb67f2143dee5d07b3bc79c1cf5ce1667a2321c4e5550f11c850c6dbed6d8c6.gz";
      r2 = "Zj/kV/SHA256E-s837699338--809d2bcd9c8f7edd8e311fd9f736f840c993b2d4dcb3a716b817b577e9841b44.gz/SHA256E-s837699338--809d2bcd9c8f7edd8e311fd9f736f840c993b2d4dcb3a716b817b577e9841b44.gz";
    }

    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "kK/zm/SHA256E-s853663548--b9d5eab6bc34dd8725e47a23cc92fc0fb1fcf3599e3c1bac0dd1b0eb1db45915.gz/SHA256E-s853663548--b9d5eab6bc34dd8725e47a23cc92fc0fb1fcf3599e3c1bac0dd1b0eb1db45915.gz";
      r2 = "WJ/v6/SHA256E-s865892393--f7b1941e06094810d78f67b794824722b6df7d240e52cdcc1efefae50a2079ca.gz/SHA256E-s865892393--f7b1941e06094810d78f67b794824722b6df7d240e52cdcc1efefae50a2079ca.gz";
    }

    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "Z4/98/SHA256E-s797746120--e1ac7c6f21de6a238fc368d200b3def2f19f9d68f11dd866ad494695fa656bcd.gz/SHA256E-s797746120--e1ac7c6f21de6a238fc368d200b3def2f19f9d68f11dd866ad494695fa656bcd.gz";
      r2 = "Zw/f6/SHA256E-s805989914--25b30fc70d65f89f68b7190bc21f5840a61888b879563fe8d72fd3eeed519ce7.gz/SHA256E-s805989914--25b30fc70d65f89f68b7190bc21f5840a61888b879563fe8d72fd3eeed519ce7.gz";
    }

    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "jq/MW/SHA256E-s852954596--542b691aa76c8245e0135c8d0571f93c5046e46eb66d0004789d137ab1d54fd1.gz/SHA256E-s852954596--542b691aa76c8245e0135c8d0571f93c5046e46eb66d0004789d137ab1d54fd1.gz";
      r2 = "5v/vX/SHA256E-s865062708--9185003451d3dd6ee2d24883c5f1d46f5abb74c7850127d1e849cf1d2982c07e.gz/SHA256E-s865062708--9185003451d3dd6ee2d24883c5f1d46f5abb74c7850127d1e849cf1d2982c07e.gz";
    }

    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "Wp/Gz/SHA256E-s779971936--e76aad418756a89be32994be6b720a382dd4f29bda57326980d6a46e2537aaa4.gz/SHA256E-s779971936--e76aad418756a89be32994be6b720a382dd4f29bda57326980d6a46e2537aaa4.gz";
      r2 = "32/G0/SHA256E-s787534138--f99b5b3701ff8cc927139342228e5f390b032db3e34e162f97735ad5ad44fc7c.gz/SHA256E-s787534138--f99b5b3701ff8cc927139342228e5f390b032db3e34e162f97735ad5ad44fc7c.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "3Q/GG/SHA256E-s1666058220--df0cb621cca1428696aa6b9ddd9e6b0c26bcb0155fc62d8cfbaa5e1349b3cd1f.gz/SHA256E-s1666058220--df0cb621cca1428696aa6b9ddd9e6b0c26bcb0155fc62d8cfbaa5e1349b3cd1f.gz";
      r2 = "jq/xJ/SHA256E-s1659996095--4f057ec94096fd65a6bbb8175425299328cd0f36c62cfa0f7cd80a044e91e6e5.gz/SHA256E-s1659996095--4f057ec94096fd65a6bbb8175425299328cd0f36c62cfa0f7cd80a044e91e6e5.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "6G/8k/SHA256E-s1679417964--dfd50397b211d7e9cc3c759cdd699b58d550f0c90b4f19c574f03fac1df64316.gz/SHA256E-s1679417964--dfd50397b211d7e9cc3c759cdd699b58d550f0c90b4f19c574f03fac1df64316.gz";
      r2 = "q1/vf/SHA256E-s1671408538--436b436537c9e5d222fbf69a1c99bb2f98726980b1a52430d8c894a460fecb0b.gz/SHA256E-s1671408538--436b436537c9e5d222fbf69a1c99bb2f98726980b1a52430d8c894a460fecb0b.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "P0/wW/SHA256E-s1681220597--01973c119c56e020033cffe4dd2d82e14cd9450ad965205b40a23462476d40b9.gz/SHA256E-s1681220597--01973c119c56e020033cffe4dd2d82e14cd9450ad965205b40a23462476d40b9.gz";
      r2 = "2J/Vv/SHA256E-s1666741296--7f0d0e72dad5d2ae49784c5e8898bc8cf9bfcb7aa652eeec0940cdcd0b650d68.gz/SHA256E-s1666741296--7f0d0e72dad5d2ae49784c5e8898bc8cf9bfcb7aa652eeec0940cdcd0b650d68.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0071";
    typeHla = true;
    capture = TwistV2HR;
  }
