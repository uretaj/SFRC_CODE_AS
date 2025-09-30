with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "jq/jp/SHA256E-s1151221510--1f9f63291f3656b0bc33a21190ba15b1a1f8117a8a8de8246a6b22ee77e9cd61.gz/SHA256E-s1151221510--1f9f63291f3656b0bc33a21190ba15b1a1f8117a8a8de8246a6b22ee77e9cd61.gz";
      r2 = "6Q/Q5/SHA256E-s1160483385--506ed68a7b0588a350c653d6c983fc5516e7a0260cdf9f8d66bb5bd0add53d4a.gz/SHA256E-s1160483385--506ed68a7b0588a350c653d6c983fc5516e7a0260cdf9f8d66bb5bd0add53d4a.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "K4/Z3/SHA256E-s1119093374--e81f4f91c4c44235be28aa8a6113151d306f6017dec0f24ca6a8371380a05ccd.gz/SHA256E-s1119093374--e81f4f91c4c44235be28aa8a6113151d306f6017dec0f24ca6a8371380a05ccd.gz";
      r2 = "wP/WP/SHA256E-s1119272551--f3ac021281af4646c55ba1da82a6c63190acd2a4732f8e306da098a6d60bb3b0.gz/SHA256E-s1119272551--f3ac021281af4646c55ba1da82a6c63190acd2a4732f8e306da098a6d60bb3b0.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV20582";
  }
