with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1P-1U";
      class = "tumours";
      pdx = false;
      r1 = "XQ/F8/SHA256E-s2462898886--6a656d3f716a7f5448c3f3114c9e0cdff79108c429e99bbd31faaf43c14288ca.gz/SHA256E-s2462898886--6a656d3f716a7f5448c3f3114c9e0cdff79108c429e99bbd31faaf43c14288ca.gz";
      r2 = "8M/1K/SHA256E-s2500264499--117515646d6921a8acdfcd629e8884abb35b99f9c969507434f13496bed356d3.gz/SHA256E-s2500264499--117515646d6921a8acdfcd629e8884abb35b99f9c969507434f13496bed356d3.gz";
    }

    {
      site = "1P-1U";
      class = "tumours";
      pdx = false;
      r1 = "VZ/K0/SHA256E-s2458868521--33b68231da24a1787fd1bd88a252720c98230bc7e489fd8110c366e1ccd5fa41.gz/SHA256E-s2458868521--33b68231da24a1787fd1bd88a252720c98230bc7e489fd8110c366e1ccd5fa41.gz";
      r2 = "2W/7z/SHA256E-s2484257325--24c7dfe2fce6c2da0ffd6edb3931f35ca8346edfc31d7bcb556714efeaeac9dc.gz/SHA256E-s2484257325--24c7dfe2fce6c2da0ffd6edb3931f35ca8346edfc31d7bcb556714efeaeac9dc.gz";
    }

    {
      site = "1P-1U";
      class = "tumours";
      pdx = false;
      r1 = "kz/Mj/SHA256E-s2458767634--0e729d66e3520cb787ff247f812269fa2197b657b87b7cdb8216043923e9dd4a.gz/SHA256E-s2458767634--0e729d66e3520cb787ff247f812269fa2197b657b87b7cdb8216043923e9dd4a.gz";
      r2 = "Vm/PV/SHA256E-s2477868984--86a87a80b79dbbbcdbfa646bcac666ac6aeb0c29a34daf721b9e7e25e6787737.gz/SHA256E-s2477868984--86a87a80b79dbbbcdbfa646bcac666ac6aeb0c29a34daf721b9e7e25e6787737.gz";
    }

    {
      site = "1P-1U";
      class = "tumours";
      pdx = false;
      r1 = "M0/0v/SHA256E-s2454268954--b9f1f56392013a0b82fd9c2767b1a431920237743e28232ccdd920a099959fe1.gz/SHA256E-s2454268954--b9f1f56392013a0b82fd9c2767b1a431920237743e28232ccdd920a099959fe1.gz";
      r2 = "85/QG/SHA256E-s2473564929--4f6e98549a8eeb35f7070451f69345ccb04ffe71f3b48741345f2e3f8f4512f1.gz/SHA256E-s2473564929--4f6e98549a8eeb35f7070451f69345ccb04ffe71f3b48741345f2e3f8f4512f1.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "q6/zx/SHA256E-s722253485--d505f83e6e46d337723fd33233d9e3b5e9d621807880e6db1ba940b2c981ac4c.gz/SHA256E-s722253485--d505f83e6e46d337723fd33233d9e3b5e9d621807880e6db1ba940b2c981ac4c.gz";
      r2 = "pf/m8/SHA256E-s726487570--f4e937bd139472aa36352766f5099e5cdead8dfebc8fc01472e432e30a0a064f.gz/SHA256E-s726487570--f4e937bd139472aa36352766f5099e5cdead8dfebc8fc01472e432e30a0a064f.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "jG/z3/SHA256E-s726891044--04d0fed2656a79e3d39abb70e117a0d2e1423e485418fb707bb1bed1788a76af.gz/SHA256E-s726891044--04d0fed2656a79e3d39abb70e117a0d2e1423e485418fb707bb1bed1788a76af.gz";
      r2 = "2K/jX/SHA256E-s730020228--6671ac348d9aa23759b5b4cb7d005a4641740df54254a1326074cc1ca809848b.gz/SHA256E-s730020228--6671ac348d9aa23759b5b4cb7d005a4641740df54254a1326074cc1ca809848b.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "G4/36/SHA256E-s723423138--2f8e4c84934376232773f815f5e2b40be208e412e1d42248e06f6e3eb1fc94b7.gz/SHA256E-s723423138--2f8e4c84934376232773f815f5e2b40be208e412e1d42248e06f6e3eb1fc94b7.gz";
      r2 = "31/2M/SHA256E-s723489223--7991a11b5a0ec97e23f976690acaa54d58aad36e953bf5b1fc65366a175e5229.gz/SHA256E-s723489223--7991a11b5a0ec97e23f976690acaa54d58aad36e953bf5b1fc65366a175e5229.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0041";
    typeHla = true;
    capture = TwistV2HR;
  }
