with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      umi = false;
      r1 = "Wq/71/SHA256E-s47030736911--cf99f04d05117a6246b7af2c987f2ece835c5e3871b7db1cafac818f637f64a4.gz/SHA256E-s47030736911--cf99f04d05117a6246b7af2c987f2ece835c5e3871b7db1cafac818f637f64a4.gz";
      r2 = "13/F2/SHA256E-s49746221494--8cfa3cf1eff071abfbeafd064c935c13e1fcb16c00af93f65ed99fb882feee41.gz/SHA256E-s49746221494--8cfa3cf1eff071abfbeafd064c935c13e1fcb16c00af93f65ed99fb882feee41.gz";
    }
    {
      site = "17B";
      class = "tumours";
      pdx = false;
      r1 = "1F/mM/SHA256E-s7409804596--23a84db263c497719bab0ff054164c7b28808a23eca9c610aa6f3febe35d73e5.gz/SHA256E-s7409804596--23a84db263c497719bab0ff054164c7b28808a23eca9c610aa6f3febe35d73e5.gz";
      r2 = "74/6m/SHA256E-s7657214414--177833cedd09eb8c3ee91aab5116773f5f181cd3849a76db0841b0c44bdb70ae.gz/SHA256E-s7657214414--177833cedd09eb8c3ee91aab5116773f5f181cd3849a76db0841b0c44bdb70ae.gz";
    }

    {
      site = "17B";
      class = "tumours";
      pdx = false;
      r1 = "4F/1Z/SHA256E-s7592264054--91157d4cf5edeb80db728f3b8f9ae44e782bf008c78b01d6cabe064717214582.gz/SHA256E-s7592264054--91157d4cf5edeb80db728f3b8f9ae44e782bf008c78b01d6cabe064717214582.gz";
      r2 = "QF/P9/SHA256E-s7875099943--c6f1839d7285480d263601f7a93af0957c8fef999b9adf294805f849c21d7f7e.gz/SHA256E-s7875099943--c6f1839d7285480d263601f7a93af0957c8fef999b9adf294805f849c21d7f7e.gz";
    }

    {
      site = "17B";
      class = "tumours";
      pdx = false;
      r1 = "J6/Qp/SHA256E-s7522243202--97d878915759c9e6a6756259e8a4775d6fa106b060aa08880f5d0e726cdf3bac.gz/SHA256E-s7522243202--97d878915759c9e6a6756259e8a4775d6fa106b060aa08880f5d0e726cdf3bac.gz";
      r2 = "VZ/M8/SHA256E-s7813225023--383a5a00ae4d057e086dd0901ec1d5d11aaf71b4f2b91783f1b820ead6306f79.gz/SHA256E-s7813225023--383a5a00ae4d057e086dd0901ec1d5d11aaf71b4f2b91783f1b820ead6306f79.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SFRC01059-twist-test";
    capture = TwistV2HR;
  }
