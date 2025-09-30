with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "04/X0/SHA256E-s3484780904--5ee774bc9fc004c8a98ab12a81b708d3113db132447351a5dcbccd728d80541c.gz/SHA256E-s3484780904--5ee774bc9fc004c8a98ab12a81b708d3113db132447351a5dcbccd728d80541c.gz";
      r2 = "wK/Wg/SHA256E-s3501386284--cda6734f862ab3d32609fda6cba8d17f5235e263db9c5f9f5c2a8930c14897c6.gz/SHA256E-s3501386284--cda6734f862ab3d32609fda6cba8d17f5235e263db9c5f9f5c2a8930c14897c6.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV14377";
  }
