with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2F";
      class = "tumours";
      pdx = false;
      r1 = "kg/pf/SHA256E-s4040308909--1f61871c4f9d2907dbc0a654625fc25f662f0402e7e3f2b6450f93172b295bd0.gz/SHA256E-s4040308909--1f61871c4f9d2907dbc0a654625fc25f662f0402e7e3f2b6450f93172b295bd0.gz";
      r2 = "8J/g1/SHA256E-s4099862597--43cdb8388510e344cee184308b3032379133ea0b7dda88790ae58f47f179a489.gz/SHA256E-s4099862597--43cdb8388510e344cee184308b3032379133ea0b7dda88790ae58f47f179a489.gz";
    }

    {
      site = "2F";
      class = "tumours";
      pdx = false;
      r1 = "4K/Vz/SHA256E-s4109541337--1174ccd4eaef807695b9e10d2e2a66a14a981cc596c61fc1c6531b120ad0f714.gz/SHA256E-s4109541337--1174ccd4eaef807695b9e10d2e2a66a14a981cc596c61fc1c6531b120ad0f714.gz";
      r2 = "QG/Wg/SHA256E-s4185322730--10e8bcb19ccf8a1d9fd65bc16116a657c5f6cc80aadce7dee5d13d7fbfb8135a.gz/SHA256E-s4185322730--10e8bcb19ccf8a1d9fd65bc16116a657c5f6cc80aadce7dee5d13d7fbfb8135a.gz";
    }

    {
      site = "2F";
      class = "tumours";
      pdx = false;
      r1 = "5j/2j/SHA256E-s4085014858--ce2c88cee897f1f3c667e7569154c8511df2b7434dbcabbb1cd24ad424c3eb6b.gz/SHA256E-s4085014858--ce2c88cee897f1f3c667e7569154c8511df2b7434dbcabbb1cd24ad424c3eb6b.gz";
      r2 = "W0/VP/SHA256E-s4165734163--e4ba3ffbe94a1ff84386287e914a8dd917fc18251c1d282f4a211d263c633a40.gz/SHA256E-s4165734163--e4ba3ffbe94a1ff84386287e914a8dd917fc18251c1d282f4a211d263c633a40.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      umi = false;
      r1 = "11/7g/SHA256E-s50978782264--eaa3156a3da3c38233502b93037c10b8b1d2d0c97d73b9c132701f54f78887b4.gz/SHA256E-s50978782264--eaa3156a3da3c38233502b93037c10b8b1d2d0c97d73b9c132701f54f78887b4.gz";
      r2 = "QQ/zX/SHA256E-s52378707444--15ab8e54efd05551d68f3d2588ff708cafb801599bf7e85dbff34c6d269d8e45.gz/SHA256E-s52378707444--15ab8e54efd05551d68f3d2588ff708cafb801599bf7e85dbff34c6d269d8e45.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SFRC01535-twist-test";
    capture = TwistV2HR;
  }
