with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1.23";
      class = "tumours";
      pdx = false;
      r1 = "27/Gg/SHA256E-s5253966833--928fa807239e439fcdd65b22a6e8f4428cca38cfec79659e7b81a82b14a1ec13.gz/SHA256E-s5253966833--928fa807239e439fcdd65b22a6e8f4428cca38cfec79659e7b81a82b14a1ec13.gz";
      r2 = "5x/90/SHA256E-s5338470168--65418e91fb3d45aaaaa6df27bc957de39fb262c116ecd684ee00928ebe1063c4.gz/SHA256E-s5338470168--65418e91fb3d45aaaaa6df27bc957de39fb262c116ecd684ee00928ebe1063c4.gz";
    }

    {
      site = "1.23";
      class = "tumours";
      pdx = false;
      r1 = "66/Fx/SHA256E-s5385506900--407eeda7e871027200b32bc82d30364d5f052ff6c4e7dbc4e04aa5c680f56a8a.gz/SHA256E-s5385506900--407eeda7e871027200b32bc82d30364d5f052ff6c4e7dbc4e04aa5c680f56a8a.gz";
      r2 = "5W/4X/SHA256E-s5491636071--a7127f11a838d8854d4cec9b4f1a9283bb6a0d7f3e0b6dbc876a062db81b65b4.gz/SHA256E-s5491636071--a7127f11a838d8854d4cec9b4f1a9283bb6a0d7f3e0b6dbc876a062db81b65b4.gz";
    }

    {
      site = "1.23";
      class = "tumours";
      pdx = false;
      r1 = "Pw/1Q/SHA256E-s5334162764--e10eed8fe53fa409f3913d8155b1cb3953e5f67024ab38f6615154f8a8e7a781.gz/SHA256E-s5334162764--e10eed8fe53fa409f3913d8155b1cb3953e5f67024ab38f6615154f8a8e7a781.gz";
      r2 = "0f/gW/SHA256E-s5446560370--aadedab7cd637f5f396a000129be5c79798491ac0b013c181c5497acdf7d7229.gz/SHA256E-s5446560370--aadedab7cd637f5f396a000129be5c79798491ac0b013c181c5497acdf7d7229.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      umi = false;
      r1 = "83/7p/SHA256E-s40643653224--a31d025934f997768ffeb513692572980c6ffde89248e3499d999cb7bc74e883.gz/SHA256E-s40643653224--a31d025934f997768ffeb513692572980c6ffde89248e3499d999cb7bc74e883.gz";
      r2 = "kk/v3/SHA256E-s43575382293--c05db2ac47ba3876cd2e26ecc7a6ca6a6308e85b9b7bad8c1707545668533d15.gz/SHA256E-s43575382293--c05db2ac47ba3876cd2e26ecc7a6ca6a6308e85b9b7bad8c1707545668533d15.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SFRC01520-twist-test";
    capture = TwistV2HR;
  }
