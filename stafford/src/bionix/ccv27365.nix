with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "GG/w8/SHA256E-s2389316656--e16cfaecb1413250c66a845182da2c7da15cb8969503e8e341ce5563980363e9.gz/SHA256E-s2389316656--e16cfaecb1413250c66a845182da2c7da15cb8969503e8e341ce5563980363e9.gz";
      r2 = "86/Fq/SHA256E-s2399384072--79a60d7210c39b330e333d69b3639764e357c41817645a1a20ff8c80dca6d044.gz/SHA256E-s2399384072--79a60d7210c39b330e333d69b3639764e357c41817645a1a20ff8c80dca6d044.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "7v/W1/SHA256E-s2289856984--da36a9114e20f7704c71b102653fc00118160662501fe1d8868b8448f0d8b04b.gz/SHA256E-s2289856984--da36a9114e20f7704c71b102653fc00118160662501fe1d8868b8448f0d8b04b.gz";
      r2 = "8K/4M/SHA256E-s2282709770--cd1bb40f70ea1cfa2947551499efabc502bcd106da74f8e1a0d4891987e226e8.gz/SHA256E-s2282709770--cd1bb40f70ea1cfa2947551499efabc502bcd106da74f8e1a0d4891987e226e8.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV27365";
  }
