with import ../milton-slurm.nix {}; let
  samples = [
    {
      site = "1448S1-25933-CL1";
      pdx = false;
      r1 = "qq/WK/SHA256E-s41802200303--4aacc3d76d68401011b83acfa5fb032385af0a9347e45ddadd9a18cd18505cae.gz/SHA256E-s41802200303--4aacc3d76d68401011b83acfa5fb032385af0a9347e45ddadd9a18cd18505cae.gz";
      r2 = "vk/vG/SHA256E-s43917150514--ae73d7b0a2d916ca5e9a6ef1353c612a82bd8fa092bef82ee627ac98f5687fa5.gz/SHA256E-s43917150514--ae73d7b0a2d916ca5e9a6ef1353c612a82bd8fa092bef82ee627ac98f5687fa5.gz";
    }
  ];
in
  bionix.callBionix ./pipeline.nix {
    inherit samples;
    name = "ML234054";
  }
