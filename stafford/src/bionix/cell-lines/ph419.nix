with import ../milton-slurm.nix {}; let
  samples = [
    {
      site = "PH419";
      pdx = false;
      r1 = "WV/jz/SHA256E-s33595047547--3bca99cec809ea3a03a57310542ba7701d407163fdbe12ea0b23d71a212a074d.gz/SHA256E-s33595047547--3bca99cec809ea3a03a57310542ba7701d407163fdbe12ea0b23d71a212a074d.gz";
      r2 = "fP/vw/SHA256E-s35204517161--af687efc8651431add0b3595589ec159c034c4c7d006f0e385bb7f518ea1f351.gz/SHA256E-s35204517161--af687efc8651431add0b3595589ec159c034c4c7d006f0e385bb7f518ea1f351.gz";
    }
  ];
in
  bionix.callBionix ./pipeline.nix {
    inherit samples;
    name = "PH419";
  }
