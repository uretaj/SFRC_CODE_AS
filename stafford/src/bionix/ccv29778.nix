with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "zq/5z/SHA256E-s2188207322--0a7a07fc9a98804e6e371de8888af818808742e7ac136939b2fc5e951545395e.gz/SHA256E-s2188207322--0a7a07fc9a98804e6e371de8888af818808742e7ac136939b2fc5e951545395e.gz";
      r2 = "KQ/GV/SHA256E-s2222875398--c32995122951734d2ed312ec0e0ea802faaacb26bcf2360a711a7a5b164b4ae5.gz/SHA256E-s2222875398--c32995122951734d2ed312ec0e0ea802faaacb26bcf2360a711a7a5b164b4ae5.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Jw/pk/SHA256E-s2214739907--3e1266445a6f4dd544a9e2ec0dd51841791b5d7884d083657b55ad3503e066e6.gz/SHA256E-s2214739907--3e1266445a6f4dd544a9e2ec0dd51841791b5d7884d083657b55ad3503e066e6.gz";
      r2 = "jx/2m/SHA256E-s2249396100--875ffcbad70ebb86ebb5de302784a0a8845bfc74ce595cb4a38d4b50183df3f8.gz/SHA256E-s2249396100--875ffcbad70ebb86ebb5de302784a0a8845bfc74ce595cb4a38d4b50183df3f8.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV29778";
  }
