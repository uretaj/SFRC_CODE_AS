with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "F8/vf/SHA256E-s783889722--b47ee83b5b19f449c8db51800e1414994b18dbde0651a75caf5d2452fa926920.gz/SHA256E-s783889722--b47ee83b5b19f449c8db51800e1414994b18dbde0651a75caf5d2452fa926920.gz";
      r2 = "ff/kj/SHA256E-s796589863--035a726a0233c0163d90786a06dcf96c184169f3cf7b0ddb0818857531ba4a74.gz/SHA256E-s796589863--035a726a0233c0163d90786a06dcf96c184169f3cf7b0ddb0818857531ba4a74.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Qx/kW/SHA256E-s790627259--391272900dbded00bb6b93ac83f29c8abc634e0491a6fc3982b90c996ad46c89.gz/SHA256E-s790627259--391272900dbded00bb6b93ac83f29c8abc634e0491a6fc3982b90c996ad46c89.gz";
      r2 = "K2/6p/SHA256E-s809020485--333a7945a7f1bcb9a402e3a163ab2d4e0f67d4a638efa952c28c98544609aecc.gz/SHA256E-s809020485--333a7945a7f1bcb9a402e3a163ab2d4e0f67d4a638efa952c28c98544609aecc.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "K2/VW/SHA256E-s783151790--e4d2480fdca092f8ddf5a32ebe9ea6111499c86eba2758f4fab124fe0ab1a3b6.gz/SHA256E-s783151790--e4d2480fdca092f8ddf5a32ebe9ea6111499c86eba2758f4fab124fe0ab1a3b6.gz";
      r2 = "kM/m0/SHA256E-s799606435--03cae2ac2ae6fd9ce7898e1c1bd3313f469090944b6c7a972b2fcc6e283a1248.gz/SHA256E-s799606435--03cae2ac2ae6fd9ce7898e1c1bd3313f469090944b6c7a972b2fcc6e283a1248.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "JZ/04/SHA256E-s847245078--094df4896aeed7b67b13c1863e8bf69b39043a79690b2b5e4d60e370b3f7feab.gz/SHA256E-s847245078--094df4896aeed7b67b13c1863e8bf69b39043a79690b2b5e4d60e370b3f7feab.gz";
      r2 = "6k/2m/SHA256E-s872065768--3232e08f48f5977a356123419b113e5b5b8ed43f9cc86bce4a2ce24a6afb523f.gz/SHA256E-s872065768--3232e08f48f5977a356123419b113e5b5b8ed43f9cc86bce4a2ce24a6afb523f.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0056";
    capture = TwistV2HR;
  }
