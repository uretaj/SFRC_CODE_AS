with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "3A";
      class = "tumours";
      pdx = false;
      r1 = "9F/K9/SHA256E-s6945699005--c5619b179057b2a29ad1a59afd214c445d7b92c6d31a116230089c2524c53b04.gz/SHA256E-s6945699005--c5619b179057b2a29ad1a59afd214c445d7b92c6d31a116230089c2524c53b04.gz";
      r2 = "jP/zp/SHA256E-s6934047425--5e1e76135214d6241abe807eb8381d38d76ee8af0fb948ae84c3d21db0599221.gz/SHA256E-s6934047425--5e1e76135214d6241abe807eb8381d38d76ee8af0fb948ae84c3d21db0599221.gz";
    }

    {
      site = "3A";
      class = "tumours";
      pdx = false;
      r1 = "Gk/GG/SHA256E-s3590089869--852c50bf84558d28886cdae2b7eecbc38db8c2a9fe74541dc81e9d9346d6d1e5.gz/SHA256E-s3590089869--852c50bf84558d28886cdae2b7eecbc38db8c2a9fe74541dc81e9d9346d6d1e5.gz";
      r2 = "Z9/zw/SHA256E-s3569140977--9eb677cb9ffbebdeb36443da230e2a3e1aaf2af6c1b712d5b681dc83cb88d5a1.gz/SHA256E-s3569140977--9eb677cb9ffbebdeb36443da230e2a3e1aaf2af6c1b712d5b681dc83cb88d5a1.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Vf/mf/SHA256E-s854296170--58586142c25838193ffddc8796e17dc1b4df0c039fc6ce74024a156032b2adce.gz/SHA256E-s854296170--58586142c25838193ffddc8796e17dc1b4df0c039fc6ce74024a156032b2adce.gz";
      r2 = "m5/W0/SHA256E-s855974271--32a9ab1b04e4813ba9f570a417092736fd5dabc7d17f7e6b4b05b8c7f57bdd4c.gz/SHA256E-s855974271--32a9ab1b04e4813ba9f570a417092736fd5dabc7d17f7e6b4b05b8c7f57bdd4c.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "zG/3K/SHA256E-s864623035--470498a4fa8b8ab3b7ed58da5777a0d4a5c9199ae8b4ddef91d02d0be8cf9b1f.gz/SHA256E-s864623035--470498a4fa8b8ab3b7ed58da5777a0d4a5c9199ae8b4ddef91d02d0be8cf9b1f.gz";
      r2 = "Xf/Fv/SHA256E-s865415525--492d3058bde9c398fc875d2e7cbfee35278c46681e711870cf24e98efab6a110.gz/SHA256E-s865415525--492d3058bde9c398fc875d2e7cbfee35278c46681e711870cf24e98efab6a110.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "QG/M7/SHA256E-s865663036--b440645d588ad5bbf0ea6cf22cb89bbcdb69b7779dd6239c99cfe7cc5e522601.gz/SHA256E-s865663036--b440645d588ad5bbf0ea6cf22cb89bbcdb69b7779dd6239c99cfe7cc5e522601.gz";
      r2 = "PF/qV/SHA256E-s862807268--1cb1bb02333043aa7dd0d1880a926fb61b968ef803deb584eb783ec59ac34dcd.gz/SHA256E-s862807268--1cb1bb02333043aa7dd0d1880a926fb61b968ef803deb584eb783ec59ac34dcd.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0058";
    typeHla = true;
    capture = TwistV2HR;
  }
