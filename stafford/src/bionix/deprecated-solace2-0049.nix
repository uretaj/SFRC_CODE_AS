with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B10";
      class = "tumours";
      pdx = false;
      r1 = "xQ/2f/SHA256E-s9530527250--42af0b132e1edddeedc1b6b270aa2f26210cdc702d96d98ec7da17fb59c278d5.gz/SHA256E-s9530527250--42af0b132e1edddeedc1b6b270aa2f26210cdc702d96d98ec7da17fb59c278d5.gz";
      r2 = "g4/9p/SHA256E-s9610464321--5827879749cb6587a7e6059155e10d6e78dae0f8b122bda41a6b05aec9b7365e.gz/SHA256E-s9610464321--5827879749cb6587a7e6059155e10d6e78dae0f8b122bda41a6b05aec9b7365e.gz";
    }
    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "k4/5Q/SHA256E-s5343902951--43c9bb9bd7f1a971aec988d0644f7ba6ff3c3ab638210964b7a0053b2fdc91f0.gz/SHA256E-s5343902951--43c9bb9bd7f1a971aec988d0644f7ba6ff3c3ab638210964b7a0053b2fdc91f0.gz";
      r2 = "Xq/f4/SHA256E-s5577320007--bb66f095e27a9df183667252ba3165db7192d784f1d5de489a3707d793f22074.gz/SHA256E-s5577320007--bb66f095e27a9df183667252ba3165db7192d784f1d5de489a3707d793f22074.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SOL2_0049";
  }
