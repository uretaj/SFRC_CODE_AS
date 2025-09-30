with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A12";
      class = "tumours";
      pdx = false;
      r1 = "mf/zg/SHA256E-s15973302389--d1d7f6ffbdcdeb69d461b991ccf819dd456fa8b22f7a7df6d1875b659fcc4f6d.gz/SHA256E-s15973302389--d1d7f6ffbdcdeb69d461b991ccf819dd456fa8b22f7a7df6d1875b659fcc4f6d.gz";
      r2 = "xJ/4Z/SHA256E-s16210596360--7b2f3774422f9dab79ce00971c8617bcac922c412039bab03b499397e5bc5429.gz/SHA256E-s16210596360--7b2f3774422f9dab79ce00971c8617bcac922c412039bab03b499397e5bc5429.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "zw/Mj/SHA256E-s6586861521--b807b07099836bdd6a6aa96b327e143131b4c1da31f680deee402cefbd5dbc0f.gz/SHA256E-s6586861521--b807b07099836bdd6a6aa96b327e143131b4c1da31f680deee402cefbd5dbc0f.gz";
      r2 = "j6/24/SHA256E-s6909141414--8ec71361b7510c7de503b7c83657547d45f08e95076e2a57c75e6184aa037244.gz/SHA256E-s6909141414--8ec71361b7510c7de503b7c83657547d45f08e95076e2a57c75e6184aa037244.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    name = "SOL2_0082";
    capture = CREv2;
  }
