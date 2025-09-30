with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "GJ/q5/SHA256E-s3552101801--568f9a42ceebb01879619859e4ab979ee3792a8018d3985028064bc92a5fa928.gz/SHA256E-s3552101801--568f9a42ceebb01879619859e4ab979ee3792a8018d3985028064bc92a5fa928.gz";
      r2 = "mG/K5/SHA256E-s3339395716--79bc2b61c2c026ad46d6128ad2b35de3917e3ca9d7998c51422a428968165d0c.gz/SHA256E-s3339395716--79bc2b61c2c026ad46d6128ad2b35de3917e3ca9d7998c51422a428968165d0c.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Qm/0z/SHA256E-s1442802508--3477e59d44fcdd7f2045b3817b08778f6be126fc510856791b6bd32b7d74736b.gz/SHA256E-s1442802508--3477e59d44fcdd7f2045b3817b08778f6be126fc510856791b6bd32b7d74736b.gz";
      r2 = "9F/v2/SHA256E-s1502382761--3858e523c90f05acc3c0ce0ce4f8272f3f301851aa94800ce632525ab531db33.gz/SHA256E-s1502382761--3858e523c90f05acc3c0ce0ce4f8272f3f301851aa94800ce632525ab531db33.gz";
    }

    {
      site = "B4";
      class = "tumours";
      pdx = false;
      r1 = "Fw/z2/SHA256E-s12676964630--fe33b7686a0c99c9b7b7e084ae1c7aab0a105aa94582d3bb3b6e797898d75255.gz/SHA256E-s12676964630--fe33b7686a0c99c9b7b7e084ae1c7aab0a105aa94582d3bb3b6e797898d75255.gz";
      r2 = "7k/j1/SHA256E-s11753550498--ea7bd4b0b4856fb8b78f5f2c4dd66a912b99abc24fa6ad633bb41b7a154e4e09.gz/SHA256E-s11753550498--ea7bd4b0b4856fb8b78f5f2c4dd66a912b99abc24fa6ad633bb41b7a154e4e09.gz";
    }

    {
      site = "B4";
      class = "tumours";
      pdx = false;
      r1 = "ZX/Vg/SHA256E-s5243387547--d9d25639b53bdc2accb2ef08d11bf13d67de17f0372bb2d792e32aa67257fe0c.gz/SHA256E-s5243387547--d9d25639b53bdc2accb2ef08d11bf13d67de17f0372bb2d792e32aa67257fe0c.gz";
      r2 = "f8/Fz/SHA256E-s5404321424--3ffa3cc443d3d2ce2098f290c9d6843865cadafba542011a858bf3d489c0800d.gz/SHA256E-s5404321424--3ffa3cc443d3d2ce2098f290c9d6843865cadafba542011a858bf3d489c0800d.gz";
    }
    {
      site = "cell-line";
      class = "tumours";
      pdx = false;
      r1 = "WV/jz/SHA256E-s33595047547--3bca99cec809ea3a03a57310542ba7701d407163fdbe12ea0b23d71a212a074d.gz/SHA256E-s33595047547--3bca99cec809ea3a03a57310542ba7701d407163fdbe12ea0b23d71a212a074d.gz";
      r2 = "fP/vw/SHA256E-s35204517161--af687efc8651431add0b3595589ec159c034c4c7d006f0e385bb7f518ea1f351.gz/SHA256E-s35204517161--af687efc8651431add0b3595589ec159c034c4c7d006f0e385bb7f518ea1f351.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "PH419";
  }
