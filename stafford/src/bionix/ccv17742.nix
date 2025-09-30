with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Gf/KP/SHA256E-s7327134860--8f2f822d10da3efcf79acb7e2b9b088df441d0893d35164302513469bc41ff38.gz/SHA256E-s7327134860--8f2f822d10da3efcf79acb7e2b9b088df441d0893d35164302513469bc41ff38.gz";
      r2 = "pq/2z/SHA256E-s7296990628--00f9817003db68c5ec30019807a372974690c138d5babd70dfff920579c7fa09.gz/SHA256E-s7296990628--00f9817003db68c5ec30019807a372974690c138d5babd70dfff920579c7fa09.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV17742";
  }
