with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "XK/QQ/SHA256E-s2805165203--d23d66eae7bdc46916272848f65e5746d209f7a10c75c0e08a93bdfb2fcf4c21.gz/SHA256E-s2805165203--d23d66eae7bdc46916272848f65e5746d209f7a10c75c0e08a93bdfb2fcf4c21.gz";
      r2 = "PZ/w0/SHA256E-s2836184211--033bd845c0ff6982dbdcd6ca6f571466a7189dad44cc43a478bbd39eed42d2de.gz/SHA256E-s2836184211--033bd845c0ff6982dbdcd6ca6f571466a7189dad44cc43a478bbd39eed42d2de.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "96/9j/SHA256E-s2688035409--77a5db314deeae197f6d3e3b77ec436fb98ec5ec5d338c5783f6c8be1ed650c9.gz/SHA256E-s2688035409--77a5db314deeae197f6d3e3b77ec436fb98ec5ec5d338c5783f6c8be1ed650c9.gz";
      r2 = "jw/ZX/SHA256E-s2697125349--e5f915ea9c152cbe642cc044eb4d42c751ee78126f535eca94e22dde4c0663a1.gz/SHA256E-s2697125349--e5f915ea9c152cbe642cc044eb4d42c751ee78126f535eca94e22dde4c0663a1.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV24708";
  }
