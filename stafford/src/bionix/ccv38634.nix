with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "1w/gZ/SHA256E-s3562943715--a5f8b5520a8d53632d40a23cc08d9099bf4cb89113a4c30192395ca33ebe9b17.gz/SHA256E-s3562943715--a5f8b5520a8d53632d40a23cc08d9099bf4cb89113a4c30192395ca33ebe9b17.gz";
      r2 = "2v/xp/SHA256E-s3652166924--aad8c5bb3a60a7abb5be7719706d1f9108c9b7212a505c1991fde3be285158a9.gz/SHA256E-s3652166924--aad8c5bb3a60a7abb5be7719706d1f9108c9b7212a505c1991fde3be285158a9.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV38634";
  }
