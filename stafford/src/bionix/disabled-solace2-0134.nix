with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "X5/wm/SHA256E-s922049687--d08e2cbccc6077e39bdbe1c47f4f9e7431a72089ef7602fcb361b2e0dd9b5f5c.gz/SHA256E-s922049687--d08e2cbccc6077e39bdbe1c47f4f9e7431a72089ef7602fcb361b2e0dd9b5f5c.gz";
      r2 = "gx/4k/SHA256E-s921636748--10239eb0ebc47c90a374bbcc0adf898820a2592d20629af2ac6e84cee0992239.gz/SHA256E-s921636748--10239eb0ebc47c90a374bbcc0adf898820a2592d20629af2ac6e84cee0992239.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "xP/xF/SHA256E-s928177158--21c04d4c53bea3a8984268d7309ba9b1f3ed21df30787492a2f598e8d29ad2e3.gz/SHA256E-s928177158--21c04d4c53bea3a8984268d7309ba9b1f3ed21df30787492a2f598e8d29ad2e3.gz";
      r2 = "W0/47/SHA256E-s926280386--d76bc37a85c0d531cdeefa3deefa06851fab60f648b7e20be165c3cbfdca2a76.gz/SHA256E-s926280386--d76bc37a85c0d531cdeefa3deefa06851fab60f648b7e20be165c3cbfdca2a76.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "XQ/QJ/SHA256E-s927397317--ed75e800819b82404074ff3740576f92c11864ac48298f79822f2c8dbfbc13b7.gz/SHA256E-s927397317--ed75e800819b82404074ff3740576f92c11864ac48298f79822f2c8dbfbc13b7.gz";
      r2 = "Vq/5v/SHA256E-s921621781--59890ee0b4040b79de154df7e84374657a3b2f0616554f8499dd10d83e268a25.gz/SHA256E-s921621781--59890ee0b4040b79de154df7e84374657a3b2f0616554f8499dd10d83e268a25.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0134";
    capture = TwistV2HR;
  }
