with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1O";
      class = "tumours";
      pdx = false;
      r1 = "0p/Wj/SHA256E-s16237849728--a1f1a060fa5f2381bc818776484fb15e9033f42ca76486cb71c78034f72f94d3.gz/SHA256E-s16237849728--a1f1a060fa5f2381bc818776484fb15e9033f42ca76486cb71c78034f72f94d3.gz";
      r2 = "4K/m6/SHA256E-s17376898981--9db466fd75415d5a2ab3cdce6755b33fb5b0be5aab9620adfb7a0fef73dc2b0b.gz/SHA256E-s17376898981--9db466fd75415d5a2ab3cdce6755b33fb5b0be5aab9620adfb7a0fef73dc2b0b.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "W4/j7/SHA256E-s7245383278--b9fa24d46d388c1d9c328c532660a147615b9d46fce68f410f99aa81d66e2bca.gz/SHA256E-s7245383278--b9fa24d46d388c1d9c328c532660a147615b9d46fce68f410f99aa81d66e2bca.gz";
      r2 = "V5/GW/SHA256E-s7904456353--98a8edebe97621adb8accde8d395e4f9c14d32468a8b37c731cc5f3b27fbaea5.gz/SHA256E-s7904456353--98a8edebe97621adb8accde8d395e4f9c14d32468a8b37c731cc5f3b27fbaea5.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SOL2_0125";
  }
