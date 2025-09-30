with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "x4/Vx/SHA256E-s499157435--283759873f311b5d3ca6a3d832dbb8e17264fff1073a9d919b9cdd188b9c2072.gz/SHA256E-s499157435--283759873f311b5d3ca6a3d832dbb8e17264fff1073a9d919b9cdd188b9c2072.gz";
      r2 = "5V/G6/SHA256E-s512601034--31607baee3c1565ce3b2ad729854df494674e5467064474f262c052ee58cd3cb.gz/SHA256E-s512601034--31607baee3c1565ce3b2ad729854df494674e5467064474f262c052ee58cd3cb.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "5Z/mX/SHA256E-s517224606--352716ad064d2b933f7bfa506e66f129277a6c2daa8b4b9abea87c5f3498d813.gz/SHA256E-s517224606--352716ad064d2b933f7bfa506e66f129277a6c2daa8b4b9abea87c5f3498d813.gz";
      r2 = "7W/KW/SHA256E-s532691288--ced820fd27467068c9666cf7ce8216e4a9a5b5e5046679f10a23c290629025c3.gz/SHA256E-s532691288--ced820fd27467068c9666cf7ce8216e4a9a5b5e5046679f10a23c290629025c3.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "5P/M2/SHA256E-s521351931--d061fab89818cfa099940b093f946850f61f86b1e4860e6c1f46094ef9c617ee.gz/SHA256E-s521351931--d061fab89818cfa099940b093f946850f61f86b1e4860e6c1f46094ef9c617ee.gz";
      r2 = "FJ/49/SHA256E-s537396866--2835be9ae4f0a0b10db95072b968e214368c65d33182027cf66c93a38b0b4b62.gz/SHA256E-s537396866--2835be9ae4f0a0b10db95072b968e214368c65d33182027cf66c93a38b0b4b62.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "7Q/71/SHA256E-s514066200--c3f80a98ec1eae84d45096f4a5e2f7f4d602c44c286eb0690a9464fabb35d213.gz/SHA256E-s514066200--c3f80a98ec1eae84d45096f4a5e2f7f4d602c44c286eb0690a9464fabb35d213.gz";
      r2 = "zG/VG/SHA256E-s529149621--b84224113fe51b3ec122c2135fee30be3728bafb5cc45f0ad72b3eb8cc76d4f1.gz/SHA256E-s529149621--b84224113fe51b3ec122c2135fee30be3728bafb5cc45f0ad72b3eb8cc76d4f1.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "X3/50/SHA256E-s524515847--37935aa06c892f97ed92cf6c144176b6b2410227d2a3933b8bfadb5f11b32de2.gz/SHA256E-s524515847--37935aa06c892f97ed92cf6c144176b6b2410227d2a3933b8bfadb5f11b32de2.gz";
      r2 = "Gp/Q8/SHA256E-s540259760--599f3466da7a3c4c3d3db4249d9f72599f8c16f14e556ac320e5720a1639469a.gz/SHA256E-s540259760--599f3466da7a3c4c3d3db4249d9f72599f8c16f14e556ac320e5720a1639469a.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "xq/0G/SHA256E-s552206968--d67cb95b3f76e41f952ffb52731a6d5e421bfc003fa32b55648645b1bfffb6e6.gz/SHA256E-s552206968--d67cb95b3f76e41f952ffb52731a6d5e421bfc003fa32b55648645b1bfffb6e6.gz";
      r2 = "2Q/Q8/SHA256E-s566393611--2162382340edf5443ed5cf7be3120eba457c7d4b5bb67450be8894f3e30c7493.gz/SHA256E-s566393611--2162382340edf5443ed5cf7be3120eba457c7d4b5bb67450be8894f3e30c7493.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "8F/ZQ/SHA256E-s527376019--7c8c2ff21a145e19122de2fba3a425c01adab31098c9a9bc447361d7a40779b3.gz/SHA256E-s527376019--7c8c2ff21a145e19122de2fba3a425c01adab31098c9a9bc447361d7a40779b3.gz";
      r2 = "1W/89/SHA256E-s542902179--b62c8c103a648ef02a3fb836522cf162dd56e9653d1b297deec03fe747a073b2.gz/SHA256E-s542902179--b62c8c103a648ef02a3fb836522cf162dd56e9653d1b297deec03fe747a073b2.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "G0/23/SHA256E-s535805255--2059cf481bd7b71df5fd65d660bf01392f9eb084f26a0654ad6c45f8252865b8.gz/SHA256E-s535805255--2059cf481bd7b71df5fd65d660bf01392f9eb084f26a0654ad6c45f8252865b8.gz";
      r2 = "6Q/2F/SHA256E-s548379900--0c8beaa838dbf3749dc1243643b2e2d69b7324a84ce4a0c946b5991593f06e11.gz/SHA256E-s548379900--0c8beaa838dbf3749dc1243643b2e2d69b7324a84ce4a0c946b5991593f06e11.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "X9/PG/SHA256E-s932883700--aaaabc1e05ae8f3a2cd9051ed4a2ac404f69b252a785b5d67c560342d75dc572.gz/SHA256E-s932883700--aaaabc1e05ae8f3a2cd9051ed4a2ac404f69b252a785b5d67c560342d75dc572.gz";
      r2 = "zM/Qk/SHA256E-s935620480--c0394e32e9f59049d5dbde86f84501364581dedb37977b89e1a7ae7346bf5bd5.gz/SHA256E-s935620480--c0394e32e9f59049d5dbde86f84501364581dedb37977b89e1a7ae7346bf5bd5.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "QX/gp/SHA256E-s942871013--a3a03f60a6f4052b46da4465c0d8a3bd816cc34bdffcd099410d8db5e1f38633.gz/SHA256E-s942871013--a3a03f60a6f4052b46da4465c0d8a3bd816cc34bdffcd099410d8db5e1f38633.gz";
      r2 = "9W/6W/SHA256E-s944036449--840d2ec1c14e732b52f8a834d272694786d56d65891a2a5618ad15e8cf6d416f.gz/SHA256E-s944036449--840d2ec1c14e732b52f8a834d272694786d56d65891a2a5618ad15e8cf6d416f.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "FQ/WJ/SHA256E-s941327637--1027ecf44a8caf59eef21f32df1c16fab8ed74a768042473e8269cacf0d9eef9.gz/SHA256E-s941327637--1027ecf44a8caf59eef21f32df1c16fab8ed74a768042473e8269cacf0d9eef9.gz";
      r2 = "0J/G4/SHA256E-s938347798--7ed57d705dfa3b127d5a478506d2f3620e6e08b7e85631d391bfab21f808c7a8.gz/SHA256E-s938347798--7ed57d705dfa3b127d5a478506d2f3620e6e08b7e85631d391bfab21f808c7a8.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0017";
    typeHla = true;
    capture = TwistV2HR;
  }
