with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "87/PM/SHA256E-s3760528169--58c80e285ed719b0e32e545e1aeb3063f15ecd7397b123f33310a691435d4656.gz/SHA256E-s3760528169--58c80e285ed719b0e32e545e1aeb3063f15ecd7397b123f33310a691435d4656.gz";
      r2 = "xG/6f/SHA256E-s3839212602--d6266e783afedc4d04c652b4f278689416cca253c1b083a50d3b4cccf22093f8.gz/SHA256E-s3839212602--d6266e783afedc4d04c652b4f278689416cca253c1b083a50d3b4cccf22093f8.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV40358";
  }
