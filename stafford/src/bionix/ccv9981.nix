with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "x1/66/SHA256E-s4210161913--c71bea5854bef99e220340603db2d8ab809548e77eec94e560405dd89b971c62.gz/SHA256E-s4210161913--c71bea5854bef99e220340603db2d8ab809548e77eec94e560405dd89b971c62.gz";
      r2 = "3W/01/SHA256E-s4216035070--2b8804d717dc3808ae102bf91ac1762688e670bf9cad4f066915a02904766dc6.gz/SHA256E-s4216035070--2b8804d717dc3808ae102bf91ac1762688e670bf9cad4f066915a02904766dc6.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV9981";
  }
