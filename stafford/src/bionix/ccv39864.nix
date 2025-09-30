with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "gm/8M/SHA256E-s2624016447--29f635400279165e61143e0c23ef311c0bf6937752221cb933454451e098c77b.gz/SHA256E-s2624016447--29f635400279165e61143e0c23ef311c0bf6937752221cb933454451e098c77b.gz";
      r2 = "03/gJ/SHA256E-s2680846580--db90d8bef506b0ef112adb7f1bede8526c8d464a2245e62fc3cb738cc0343d3c.gz/SHA256E-s2680846580--db90d8bef506b0ef112adb7f1bede8526c8d464a2245e62fc3cb738cc0343d3c.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV39864";
  }
