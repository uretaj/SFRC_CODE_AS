with import ../milton-slurm.nix {}; let
  samples = [
    {
      site = "1256-S4-CL1";
      pdx = false;
      r1 = "6j/Fq/SHA256E-s27790132600--f4878decce67f79b4d933bd0155da6cbe167ba3ac99aea1725b65c0fa9fdcf74.gz/SHA256E-s27790132600--f4878decce67f79b4d933bd0155da6cbe167ba3ac99aea1725b65c0fa9fdcf74.gz";
      r2 = "2Z/MK/SHA256E-s28945211730--fd48489959b356861a6a5a106b0c71b9f13d90678802865b59eb24dc906b4f3c.gz/SHA256E-s28945211730--fd48489959b356861a6a5a106b0c71b9f13d90678802865b59eb24dc906b4f3c.gz";
    }
  ];
in
  bionix.callBionix ./pipeline.nix {
    inherit samples;
    name = "ML234096";
  }
