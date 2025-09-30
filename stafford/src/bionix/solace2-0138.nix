with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B11";
      class = "tumours";
      pdx = false;
      r1 = "Mp/Q1/SHA256E-s880897170--cf0df14314541719b8e58c0745696969d5dcdb400e1287e66581f103ee4c5b00.gz/SHA256E-s880897170--cf0df14314541719b8e58c0745696969d5dcdb400e1287e66581f103ee4c5b00.gz";
      r2 = "qZ/2W/SHA256E-s880361495--9ebebbaa56d9bfadfd80607a8eb37b130f58bd7c68f9b3709e665c00bdaa158f.gz/SHA256E-s880361495--9ebebbaa56d9bfadfd80607a8eb37b130f58bd7c68f9b3709e665c00bdaa158f.gz";
    }

    {
      site = "B11";
      class = "tumours";
      pdx = false;
      r1 = "g1/Xq/SHA256E-s911503803--4a3c80e45c001e19db9ce533062da6396b6ab0aad41dbaafe0476e90bfad5b13.gz/SHA256E-s911503803--4a3c80e45c001e19db9ce533062da6396b6ab0aad41dbaafe0476e90bfad5b13.gz";
      r2 = "Mk/kX/SHA256E-s913204452--bfcf11d7bfaeda4988325b53487abb4a94d53704dfc54258d8b5ea07ce41849b.gz/SHA256E-s913204452--bfcf11d7bfaeda4988325b53487abb4a94d53704dfc54258d8b5ea07ce41849b.gz";
    }

    {
      site = "B11";
      class = "tumours";
      pdx = false;
      r1 = "gf/f3/SHA256E-s915867848--e319cc5a256c9c810ec6651b88c965c53a18d4ae0625ce2e9556b100bdbe6076.gz/SHA256E-s915867848--e319cc5a256c9c810ec6651b88c965c53a18d4ae0625ce2e9556b100bdbe6076.gz";
      r2 = "Xf/20/SHA256E-s918969676--a05c194487453f2e84599ec0f4ff2d522391ab50c69c48ad4f8ea8b9764767c0.gz/SHA256E-s918969676--a05c194487453f2e84599ec0f4ff2d522391ab50c69c48ad4f8ea8b9764767c0.gz";
    }

    {
      site = "B11";
      class = "tumours";
      pdx = false;
      r1 = "zZ/3j/SHA256E-s920453653--afd84bd03f33792d5e1f22ef1fd76c25772c6b50a530b662876f5eb67d7c6b87.gz/SHA256E-s920453653--afd84bd03f33792d5e1f22ef1fd76c25772c6b50a530b662876f5eb67d7c6b87.gz";
      r2 = "VK/Xz/SHA256E-s922741367--19b45ee5d24600e21b1d89f3636179e010cdb7f7a1fc3f8073f91f0631d9f28f.gz/SHA256E-s922741367--19b45ee5d24600e21b1d89f3636179e010cdb7f7a1fc3f8073f91f0631d9f28f.gz";
    }

    {
      site = "B11";
      class = "tumours";
      pdx = false;
      r1 = "xp/MZ/SHA256E-s941629952--c5ff8c0ad16e730c6a9662a08bb628bdea1ef1165973b6fe5afb4821e690fcc9.gz/SHA256E-s941629952--c5ff8c0ad16e730c6a9662a08bb628bdea1ef1165973b6fe5afb4821e690fcc9.gz";
      r2 = "F3/G6/SHA256E-s944465063--d946f2b99efdf3ffd2c5fa620fc003c0fff5812ac1742bb220648c701aecc0bb.gz/SHA256E-s944465063--d946f2b99efdf3ffd2c5fa620fc003c0fff5812ac1742bb220648c701aecc0bb.gz";
    }

    {
      site = "B11";
      class = "tumours";
      pdx = false;
      r1 = "5F/G6/SHA256E-s917811361--4611ee041096befed653797591287d9cd0e755036bab2e2136b76cb0bebc2447.gz/SHA256E-s917811361--4611ee041096befed653797591287d9cd0e755036bab2e2136b76cb0bebc2447.gz";
      r2 = "5j/62/SHA256E-s917366219--f5afdfd0f975006e663caefb2f41aeea19e24a70dac5b0d9735a3c2ac95ce795.gz/SHA256E-s917366219--f5afdfd0f975006e663caefb2f41aeea19e24a70dac5b0d9735a3c2ac95ce795.gz";
    }

    {
      site = "B11";
      class = "tumours";
      pdx = false;
      r1 = "3W/WG/SHA256E-s935520969--c179a3a3ec20ab0a291e7950cf3a80885851e1b01f6012ba549e8662a13cd9a7.gz/SHA256E-s935520969--c179a3a3ec20ab0a291e7950cf3a80885851e1b01f6012ba549e8662a13cd9a7.gz";
      r2 = "5J/6w/SHA256E-s937510038--606c1f9b8680078af84d96afbf13381d66ae5cbb5c84a673833deffd4b7101dc.gz/SHA256E-s937510038--606c1f9b8680078af84d96afbf13381d66ae5cbb5c84a673833deffd4b7101dc.gz";
    }

    {
      site = "B11";
      class = "tumours";
      pdx = false;
      r1 = "59/v5/SHA256E-s899941369--9905a31a6bc157abe8bd264bf82561d77633df6b6e6d8a1e79165695717547f5.gz/SHA256E-s899941369--9905a31a6bc157abe8bd264bf82561d77633df6b6e6d8a1e79165695717547f5.gz";
      r2 = "0p/wV/SHA256E-s898140441--70aa0bad2982362191e9b3e7230d59078dee147aaebe668b9925f51136cedc6e.gz/SHA256E-s898140441--70aa0bad2982362191e9b3e7230d59078dee147aaebe668b9925f51136cedc6e.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "VP/j8/SHA256E-s938245254--2885245101a14dcf0b769e401da53b94314c1dd194f1878850bff9ff8221ed34.gz/SHA256E-s938245254--2885245101a14dcf0b769e401da53b94314c1dd194f1878850bff9ff8221ed34.gz";
      r2 = "v2/W5/SHA256E-s942869428--e20252416844ee1d896c2086108e6df25c3df125f96cb0359f3dcc0ecaee4881.gz/SHA256E-s942869428--e20252416844ee1d896c2086108e6df25c3df125f96cb0359f3dcc0ecaee4881.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "ZF/4K/SHA256E-s955624246--6ec8487923df043e4c86b72ecf14a501d7e9a31da0b435eba39e18cb85a73acb.gz/SHA256E-s955624246--6ec8487923df043e4c86b72ecf14a501d7e9a31da0b435eba39e18cb85a73acb.gz";
      r2 = "Pf/mg/SHA256E-s958574357--ce1d3a9a8a10630e67f55ada021395940c4f7fd7ab2d3f785f154d09d0c6ad63.gz/SHA256E-s958574357--ce1d3a9a8a10630e67f55ada021395940c4f7fd7ab2d3f785f154d09d0c6ad63.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "fx/qQ/SHA256E-s957248919--7f9b39edbbb9dd3444b7ce2fd36cb74fae43d106b37ccfd2b5c18dc2577b48b0.gz/SHA256E-s957248919--7f9b39edbbb9dd3444b7ce2fd36cb74fae43d106b37ccfd2b5c18dc2577b48b0.gz";
      r2 = "zM/4k/SHA256E-s955943367--8b07aea6e717acb455b77b6046338a5b7034aaf961e0d05cee404cb4b97891b3.gz/SHA256E-s955943367--8b07aea6e717acb455b77b6046338a5b7034aaf961e0d05cee404cb4b97891b3.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0138";
    typeHla = true;
    capture = TwistV2HR;
  }
