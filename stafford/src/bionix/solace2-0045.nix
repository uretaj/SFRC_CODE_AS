with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "D3";
      class = "tumours";
      pdx = false;
      r1 = "zK/Kx/SHA256E-s2145191592--1cbfe20c5e651d16ac68d49e369f3f5d97f5daa19c4b2c28943bbea90d1a538d.gz/SHA256E-s2145191592--1cbfe20c5e651d16ac68d49e369f3f5d97f5daa19c4b2c28943bbea90d1a538d.gz";
      r2 = "5M/Pm/SHA256E-s2185113712--e98edd167f59c1ce0bb07f48cc199582307db8ab96e1f0ed7a7bf1e9413096fa.gz/SHA256E-s2185113712--e98edd167f59c1ce0bb07f48cc199582307db8ab96e1f0ed7a7bf1e9413096fa.gz";
    }

    {
      site = "D3";
      class = "tumours";
      pdx = false;
      r1 = "qp/Xk/SHA256E-s2215460061--935aa69d474fa911a798ba4ad16456953262b821c862d650d65eae6017156a6a.gz/SHA256E-s2215460061--935aa69d474fa911a798ba4ad16456953262b821c862d650d65eae6017156a6a.gz";
      r2 = "m7/GJ/SHA256E-s2246404057--8030310ab15ef1775b705110ab74729b88ee1a081022b9016050d6ee7e66a3f6.gz/SHA256E-s2246404057--8030310ab15ef1775b705110ab74729b88ee1a081022b9016050d6ee7e66a3f6.gz";
    }

    {
      site = "D3";
      class = "tumours";
      pdx = false;
      r1 = "GJ/xm/SHA256E-s2198106050--88291989a52e26322092b1a65f8e5c8af104594d99feb7eb46d8f809b1c28537.gz/SHA256E-s2198106050--88291989a52e26322092b1a65f8e5c8af104594d99feb7eb46d8f809b1c28537.gz";
      r2 = "fF/p1/SHA256E-s2223743295--70dd6d3df5345c40ff33293b554c23688480d14559a043af22e23d30fd7084b2.gz/SHA256E-s2223743295--70dd6d3df5345c40ff33293b554c23688480d14559a043af22e23d30fd7084b2.gz";
    }

    {
      site = "D3";
      class = "tumours";
      pdx = false;
      r1 = "k6/FP/SHA256E-s2172289827--b3d706c1158a5d1d34173457aab10a12bdcb1a2d42542e7b775783d2369e58b8.gz/SHA256E-s2172289827--b3d706c1158a5d1d34173457aab10a12bdcb1a2d42542e7b775783d2369e58b8.gz";
      r2 = "Zw/f0/SHA256E-s2197737843--52baf4e0249269981195286d72ea4134be46ef1afa767dba5c16e000f20df261.gz/SHA256E-s2197737843--52baf4e0249269981195286d72ea4134be46ef1afa767dba5c16e000f20df261.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "4f/88/SHA256E-s855803408--dc0c7cc277ceae2491db705677a33e83692115100dc39ed9c169a08c5fbe0637.gz/SHA256E-s855803408--dc0c7cc277ceae2491db705677a33e83692115100dc39ed9c169a08c5fbe0637.gz";
      r2 = "PV/21/SHA256E-s858595579--4d11f73abbf7194c31fc962d528b8b45f98834f1a3cd402f539891fa280dc953.gz/SHA256E-s858595579--4d11f73abbf7194c31fc962d528b8b45f98834f1a3cd402f539891fa280dc953.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "g3/WK/SHA256E-s868254261--80a19ab8f35fa71ab1b605ef7481f8c3daa972b0cc8440e2c2d80a0554ad8720.gz/SHA256E-s868254261--80a19ab8f35fa71ab1b605ef7481f8c3daa972b0cc8440e2c2d80a0554ad8720.gz";
      r2 = "XP/M0/SHA256E-s869792518--ae1b3587b425e9295d8056c7671f847beccff9e24e6647df4fb4d3827e117acb.gz/SHA256E-s869792518--ae1b3587b425e9295d8056c7671f847beccff9e24e6647df4fb4d3827e117acb.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "2X/wM/SHA256E-s870034144--6f228929bcd017edc06ed3eab4fed2c5b16916d73e1d266cd23942582abffb6d.gz/SHA256E-s870034144--6f228929bcd017edc06ed3eab4fed2c5b16916d73e1d266cd23942582abffb6d.gz";
      r2 = "x7/4m/SHA256E-s867720166--f0694a1ad5ff2c1c952a19d5010782525476ea8a156def135ec2dffeef862199.gz/SHA256E-s867720166--f0694a1ad5ff2c1c952a19d5010782525476ea8a156def135ec2dffeef862199.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0045";
    typeHla = true;
    capture = TwistV2HR;
  }
