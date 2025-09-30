with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Jk/X7/SHA256E-s958179027--78ca4d087f73a3e03e8b2e9b377312db525bd9f6a46f01f10d79a524113db399.gz/SHA256E-s958179027--78ca4d087f73a3e03e8b2e9b377312db525bd9f6a46f01f10d79a524113db399.gz";
      r2 = "fZ/gJ/SHA256E-s955312464--e486232e1c1902d317485327e5caae8e9b57e904f0e59611d77eb50245716903.gz/SHA256E-s955312464--e486232e1c1902d317485327e5caae8e9b57e904f0e59611d77eb50245716903.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "k9/mp/SHA256E-s967106965--86b7e29e74764b83f4e0b9629b1f256f51ef6c4b5c7bb0b7178c9dc04b5127d8.gz/SHA256E-s967106965--86b7e29e74764b83f4e0b9629b1f256f51ef6c4b5c7bb0b7178c9dc04b5127d8.gz";
      r2 = "XW/zj/SHA256E-s963244101--2939b233aecfdda5d6d0f29657a3a275a36bf33c82605499d4bcc4cfb8a1ca2b.gz/SHA256E-s963244101--2939b233aecfdda5d6d0f29657a3a275a36bf33c82605499d4bcc4cfb8a1ca2b.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "03/V0/SHA256E-s965914871--e67d6badbe7ef0b539b356420dad3d4144d5d46edea1565814e5539574ca1b68.gz/SHA256E-s965914871--e67d6badbe7ef0b539b356420dad3d4144d5d46edea1565814e5539574ca1b68.gz";
      r2 = "M0/7j/SHA256E-s958250890--221c0c0a0300936d9ed40670eb0911e9ee7cb1bdb27019ebafccff817c08874e.gz/SHA256E-s958250890--221c0c0a0300936d9ed40670eb0911e9ee7cb1bdb27019ebafccff817c08874e.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0020";
    capture = TwistV2HR;
  }
