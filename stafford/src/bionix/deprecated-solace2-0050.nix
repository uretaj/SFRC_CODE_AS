with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "V6/W0/SHA256E-s13213936655--a4ef14db52af382f6cd92e4b81794ee13fbe930a4e9009853063bedebf80317f.gz/SHA256E-s13213936655--a4ef14db52af382f6cd92e4b81794ee13fbe930a4e9009853063bedebf80317f.gz";
      r2 = "52/kp/SHA256E-s13705295628--1b1cf457e6cd49fc7820df2b1f5001550aecaae440f7f3045861e5f108c2ed8b.gz/SHA256E-s13705295628--1b1cf457e6cd49fc7820df2b1f5001550aecaae440f7f3045861e5f108c2ed8b.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Jv/xK/SHA256E-s5454275205--798ba9ddd6cf2269b0dd3cfd15d6755ca3d5f324a3b4319ff94447c252651d75.gz/SHA256E-s5454275205--798ba9ddd6cf2269b0dd3cfd15d6755ca3d5f324a3b4319ff94447c252651d75.gz";
      r2 = "qp/wx/SHA256E-s5651359656--6fb13365e61c23452f177f0ba37ea288ef46cd9b0884023905c3497c17d29491.gz/SHA256E-s5651359656--6fb13365e61c23452f177f0ba37ea288ef46cd9b0884023905c3497c17d29491.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    name = "SOL2_0050";
    capture = CREv2;
  }
