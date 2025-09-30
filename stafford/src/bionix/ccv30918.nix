with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "PZ/xj/SHA256E-s2119337513--99c778298412bc434f4bade74a9b2388cb07f0a8273b018f1edac958c847fa7e.gz/SHA256E-s2119337513--99c778298412bc434f4bade74a9b2388cb07f0a8273b018f1edac958c847fa7e.gz";
      r2 = "KQ/vZ/SHA256E-s2156067667--6d62687c8c95d0d35500967ed352250917cd406522442f2933955121293b9088.gz/SHA256E-s2156067667--6d62687c8c95d0d35500967ed352250917cd406522442f2933955121293b9088.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Fv/9w/SHA256E-s2127567188--0fdd580757163723166746bb626c3907f982148d8c3671cf4fad42d3082ae332.gz/SHA256E-s2127567188--0fdd580757163723166746bb626c3907f982148d8c3671cf4fad42d3082ae332.gz";
      r2 = "f0/4Z/SHA256E-s2164242496--a4381ddb6363645f15521ed2f6031599501a66198b19825111f0cebe69fcaae5.gz/SHA256E-s2164242496--a4381ddb6363645f15521ed2f6031599501a66198b19825111f0cebe69fcaae5.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV30918";
  }
