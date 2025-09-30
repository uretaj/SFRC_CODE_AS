with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "gz/Z9/SHA256E-s917319791--e20f3628369c4fb741c77890fe4594e77f60318043c0b618e5cf2d2f63443ef0.gz/SHA256E-s917319791--e20f3628369c4fb741c77890fe4594e77f60318043c0b618e5cf2d2f63443ef0.gz";
      r2 = "gJ/PJ/SHA256E-s923045550--f59f009ebc7e28509aaaf8d72fe9d06891b56e24abaee8d92b6677f6d25a306d.gz/SHA256E-s923045550--f59f009ebc7e28509aaaf8d72fe9d06891b56e24abaee8d92b6677f6d25a306d.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV4171";
  }
