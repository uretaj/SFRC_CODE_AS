with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Q1/6M/SHA256E-s6470446911--df2b040df0e1fa5a1c08c3c9289eb04c58f794a575f6e73eb554cdf58f2f4fde.gz/SHA256E-s6470446911--df2b040df0e1fa5a1c08c3c9289eb04c58f794a575f6e73eb554cdf58f2f4fde.gz";
      r2 = "vX/7W/SHA256E-s6893491668--87829b29a5a014a8c76fb7c3264ea6c9ec557cd6bab13d00a0f2833b7e2aea41.gz/SHA256E-s6893491668--87829b29a5a014a8c76fb7c3264ea6c9ec557cd6bab13d00a0f2833b7e2aea41.gz";
    }
    {
      site = "1C";
      class = "tumours";
      pdx = false;
      r1 = "XJ/2M/SHA256E-s16273749153--2a9fa27c68c21dc5de63a9c50e4af1062553c8cfa5c3189d18ec7d865e100c42.gz/SHA256E-s16273749153--2a9fa27c68c21dc5de63a9c50e4af1062553c8cfa5c3189d18ec7d865e100c42.gz";
      r2 = "6G/jJ/SHA256E-s16743228369--860c75bfc9f32670537a4d47e977b31788b29bf3690664d404e50eed06550ee9.gz/SHA256E-s16743228369--860c75bfc9f32670537a4d47e977b31788b29bf3690664d404e50eed06550ee9.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "X9/Mv/SHA256E-s4812494911--7837f7f16d10db29bf5ca216950fa046dbdbf22e1d484f929aac69df1a850c14.gz/SHA256E-s4812494911--7837f7f16d10db29bf5ca216950fa046dbdbf22e1d484f929aac69df1a850c14.gz";
      r2 = "Mq/0g/SHA256E-s4860132504--d73e8b8f9df9181d01a03d7059ca39b6ef48dbe1530ab1e2fce8f6f8267047a9.gz/SHA256E-s4860132504--d73e8b8f9df9181d01a03d7059ca39b6ef48dbe1530ab1e2fce8f6f8267047a9.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SOL2_0131";
  }
