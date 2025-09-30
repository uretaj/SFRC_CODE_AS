with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "k6/7K/SHA256E-s2637291290--f8aa2038f5327c9f0ea4449e48b702ecdf8a8782b9c2af4c362d86e147b33710.gz/SHA256E-s2637291290--f8aa2038f5327c9f0ea4449e48b702ecdf8a8782b9c2af4c362d86e147b33710.gz";
      r2 = "Wq/j5/SHA256E-s2645412451--f01980063225ece4741c17fcb19628be81c4c274b73ce06118e2e6db534ac7f2.gz/SHA256E-s2645412451--f01980063225ece4741c17fcb19628be81c4c274b73ce06118e2e6db534ac7f2.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV4747";
  }
