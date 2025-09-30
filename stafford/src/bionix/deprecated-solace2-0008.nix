with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "FX/MJ/SHA256E-s14518898339--401d8457a2f616e35f3a8930217351b4c9ccb6849e6b042339143f60356860e4.gz/SHA256E-s14518898339--401d8457a2f616e35f3a8930217351b4c9ccb6849e6b042339143f60356860e4.gz";
      r2 = "6x/w2/SHA256E-s15226298948--96068e575206f7e6d8f0e299cfb2def16399bd30b051677a4f3222796f3ad61d.gz/SHA256E-s15226298948--96068e575206f7e6d8f0e299cfb2def16399bd30b051677a4f3222796f3ad61d.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "kZ/75/SHA256E-s5819801515--886dc156e2fe29d4f4fd41233313bcabe8bc2459d1df10baa3e0fba6386afec0.gz/SHA256E-s5819801515--886dc156e2fe29d4f4fd41233313bcabe8bc2459d1df10baa3e0fba6386afec0.gz";
      r2 = "pz/zm/SHA256E-s6118927934--571965e1c6a06806a347ff2edcf99f0cf9f1d52ac40f4f5c1ebfc3fc25526aa3.gz/SHA256E-s6118927934--571965e1c6a06806a347ff2edcf99f0cf9f1d52ac40f4f5c1ebfc3fc25526aa3.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SOL2_0008";
  }
