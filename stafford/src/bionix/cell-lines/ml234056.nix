with import ../milton-slurm.nix {}; let
  samples = [
    {
      site = "34931-CL1";
      pdx = false;
      r1 = "PP/6j/SHA256E-s30709375954--4d33b1ce318b1072f0618401b0cda7b83b5674b51886a54106a0a8376d7f5652.gz/SHA256E-s30709375954--4d33b1ce318b1072f0618401b0cda7b83b5674b51886a54106a0a8376d7f5652.gz";
      r2 = "Vk/F8/SHA256E-s32574686755--b758a600cae5a868516a4da83e63b2f54396d9eb0b387474f527b0a4a474d777.gz/SHA256E-s32574686755--b758a600cae5a868516a4da83e63b2f54396d9eb0b387474f527b0a4a474d777.gz";
    }
  ];
in
  bionix.callBionix ./pipeline.nix {
    inherit samples;
    name = "ML234056";
  }
