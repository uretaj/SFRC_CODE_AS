with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2D";
      class = "tumours";
      pdx = false;
      r1 = "3X/QQ/SHA256E-s3987694720--3815c79143ef741211682e083c2d010d4a978abd3e69ce631d75a9a66e5ff6ef.gz/SHA256E-s3987694720--3815c79143ef741211682e083c2d010d4a978abd3e69ce631d75a9a66e5ff6ef.gz";
      r2 = "Vw/p2/SHA256E-s3974483465--bc36f1588efdc189f719e45f322d86568290264eadb87e78a1345e319bdcf59d.gz/SHA256E-s3974483465--bc36f1588efdc189f719e45f322d86568290264eadb87e78a1345e319bdcf59d.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "K6/9m/SHA256E-s1383119034--6c462cd7f9cd574b9005c441efb920728474abfadb4f562dea0e9efd105aa759.gz/SHA256E-s1383119034--6c462cd7f9cd574b9005c441efb920728474abfadb4f562dea0e9efd105aa759.gz";
      r2 = "85/Jw/SHA256E-s1373884390--185d23cef1e715eeaa973602fa0fbc9e4f33affdb5d78cc757d327b8741cdafa.gz/SHA256E-s1373884390--185d23cef1e715eeaa973602fa0fbc9e4f33affdb5d78cc757d327b8741cdafa.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "j2/ZP/SHA256E-s1404360593--9128373c6425bf1ea91bf207eff89ebbe9468ff63362f385ed3f238c0751d2f4.gz/SHA256E-s1404360593--9128373c6425bf1ea91bf207eff89ebbe9468ff63362f385ed3f238c0751d2f4.gz";
      r2 = "F5/98/SHA256E-s1393493565--a7e96e08ad5f31d140636751796d8b00fba22b03b997d2c87033b3a69cd62c69.gz/SHA256E-s1393493565--a7e96e08ad5f31d140636751796d8b00fba22b03b997d2c87033b3a69cd62c69.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "F4/MM/SHA256E-s1406516330--d5bc90eb13be8b7b0aad05404bcdc6ba12d588efde7bea0a11b63b9c6312d70d.gz/SHA256E-s1406516330--d5bc90eb13be8b7b0aad05404bcdc6ba12d588efde7bea0a11b63b9c6312d70d.gz";
      r2 = "w5/MM/SHA256E-s1390042625--13d3507290d46db1f33d7f93fd9973f40c351996e68d028eb934cf7d61f0b19c.gz/SHA256E-s1390042625--13d3507290d46db1f33d7f93fd9973f40c351996e68d028eb934cf7d61f0b19c.gz";
    }
    {
      site = "2D";
      class = "tumours";
      pdx = false;
      r1 = "Pv/qM/SHA256E-s2914393813--63d640d4ce940b0c71c6705124081610222534f7d74efda86b566792e52e6449.gz/SHA256E-s2914393813--63d640d4ce940b0c71c6705124081610222534f7d74efda86b566792e52e6449.gz";
      r2 = "JQ/jW/SHA256E-s2922352581--57247af25863f78dafb68222df0601f355fdb18a8e06d86a73a3d7e1e4230f02.gz/SHA256E-s2922352581--57247af25863f78dafb68222df0601f355fdb18a8e06d86a73a3d7e1e4230f02.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0065";
    typeHla = true;
    capture = TwistV2HR;
  }
