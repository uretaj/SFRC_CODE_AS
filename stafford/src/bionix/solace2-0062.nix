with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1.1";
      class = "tumours";
      pdx = false;
      r1 = "kF/m2/SHA256E-s8915938623--7bd04a1207d53c715edf9649064001f718044a1881e124510df3f91f91dd07bd.gz/SHA256E-s8915938623--7bd04a1207d53c715edf9649064001f718044a1881e124510df3f91f91dd07bd.gz";
      r2 = "qm/mz/SHA256E-s8908203467--5daec1c9482f7b648537cf9c2512388bf7a72bccb7f01f900c8419fe14b74070.gz/SHA256E-s8908203467--5daec1c9482f7b648537cf9c2512388bf7a72bccb7f01f900c8419fe14b74070.gz";
    }
    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "XJ/fF/SHA256E-s1330724903--3da86f7d47bbf53e37903acf3249b19198fca83b94c5b7604e989acd03245660.gz/SHA256E-s1330724903--3da86f7d47bbf53e37903acf3249b19198fca83b94c5b7604e989acd03245660.gz";
      r2 = "wP/Q0/SHA256E-s1329720981--324bf3b4c0fa854d76d9151a0193ace764175178486cf769db67df8026861878.gz/SHA256E-s1329720981--324bf3b4c0fa854d76d9151a0193ace764175178486cf769db67df8026861878.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Fm/ZV/SHA256E-s1345975889--d9334adb616c07244a7ea7918109b8ec3e4d7c81f547e7941c0d60c29edcd0b0.gz/SHA256E-s1345975889--d9334adb616c07244a7ea7918109b8ec3e4d7c81f547e7941c0d60c29edcd0b0.gz";
      r2 = "xQ/05/SHA256E-s1343131141--d061db4cf50c7d486106013c060c1734c0d57ec31d5f2df30693f972f7e72b80.gz/SHA256E-s1343131141--d061db4cf50c7d486106013c060c1734c0d57ec31d5f2df30693f972f7e72b80.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "vX/17/SHA256E-s1345456363--374f4dffddbeb01ccfdc488e600a903dabcded9e93dd8cec433b361be71400c9.gz/SHA256E-s1345456363--374f4dffddbeb01ccfdc488e600a903dabcded9e93dd8cec433b361be71400c9.gz";
      r2 = "5p/wg/SHA256E-s1336957050--0b359f5a45a865b9fd52c5771761714d49d121ec7edc2ab619ba598c8ee59daf.gz/SHA256E-s1336957050--0b359f5a45a865b9fd52c5771761714d49d121ec7edc2ab619ba598c8ee59daf.gz";
    }
    {
      site = "1.1";
      class = "tumours";
      pdx = false;
      r1 = "w1/ZM/SHA256E-s7466744914--7c9c8b426e92bb738b8e236a91afd3a70e016d1eb010b6ada8d0ac8a1c4c1a62.gz/SHA256E-s7466744914--7c9c8b426e92bb738b8e236a91afd3a70e016d1eb010b6ada8d0ac8a1c4c1a62.gz";
      r2 = "kG/vk/SHA256E-s7466606330--ac4918d51479fe220ac99392001038aeb4bbb09035ee8ae9dff7f8d95c1d299e.gz/SHA256E-s7466606330--ac4918d51479fe220ac99392001038aeb4bbb09035ee8ae9dff7f8d95c1d299e.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0062";
    typeHla = true;
    capture = TwistV2HR;
  }
