with import ../milton-slurm.nix {}; let
  samples = [
    {
      site = "1256S2-24251-CL1";
      pdx = false;
      r1 = "7F/Kz/SHA256E-s42778111991--9fe8a186aef634a592b71bc7e30eff4224bb2ade9f5d8553e0b259e03a98b20e.gz/SHA256E-s42778111991--9fe8a186aef634a592b71bc7e30eff4224bb2ade9f5d8553e0b259e03a98b20e.gz";
      r2 = "Zj/P6/SHA256E-s44861238564--4fc1547ba14359b9e0ff6655a93985769a2f9dd51fb4f72b9753d1cff756c9ee.gz/SHA256E-s44861238564--4fc1547ba14359b9e0ff6655a93985769a2f9dd51fb4f72b9753d1cff756c9ee.gz";
    }
  ];
in
  bionix.callBionix ./pipeline.nix {
    inherit samples;
    name = "ML234053";
  }
