with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2A";
      class = "tumours";
      pdx = false;
      r1 = "qF/v8/SHA256E-s3983726157--84a21787edb8b81d45c59ed6d0ef7f98f9f364aeccc7ad3009dea7c9ac99a034.gz/SHA256E-s3983726157--84a21787edb8b81d45c59ed6d0ef7f98f9f364aeccc7ad3009dea7c9ac99a034.gz";
      r2 = "9j/K7/SHA256E-s4069030660--fc2cd3015bd311564b5579d0a3ae18b6bfc0d9c3e0badf6b7fcef21609ee1da9.gz/SHA256E-s4069030660--fc2cd3015bd311564b5579d0a3ae18b6bfc0d9c3e0badf6b7fcef21609ee1da9.gz";
    }

    {
      site = "2A";
      class = "tumours";
      pdx = false;
      r1 = "84/kv/SHA256E-s3964140317--dc36c6623eb410b5e880638672e55b2bfc98b0e2fe62ec09567c001606e35223.gz/SHA256E-s3964140317--dc36c6623eb410b5e880638672e55b2bfc98b0e2fe62ec09567c001606e35223.gz";
      r2 = "MZ/W2/SHA256E-s4031148918--ccb377e548125dbb9902bd5ca8092e6d015cae79a59e7e18602eaab64077cd30.gz/SHA256E-s4031148918--ccb377e548125dbb9902bd5ca8092e6d015cae79a59e7e18602eaab64077cd30.gz";
    }

    {
      site = "2A";
      class = "tumours";
      pdx = false;
      r1 = "fK/74/SHA256E-s3968248417--4f7d7a182778f8b5f6d1b3a6b0b9389e269f745aa439cd6275573d275eaccd80.gz/SHA256E-s3968248417--4f7d7a182778f8b5f6d1b3a6b0b9389e269f745aa439cd6275573d275eaccd80.gz";
      r2 = "W7/FQ/SHA256E-s4024457631--b80e07a5b068037b81f0a980e29972241d3e38c63ba7559b9049244985899075.gz/SHA256E-s4024457631--b80e07a5b068037b81f0a980e29972241d3e38c63ba7559b9049244985899075.gz";
    }

    {
      site = "2A";
      class = "tumours";
      pdx = false;
      r1 = "PV/Jz/SHA256E-s3960756065--de9d3477594b6b2bee6670bddf5f25c99344c07e37d01dbe6059878e3b6a85b6.gz/SHA256E-s3960756065--de9d3477594b6b2bee6670bddf5f25c99344c07e37d01dbe6059878e3b6a85b6.gz";
      r2 = "6x/Jq/SHA256E-s4016150277--cbcaf1bdeb6672d22624eb8cb89d57af6a7ec784626a3b07785dfc956ef6c421.gz/SHA256E-s4016150277--cbcaf1bdeb6672d22624eb8cb89d57af6a7ec784626a3b07785dfc956ef6c421.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "f0/F6/SHA256E-s901050668--d04b60272334166577bf324d2774eed9248de8dd023410dbc250299d983b66c3.gz/SHA256E-s901050668--d04b60272334166577bf324d2774eed9248de8dd023410dbc250299d983b66c3.gz";
      r2 = "J1/07/SHA256E-s904911745--4466f0fdf3d102a0f35574998cc8a2e67247f4c42f024e22c4af13787b028928.gz/SHA256E-s904911745--4466f0fdf3d102a0f35574998cc8a2e67247f4c42f024e22c4af13787b028928.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "pQ/gP/SHA256E-s914758272--c5edcd0cfdbcd5ab1ae71ed3bbfd1208da27b684e3bf1f70f92d626ffac92ce6.gz/SHA256E-s914758272--c5edcd0cfdbcd5ab1ae71ed3bbfd1208da27b684e3bf1f70f92d626ffac92ce6.gz";
      r2 = "8Q/fw/SHA256E-s917096416--82bed74c80ec41fd9cd0a656c8510a4be2a12631b0396d0ab87081da5ade9636.gz/SHA256E-s917096416--82bed74c80ec41fd9cd0a656c8510a4be2a12631b0396d0ab87081da5ade9636.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "xK/Zm/SHA256E-s914263367--2e96278249ae5a0467615a7de6ad566f2a51b231a6aa74e5ea2ceb09b01b089c.gz/SHA256E-s914263367--2e96278249ae5a0467615a7de6ad566f2a51b231a6aa74e5ea2ceb09b01b089c.gz";
      r2 = "mF/3p/SHA256E-s912500743--4e175da7b30f985864818d6b66a3aa7fedfa7379feede5f140869ea97b41f825.gz/SHA256E-s912500743--4e175da7b30f985864818d6b66a3aa7fedfa7379feede5f140869ea97b41f825.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0043";
    typeHla = true;
    capture = TwistV2HR;
  }
