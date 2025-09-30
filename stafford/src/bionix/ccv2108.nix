with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "3x/jQ/SHA256E-s2876061532--528baf51e22b2553015706b8f139ca75f783a1f61503cfe3b3d0413956f1f68c.gz/SHA256E-s2876061532--528baf51e22b2553015706b8f139ca75f783a1f61503cfe3b3d0413956f1f68c.gz";
      r2 = "m9/20/SHA256E-s2889300026--ac93d8be4f1b363194ee5c226c0c705ff32105a3635a6262553fc2f5e2f586fb.gz/SHA256E-s2889300026--ac93d8be4f1b363194ee5c226c0c705ff32105a3635a6262553fc2f5e2f586fb.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV2108";
  }
