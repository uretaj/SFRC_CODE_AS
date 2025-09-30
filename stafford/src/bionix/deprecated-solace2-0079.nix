with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "D3";
      class = "tumours";
      pdx = false;
      r1 = "m5/5p/SHA256E-s11504152866--6c75d3ed7ef1413687bfd3aa64001f31efb9522b0caa9b49cea0909d871c7dde.gz/SHA256E-s11504152866--6c75d3ed7ef1413687bfd3aa64001f31efb9522b0caa9b49cea0909d871c7dde.gz";
      r2 = "F0/Km/SHA256E-s11562211758--95a50b196e72878c3e8c8b5364f2d4f63433acb4573901549ed9794decd26b5a.gz/SHA256E-s11562211758--95a50b196e72878c3e8c8b5364f2d4f63433acb4573901549ed9794decd26b5a.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "W3/1m/SHA256E-s5826312282--d99e349c9b0a83d2ab1a709498fd16dfd8c8e5f4b3f25496140a17a9623f824e.gz/SHA256E-s5826312282--d99e349c9b0a83d2ab1a709498fd16dfd8c8e5f4b3f25496140a17a9623f824e.gz";
      r2 = "10/wm/SHA256E-s5984621932--a44981c32616519ae1bd04111ce35996d1631bd3c60c6ae59cbd278abc67cae1.gz/SHA256E-s5984621932--a44981c32616519ae1bd04111ce35996d1631bd3c60c6ae59cbd278abc67cae1.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SOL2_0079";
  }
