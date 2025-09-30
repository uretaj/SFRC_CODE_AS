with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "98/1m/SHA256E-s2514587527--d7b22d12a4c09747acb3e5f1faa97f5f590e9c69861fcdb64c1677341a64a457.gz/SHA256E-s2514587527--d7b22d12a4c09747acb3e5f1faa97f5f590e9c69861fcdb64c1677341a64a457.gz";
      r2 = "Qk/2K/SHA256E-s2562349992--040230ccd86a748af5881cbc7f82e602f0249b0c09366c71aec2918a5dc02a62.gz/SHA256E-s2562349992--040230ccd86a748af5881cbc7f82e602f0249b0c09366c71aec2918a5dc02a62.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "X7/j5/SHA256E-s2580851593--0b35ae6943c2f4047118d2285906b313e14b4586f62f038886ae5b28c554369f.gz/SHA256E-s2580851593--0b35ae6943c2f4047118d2285906b313e14b4586f62f038886ae5b28c554369f.gz";
      r2 = "64/m5/SHA256E-s2629565246--6ac78969009e80dd7f338118cb6c0523a807223a3de9c4ea471d74b5b4fed08e.gz/SHA256E-s2629565246--6ac78969009e80dd7f338118cb6c0523a807223a3de9c4ea471d74b5b4fed08e.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV34848";
  }
