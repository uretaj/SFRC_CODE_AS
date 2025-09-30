with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "3V/wJ/SHA256E-s3050717331--3ba7d4f929c8de000dc759496a0385f818d1260e7c372c55c612f14912051569.gz/SHA256E-s3050717331--3ba7d4f929c8de000dc759496a0385f818d1260e7c372c55c612f14912051569.gz";
      r2 = "0Q/KX/SHA256E-s3073353800--c5fd475a74a42f9c54c4e26127c62949e05809eed1a3925e560b08d742a817f8.gz/SHA256E-s3073353800--c5fd475a74a42f9c54c4e26127c62949e05809eed1a3925e560b08d742a817f8.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "WJ/7w/SHA256E-s2901662238--554a76952e7946ddc26dc0d89f7d4f41e80efcc3d3ccf00eed32c9dea41f7465.gz/SHA256E-s2901662238--554a76952e7946ddc26dc0d89f7d4f41e80efcc3d3ccf00eed32c9dea41f7465.gz";
      r2 = "zM/98/SHA256E-s2901005589--34fab369e6312441409e15b30e3ce93e4d5ed71478b0af610a689b313d7154c1.gz/SHA256E-s2901005589--34fab369e6312441409e15b30e3ce93e4d5ed71478b0af610a689b313d7154c1.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV28515";
  }
