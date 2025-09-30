with import ../milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        octopus.callSomatic = def octopus.callSomatic {fast = true;};
      })
  ];
}; let
  samples = [
    {
      site = "A6C6";
      pdx = false;
      r1 = "WV/jz/SHA256E-s33595047547--3bca99cec809ea3a03a57310542ba7701d407163fdbe12ea0b23d71a212a074d.gz/SHA256E-s33595047547--3bca99cec809ea3a03a57310542ba7701d407163fdbe12ea0b23d71a212a074d.gz";
      r2 = "fP/vw/SHA256E-s35204517161--af687efc8651431add0b3595589ec159c034c4c7d006f0e385bb7f518ea1f351.gz/SHA256E-s35204517161--af687efc8651431add0b3595589ec159c034c4c7d006f0e385bb7f518ea1f351.gz";
    }
    {
      site = "D4A6";
      pdx = false;
      r1 = "wZ/pJ/SHA256E-s30041603519--d6a50bc1a86e33c594a2f88eebe8e6a11af17368baa16d446fd8d8def43cad18.gz/SHA256E-s30041603519--d6a50bc1a86e33c594a2f88eebe8e6a11af17368baa16d446fd8d8def43cad18.gz";
      r2 = "3K/26/SHA256E-s31223218330--e3fae9e416af08d6e54466b91f2c07fde2d14b8d367fe2efe199313b21fd9e9a.gz/SHA256E-s31223218330--e3fae9e416af08d6e54466b91f2c07fde2d14b8d367fe2efe199313b21fd9e9a.gz";
    }
  ];
in
  bionix.callBionix ./pipeline.nix {
    inherit samples;
    name = "PARP1";
    germline = let
      sra = sraToFastQ {} (fetchSRA {} {
        id = "SRR24270897";
        sha256 = "sha256-bGs0LaEefMlsowExOdE0aYDTW2yfuuquVrnhZxy1dQQ=";
      });
    in {
      input1 = sra;
      input2 = sra.pair;
    };
  }
