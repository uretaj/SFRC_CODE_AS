with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "gx/f8/SHA256E-s4354340598--d2cadf746ca0c0856477b9e4afa1d2a38e0f2764f3e98ce7a1de118ecd1b7849.gz/SHA256E-s4354340598--d2cadf746ca0c0856477b9e4afa1d2a38e0f2764f3e98ce7a1de118ecd1b7849.gz";
      r2 = "gM/X0/SHA256E-s4451592043--d559c7f181469e1223521f5105de7f8d0179cf71687f39826d81d02de3cc7bfe.gz/SHA256E-s4451592043--d559c7f181469e1223521f5105de7f8d0179cf71687f39826d81d02de3cc7bfe.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "vZ/vg/SHA256E-s4412377746--13dd505133ff364288ecbe11235eda5433f88d2b1ee54140b34b62ccddab0c00.gz/SHA256E-s4412377746--13dd505133ff364288ecbe11235eda5433f88d2b1ee54140b34b62ccddab0c00.gz";
      r2 = "9F/JV/SHA256E-s4511404004--04114d473897684cae4c44988fd38ec5533c7ad2050b472e7924d3a21c816a56.gz/SHA256E-s4511404004--04114d473897684cae4c44988fd38ec5533c7ad2050b472e7924d3a21c816a56.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV30192";
  }
