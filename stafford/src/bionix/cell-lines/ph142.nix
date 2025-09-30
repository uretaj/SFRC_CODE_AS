with import ../milton-slurm.nix {}; let
  samples = [
    {
      site = "PH142";
      pdx = false;
      r1 = "5P/PP/SHA256E-s32247357060--5433c5664238fb53a73ed4573c511b2077a77ada113d110031d145ff54b571d4.gz/SHA256E-s32247357060--5433c5664238fb53a73ed4573c511b2077a77ada113d110031d145ff54b571d4.gz";
      r2 = "zV/87/SHA256E-s46903854360--ac687697d5fc36ce6630c8a5d060a9c94631a7145c2efe9b8d23aeeb2d9baf4a.gz/SHA256E-s46903854360--ac687697d5fc36ce6630c8a5d060a9c94631a7145c2efe9b8d23aeeb2d9baf4a.gz";
    }
  ];
in
  bionix.callBionix ./pipeline.nix {
    inherit samples;
    name = "PH142";
  }
