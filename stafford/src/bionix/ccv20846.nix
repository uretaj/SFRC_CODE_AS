with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "G9/WQ/SHA256E-s1703527608--2187839cfa8f8fda3e0b5e1b336e97e3756ef8fe5b1e2f57f06a1cd8d378a142.gz/SHA256E-s1703527608--2187839cfa8f8fda3e0b5e1b336e97e3756ef8fe5b1e2f57f06a1cd8d378a142.gz";
      r2 = "86/gG/SHA256E-s1693840730--91917bbbcce1d1928d40a9a548a5df01102f5a91d00092b5034b0318512b56e0.gz/SHA256E-s1693840730--91917bbbcce1d1928d40a9a548a5df01102f5a91d00092b5034b0318512b56e0.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "5q/6Q/SHA256E-s1705111011--bb642256bf2cebf7b5cf7057399ef8041c3c492201fff31a0321bba2f4e8c914.gz/SHA256E-s1705111011--bb642256bf2cebf7b5cf7057399ef8041c3c492201fff31a0321bba2f4e8c914.gz";
      r2 = "gk/xx/SHA256E-s1682467626--a7aceb4a790c3926665d932ee0b6a82568f8e4e9a60c7e1b9e276800b82dfb03.gz/SHA256E-s1682467626--a7aceb4a790c3926665d932ee0b6a82568f8e4e9a60c7e1b9e276800b82dfb03.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV20846";
  }
