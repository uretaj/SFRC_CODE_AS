with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "p4/Jp/SHA256E-s4289140574--9d65bf3cf5a0dacbeae5acc6d940cdc700a05cad3d1fd7d746dd5f41fb1c7366.gz/SHA256E-s4289140574--9d65bf3cf5a0dacbeae5acc6d940cdc700a05cad3d1fd7d746dd5f41fb1c7366.gz";
      r2 = "58/kq/SHA256E-s4291897095--8e34fc4937d8d8ae9770a5b1ea5da0d442b9002d702d51018b17a1799c94fca5.gz/SHA256E-s4291897095--8e34fc4937d8d8ae9770a5b1ea5da0d442b9002d702d51018b17a1799c94fca5.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV4783";
  }
