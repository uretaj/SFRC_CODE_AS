with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A2";
      class = "tumours";
      pdx = false;
      r1 = "gQ/FW/SHA256E-s721747379--a87b6594862b9b4e888a1fc99dbc6f314037fd8e692f5df55840a5b7638ca283.gz/SHA256E-s721747379--a87b6594862b9b4e888a1fc99dbc6f314037fd8e692f5df55840a5b7638ca283.gz";
      r2 = "VJ/V9/SHA256E-s728195981--a2230ac482372f5061495b03a8ed9809c8391c193cf3b026a5a3d6ff5d0c0cec.gz/SHA256E-s728195981--a2230ac482372f5061495b03a8ed9809c8391c193cf3b026a5a3d6ff5d0c0cec.gz";
    }

    {
      site = "A2";
      class = "tumours";
      pdx = false;
      r1 = "9x/jP/SHA256E-s748363061--a0ece7f0b303ad37cc5612e76ad43d8859506eaaa28d81d5a45b8ce748bc8ede.gz/SHA256E-s748363061--a0ece7f0b303ad37cc5612e76ad43d8859506eaaa28d81d5a45b8ce748bc8ede.gz";
      r2 = "KF/Zk/SHA256E-s756881676--7c6991f055f79ce6059092a23c597c524a4e612d7c5fd3dde07f9c24ef605117.gz/SHA256E-s756881676--7c6991f055f79ce6059092a23c597c524a4e612d7c5fd3dde07f9c24ef605117.gz";
    }

    {
      site = "A2";
      class = "tumours";
      pdx = false;
      r1 = "Vz/9F/SHA256E-s748790472--3ec94d714c1beddb6f984d943fa232623e4fab46368c8d701238a4c6767c29fc.gz/SHA256E-s748790472--3ec94d714c1beddb6f984d943fa232623e4fab46368c8d701238a4c6767c29fc.gz";
      r2 = "P7/2f/SHA256E-s758533080--5e47c8feea4e3134ac5c5803bdd77adacc0155e368e0a2fc6ce40a678437031d.gz/SHA256E-s758533080--5e47c8feea4e3134ac5c5803bdd77adacc0155e368e0a2fc6ce40a678437031d.gz";
    }

    {
      site = "A2";
      class = "tumours";
      pdx = false;
      r1 = "KJ/Km/SHA256E-s747243554--2ad945f78801de4bba6cadbed3bc6e0e9ad3707c10427ec360384772335196b1.gz/SHA256E-s747243554--2ad945f78801de4bba6cadbed3bc6e0e9ad3707c10427ec360384772335196b1.gz";
      r2 = "jZ/j4/SHA256E-s756188299--a8624d80abb22349f425a1f010a51b000e07ddb82030ba1506cb95aef9f48f79.gz/SHA256E-s756188299--a8624d80abb22349f425a1f010a51b000e07ddb82030ba1506cb95aef9f48f79.gz";
    }

    {
      site = "A2";
      class = "tumours";
      pdx = false;
      r1 = "wm/0M/SHA256E-s766216789--83f34432abcb715a54621aab87cb4081aa43e98355b7f198e035978eada4c8ac.gz/SHA256E-s766216789--83f34432abcb715a54621aab87cb4081aa43e98355b7f198e035978eada4c8ac.gz";
      r2 = "FF/9j/SHA256E-s775745434--2be70d30879a3e79d324b0c6ab615dcb8e902712b671777268255e8548829c65.gz/SHA256E-s775745434--2be70d30879a3e79d324b0c6ab615dcb8e902712b671777268255e8548829c65.gz";
    }

    {
      site = "A2";
      class = "tumours";
      pdx = false;
      r1 = "vz/fK/SHA256E-s756102507--2870da1b23419f9a29ead157bcec922515fac78fd8434cfcdc45cf22a34c8cc2.gz/SHA256E-s756102507--2870da1b23419f9a29ead157bcec922515fac78fd8434cfcdc45cf22a34c8cc2.gz";
      r2 = "9v/K8/SHA256E-s763163317--9dc4c2462880778fef75851e230332c0a4f0187c3222881a9f068ec3b5d15260.gz/SHA256E-s763163317--9dc4c2462880778fef75851e230332c0a4f0187c3222881a9f068ec3b5d15260.gz";
    }

    {
      site = "A2";
      class = "tumours";
      pdx = false;
      r1 = "1G/50/SHA256E-s765601809--adcad682cb566e1bcbb72e1b8e6891d571d12f84999d87554975bcab344c3775.gz/SHA256E-s765601809--adcad682cb566e1bcbb72e1b8e6891d571d12f84999d87554975bcab344c3775.gz";
      r2 = "pv/Gw/SHA256E-s774516269--fc78d34a22507e1a0a97c6914d7e17b884d55f491d06257cec4f144453205c45.gz/SHA256E-s774516269--fc78d34a22507e1a0a97c6914d7e17b884d55f491d06257cec4f144453205c45.gz";
    }

    {
      site = "A2";
      class = "tumours";
      pdx = false;
      r1 = "Jg/gz/SHA256E-s737610829--42e97ac5e29abc1a1233f3d27d38cd268944e756cceb111f7a572382b5216650.gz/SHA256E-s737610829--42e97ac5e29abc1a1233f3d27d38cd268944e756cceb111f7a572382b5216650.gz";
      r2 = "Pp/Zq/SHA256E-s743285432--dcb8cb040b68dd9e653fa0d49a4d2cb4bd3c108d5db904c56933b0da4dfd88c7.gz/SHA256E-s743285432--dcb8cb040b68dd9e653fa0d49a4d2cb4bd3c108d5db904c56933b0da4dfd88c7.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Qg/P0/SHA256E-s1140617627--6c1685f7d4e36ef4fa9dfd4c43992736ce704947d2f1c7f395b934bbbfe4c934.gz/SHA256E-s1140617627--6c1685f7d4e36ef4fa9dfd4c43992736ce704947d2f1c7f395b934bbbfe4c934.gz";
      r2 = "Fm/29/SHA256E-s1142299058--5eaf8c91b81f482150698a7ff50a932673f1ff88fb5b22477c517455f54c9434.gz/SHA256E-s1142299058--5eaf8c91b81f482150698a7ff50a932673f1ff88fb5b22477c517455f54c9434.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "mx/kp/SHA256E-s1152386676--33f7a9b03de50b56fd72bcb418acfcb351530222617ba75acbb39a4f7c1f23eb.gz/SHA256E-s1152386676--33f7a9b03de50b56fd72bcb418acfcb351530222617ba75acbb39a4f7c1f23eb.gz";
      r2 = "PK/5v/SHA256E-s1152383036--c358004739f32e84df12da347947f6b6b7125f4fdd332a0f47db89d347ace4a5.gz/SHA256E-s1152383036--c358004739f32e84df12da347947f6b6b7125f4fdd332a0f47db89d347ace4a5.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "ZM/60/SHA256E-s1148912687--da57cdb70876dba8d8773ed6e048db36192b1f5e90a8fbab667e8dc9eb57e056.gz/SHA256E-s1148912687--da57cdb70876dba8d8773ed6e048db36192b1f5e90a8fbab667e8dc9eb57e056.gz";
      r2 = "7j/M1/SHA256E-s1144114476--3255b4118d02c26348e5144bb2bc8081a18fb0caadf46ac1bb4df3403f40719a.gz/SHA256E-s1144114476--3255b4118d02c26348e5144bb2bc8081a18fb0caadf46ac1bb4df3403f40719a.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0098";
    typeHla = true;
    capture = TwistV2HR;
  }
