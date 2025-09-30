with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2B";
      class = "tumours";
      pdx = false;
      r1 = "vK/GZ/SHA256E-s2140642105--42a4bfd50f13d8c38c386ffbe0a2642917f1f0744a4c4a84a7370e36f8dbcc2d.gz/SHA256E-s2140642105--42a4bfd50f13d8c38c386ffbe0a2642917f1f0744a4c4a84a7370e36f8dbcc2d.gz";
      r2 = "79/qK/SHA256E-s2174771882--d4c8c237fdbd5b7660eee7abb0e727154ddae54a460e6e32ce7fffa54e8f8cf9.gz/SHA256E-s2174771882--d4c8c237fdbd5b7660eee7abb0e727154ddae54a460e6e32ce7fffa54e8f8cf9.gz";
    }

    {
      site = "2B";
      class = "tumours";
      pdx = false;
      r1 = "MP/3M/SHA256E-s2132154220--70327bd156780d4b664955c4fb9a7fd7b2a3fd1ecdc118ae49358d277b5de94e.gz/SHA256E-s2132154220--70327bd156780d4b664955c4fb9a7fd7b2a3fd1ecdc118ae49358d277b5de94e.gz";
      r2 = "gv/j6/SHA256E-s2155935376--d608ba6222d82869be12cf767221a5eecc3053127fa9b0ca421e9d1274be9e02.gz/SHA256E-s2155935376--d608ba6222d82869be12cf767221a5eecc3053127fa9b0ca421e9d1274be9e02.gz";
    }

    {
      site = "2B";
      class = "tumours";
      pdx = false;
      r1 = "k8/5k/SHA256E-s2133603848--5d021167dd2717d4ec2830743a0380ab2d365a1da9e8992829062dd219981459.gz/SHA256E-s2133603848--5d021167dd2717d4ec2830743a0380ab2d365a1da9e8992829062dd219981459.gz";
      r2 = "Vj/5P/SHA256E-s2151553756--cb34be392f5cbc9167eac8707bc1c9e26c442d5543348614323986548e94d0d6.gz/SHA256E-s2151553756--cb34be392f5cbc9167eac8707bc1c9e26c442d5543348614323986548e94d0d6.gz";
    }

    {
      site = "2B";
      class = "tumours";
      pdx = false;
      r1 = "44/m2/SHA256E-s2133129993--f13a55628a1705d540284ab72d5d03909924a668dabe0b5572f3b27ea6beaac7.gz/SHA256E-s2133129993--f13a55628a1705d540284ab72d5d03909924a668dabe0b5572f3b27ea6beaac7.gz";
      r2 = "7x/9Z/SHA256E-s2151229664--2578fc44d6a07a6e8d139e1f5bc044f78e46325b5ddc635e6e707435ff884b9f.gz/SHA256E-s2151229664--2578fc44d6a07a6e8d139e1f5bc044f78e46325b5ddc635e6e707435ff884b9f.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "jm/JK/SHA256E-s999632088--67ddcda59493fd4d0727c9f63100232394023d3571dd22136ca674a77b93082f.gz/SHA256E-s999632088--67ddcda59493fd4d0727c9f63100232394023d3571dd22136ca674a77b93082f.gz";
      r2 = "VV/Kk/SHA256E-s1001304303--24ba75b6cb4207384957a4fd7b430b3f629dc8e8c66f4e2d0ada179e9cf4cfc5.gz/SHA256E-s1001304303--24ba75b6cb4207384957a4fd7b430b3f629dc8e8c66f4e2d0ada179e9cf4cfc5.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "7G/V1/SHA256E-s1006765670--a06fe51bffaca7989afb0f2632d8785b248d4542445768ed33123ed7db0e263d.gz/SHA256E-s1006765670--a06fe51bffaca7989afb0f2632d8785b248d4542445768ed33123ed7db0e263d.gz";
      r2 = "4z/mJ/SHA256E-s1006852208--265b5443bdc1a741edf8622343f8c1fcece7cf96f837be71c96bf39319d5cca6.gz/SHA256E-s1006852208--265b5443bdc1a741edf8622343f8c1fcece7cf96f837be71c96bf39319d5cca6.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "50/5m/SHA256E-s1004285046--fa3a25fc8d9aa115aeb5a4e1cc41906dffc6611e9e61406cb23fb4a10b90b866.gz/SHA256E-s1004285046--fa3a25fc8d9aa115aeb5a4e1cc41906dffc6611e9e61406cb23fb4a10b90b866.gz";
      r2 = "WP/VP/SHA256E-s1000260884--413a5f77987102b15324a5c0428be8c7e026c42d5d26d0baf89dea67a165db6d.gz/SHA256E-s1000260884--413a5f77987102b15324a5c0428be8c7e026c42d5d26d0baf89dea67a165db6d.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0114";
    typeHla = true;
    capture = TwistV2HR;
  }
