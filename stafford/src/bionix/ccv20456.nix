with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "wf/Mg/SHA256E-s1807315100--9fb18f74c7a1675ac2de9641940815d4875f7df4b5528b8443a510f608c1b2e8.gz/SHA256E-s1807315100--9fb18f74c7a1675ac2de9641940815d4875f7df4b5528b8443a510f608c1b2e8.gz";
      r2 = "9v/Pw/SHA256E-s1829450706--1f7646adf317f1a26903fe071392ada6da2f58e82d99bee69e5ccb1e3bb68bba.gz/SHA256E-s1829450706--1f7646adf317f1a26903fe071392ada6da2f58e82d99bee69e5ccb1e3bb68bba.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV20456";
  }
