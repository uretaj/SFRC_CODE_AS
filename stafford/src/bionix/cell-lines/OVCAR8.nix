with import ../milton-slurm.nix {}; let
  samples = [
    {
      site = "OVCAR8-E2";
      pdx = false;
      r1 = "Jf/vP/SHA256E-s1207875866--f563f94a2a64a3e5f739d2624e3b6034a8deaa4909732f79ac419b6602e05686.gz/SHA256E-s1207875866--f563f94a2a64a3e5f739d2624e3b6034a8deaa4909732f79ac419b6602e05686.gz";
      r2 = "9f/Vk/SHA256E-s1266522280--fd6aa0b112637cbda178a737200ec6d9f396b5c73366b37ec377a8222bbc0f3d.gz/SHA256E-s1266522280--fd6aa0b112637cbda178a737200ec6d9f396b5c73366b37ec377a8222bbc0f3d.gz";
    }
    {
      site = "OVCAR8-E2";
      pdx = false;
      r1 = "5M/pg/SHA256E-s3388702737--3680ddb406afab8b2d24b34629442fc017a387726f09e4990cf1afd2ca7ab30a.gz/SHA256E-s3388702737--3680ddb406afab8b2d24b34629442fc017a387726f09e4990cf1afd2ca7ab30a.gz";
      r2 = "8q/jJ/SHA256E-s3524347621--bf88ef19c32b0a37a7a6fe3572d798864851632d125a3054ae5930af830139fb.gz/SHA256E-s3524347621--bf88ef19c32b0a37a7a6fe3572d798864851632d125a3054ae5930af830139fb.gz";
    }
    {
      site = "OVCAR8";
      pdx = false;
      r1 = "7Z/WV/SHA256E-s5425046093--b80f63efa0040b4ecdb3fc705bef1d45239d36e57d6c3068d0a0004a2411b812.gz/SHA256E-s5425046093--b80f63efa0040b4ecdb3fc705bef1d45239d36e57d6c3068d0a0004a2411b812.gz";
      r2 = "2V/9V/SHA256E-s5592507526--a3762a59b6e2c450ba439515b38b5b9c7aaf1ae8524e02c5ca1b320db2b50a78.gz/SHA256E-s5592507526--a3762a59b6e2c450ba439515b38b5b9c7aaf1ae8524e02c5ca1b320db2b50a78.gz";
    }
    {
      site = "OVCAR8-E1";
      pdx = false;
      r1 = "3w/V0/SHA256E-s4567069802--3c644c2e8691f1d0b814fed12034309aa1080c4acb8b082a7b60b92dcc3e6cb6.gz/SHA256E-s4567069802--3c644c2e8691f1d0b814fed12034309aa1080c4acb8b082a7b60b92dcc3e6cb6.gz";
      r2 = "pf/6Z/SHA256E-s4692708422--dd4f50f6d7421c50d34947f42d226120f1543049eed55daebd5ed160fe5f2f8f.gz/SHA256E-s4692708422--dd4f50f6d7421c50d34947f42d226120f1543049eed55daebd5ed160fe5f2f8f.gz";
    }
  ];
in
  bionix.callBionix ./pipeline.nix {
    inherit samples;
    name = "OVCAR8";
    capture = TwistVCGS;
  }
