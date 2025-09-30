with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "vV/59/SHA256E-s3113476359--e6fd0f483fee0c38b81d4252be31cce81ac04ec70a4542fa83bba288e05af776.gz/SHA256E-s3113476359--e6fd0f483fee0c38b81d4252be31cce81ac04ec70a4542fa83bba288e05af776.gz";
      r2 = "W4/f4/SHA256E-s3114849632--47dacb94ba4ad96e7fd8b140aad8861d1668005087263a5e598774b26bbf17a1.gz/SHA256E-s3114849632--47dacb94ba4ad96e7fd8b140aad8861d1668005087263a5e598774b26bbf17a1.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "GX/47/SHA256E-s3060714248--b7aa65f319e36cbebb4cd41835817407c1024b9713251c6410c8fbc8e34cf7c2.gz/SHA256E-s3060714248--b7aa65f319e36cbebb4cd41835817407c1024b9713251c6410c8fbc8e34cf7c2.gz";
      r2 = "vW/59/SHA256E-s3040168382--6884a61b92702af248d0cc35a4083ced45a95202986a9503ef9b5d3eae8c2ab9.gz/SHA256E-s3040168382--6884a61b92702af248d0cc35a4083ced45a95202986a9503ef9b5d3eae8c2ab9.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV23759";
  }
