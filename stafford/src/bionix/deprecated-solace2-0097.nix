with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A4";
      class = "tumours";
      pdx = false;
      r1 = "KZ/J9/SHA256E-s11319582420--f49e246cff761ccbdd8eaf32f55d556e724be6effc98d98f4b385fdd563e3d6b.gz/SHA256E-s11319582420--f49e246cff761ccbdd8eaf32f55d556e724be6effc98d98f4b385fdd563e3d6b.gz";
      r2 = "XQ/FW/SHA256E-s11447049502--c8c3c485487294bf37cb37385481ed1b239c3d452f69fa23c1dfecf93883fb51.gz/SHA256E-s11447049502--c8c3c485487294bf37cb37385481ed1b239c3d452f69fa23c1dfecf93883fb51.gz";
    }
    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "jk/Fz/SHA256E-s6278077626--44baef3d5ba041540e26be559b8f1155bd02b28096cc5f5fe4672c2d3256a025.gz/SHA256E-s6278077626--44baef3d5ba041540e26be559b8f1155bd02b28096cc5f5fe4672c2d3256a025.gz";
      r2 = "G8/fw/SHA256E-s6744372681--203a237ae6e962e83034800df001f181c376fc9bfa7d4f7a4b94ea716d3fa194.gz/SHA256E-s6744372681--203a237ae6e962e83034800df001f181c376fc9bfa7d4f7a4b94ea716d3fa194.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SOL2_0097";
  }
