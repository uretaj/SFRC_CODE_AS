with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2M";
      class = "tumours";
      pdx = false;
      r1 = "jx/V8/SHA256E-s744251227--cf8f5cf32812c23081cd154d496e6bce132ba163ac83e5470e33b0ae428dbacc.gz/SHA256E-s744251227--cf8f5cf32812c23081cd154d496e6bce132ba163ac83e5470e33b0ae428dbacc.gz";
      r2 = "KF/Fz/SHA256E-s744207199--064048d778e84bb920e6ee22144e6f3adca25472f3aec026734b8c23e07d233d.gz/SHA256E-s744207199--064048d778e84bb920e6ee22144e6f3adca25472f3aec026734b8c23e07d233d.gz";
    }

    {
      site = "2M";
      class = "tumours";
      pdx = false;
      r1 = "24/jG/SHA256E-s777926965--1949731a36c82b8a858b2e0e91e91f25352c64e806cbb241dfad4b746068fd07.gz/SHA256E-s777926965--1949731a36c82b8a858b2e0e91e91f25352c64e806cbb241dfad4b746068fd07.gz";
      r2 = "xg/3w/SHA256E-s779881561--ad6346b03a854b44d90ebf21354079578d58688de5adf43861489a145dabcce5.gz/SHA256E-s779881561--ad6346b03a854b44d90ebf21354079578d58688de5adf43861489a145dabcce5.gz";
    }

    {
      site = "2M";
      class = "tumours";
      pdx = false;
      r1 = "qx/7X/SHA256E-s773273297--771ee0af4e667a784e196c069f98a849b3d1c7a09d25ab71c25f5f0096304c3f.gz/SHA256E-s773273297--771ee0af4e667a784e196c069f98a849b3d1c7a09d25ab71c25f5f0096304c3f.gz";
      r2 = "kw/3v/SHA256E-s776320927--ca4eff986df25449a50700c041b2ac2d78cb5d1f06e9754a96669c4558466088.gz/SHA256E-s776320927--ca4eff986df25449a50700c041b2ac2d78cb5d1f06e9754a96669c4558466088.gz";
    }

    {
      site = "2M";
      class = "tumours";
      pdx = false;
      r1 = "wf/m0/SHA256E-s768486813--3fd0d680609ce2de0959d52f8c1c60fed4858a87266b78550c1e0d7377bfea8f.gz/SHA256E-s768486813--3fd0d680609ce2de0959d52f8c1c60fed4858a87266b78550c1e0d7377bfea8f.gz";
      r2 = "K7/m5/SHA256E-s770751485--cef9ddaccac3ca34ed8816890a59a1daa6b8014b8cbc92636bd011e8b77e641b.gz/SHA256E-s770751485--cef9ddaccac3ca34ed8816890a59a1daa6b8014b8cbc92636bd011e8b77e641b.gz";
    }

    {
      site = "2M";
      class = "tumours";
      pdx = false;
      r1 = "6F/5X/SHA256E-s791738964--9a67861d2b33f268425fb710fecbd5dbdca18c897f74b4efb7f161b239ec608d.gz/SHA256E-s791738964--9a67861d2b33f268425fb710fecbd5dbdca18c897f74b4efb7f161b239ec608d.gz";
      r2 = "4z/2Q/SHA256E-s794540998--56e99286fcbbff2943e65ec852bee0e4e6598227bac7edcc5a75354ea1435585.gz/SHA256E-s794540998--56e99286fcbbff2943e65ec852bee0e4e6598227bac7edcc5a75354ea1435585.gz";
    }

    {
      site = "2M";
      class = "tumours";
      pdx = false;
      r1 = "z7/Qf/SHA256E-s784107250--7b4ef13e56961caf85bf840ffacf901c55b6c483861a0f2d4c8d1ebd9f7c6c79.gz/SHA256E-s784107250--7b4ef13e56961caf85bf840ffacf901c55b6c483861a0f2d4c8d1ebd9f7c6c79.gz";
      r2 = "0G/X5/SHA256E-s784100110--b3fc37a164b4e07094ba5bae5f3e8a7030ea302fcadabe0f94de8456e5669d68.gz/SHA256E-s784100110--b3fc37a164b4e07094ba5bae5f3e8a7030ea302fcadabe0f94de8456e5669d68.gz";
    }

    {
      site = "2M";
      class = "tumours";
      pdx = false;
      r1 = "wX/3q/SHA256E-s797694666--d0b95cc26a2ca5deb284ee17737757584b4b6a6ebc19c414fd71ed3516d81f10.gz/SHA256E-s797694666--d0b95cc26a2ca5deb284ee17737757584b4b6a6ebc19c414fd71ed3516d81f10.gz";
      r2 = "fv/80/SHA256E-s799991068--91979b9f055fe6f75292892456cbc5e0c5c9f01043472979eb5d89229acac998.gz/SHA256E-s799991068--91979b9f055fe6f75292892456cbc5e0c5c9f01043472979eb5d89229acac998.gz";
    }

    {
      site = "2M";
      class = "tumours";
      pdx = false;
      r1 = "fX/QJ/SHA256E-s763836376--1c0f325274ade5ac03cd22262a60e06c3bc28992de0057c4d4c6edbc81f9edfe.gz/SHA256E-s763836376--1c0f325274ade5ac03cd22262a60e06c3bc28992de0057c4d4c6edbc81f9edfe.gz";
      r2 = "gp/X1/SHA256E-s762675784--680bd8d034dfd69e7d86868269f2e6e86116d0676170655d1dbf5daae6d73b7c.gz/SHA256E-s762675784--680bd8d034dfd69e7d86868269f2e6e86116d0676170655d1dbf5daae6d73b7c.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Fg/gx/SHA256E-s903048458--e60eef85427a4aee67aacdb59c75b9c57ce1f39d26903d293b4e52a2ebc9e15e.gz/SHA256E-s903048458--e60eef85427a4aee67aacdb59c75b9c57ce1f39d26903d293b4e52a2ebc9e15e.gz";
      r2 = "p0/29/SHA256E-s903063687--f60f9f0cd2a80892a0e2d36412de2c0e6e395613fd447c84a2ae616561017c9b.gz/SHA256E-s903063687--f60f9f0cd2a80892a0e2d36412de2c0e6e395613fd447c84a2ae616561017c9b.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "J9/Kk/SHA256E-s919210350--ab329323acb9ecfab5f2478490782dd6c68d524724a612318ea949891acc2509.gz/SHA256E-s919210350--ab329323acb9ecfab5f2478490782dd6c68d524724a612318ea949891acc2509.gz";
      r2 = "qP/Q3/SHA256E-s917914122--f2cbaf7cae1b45cadd74408750d708db15cfebe05390314c8187f41600a995ef.gz/SHA256E-s917914122--f2cbaf7cae1b45cadd74408750d708db15cfebe05390314c8187f41600a995ef.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "XV/kM/SHA256E-s928413943--74720948568ba80dae288169b2c391e767110c8792416a0bd72aa83bea7cecb3.gz/SHA256E-s928413943--74720948568ba80dae288169b2c391e767110c8792416a0bd72aa83bea7cecb3.gz";
      r2 = "VX/2J/SHA256E-s922979075--7e1121fe1eb8354eeae2b07f267f70af18d9df24c293d01298ac691775388ce5.gz/SHA256E-s922979075--7e1121fe1eb8354eeae2b07f267f70af18d9df24c293d01298ac691775388ce5.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0132";
    typeHla = true;
    capture = TwistV2HR;
  }
