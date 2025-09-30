with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B29";
      class = "tumours";
      pdx = false;
      r1 = "6g/kj/SHA256E-s12418914490--782e6e616fb00c54e86f7880f4df8f03fe936aaa2b77535b5c6b5ea769642ca1.gz/SHA256E-s12418914490--782e6e616fb00c54e86f7880f4df8f03fe936aaa2b77535b5c6b5ea769642ca1.gz";
      r2 = "PV/43/SHA256E-s13013235602--f376808c5a3eb175be61839c1576ad8b79064937493a1c41502cb67961cb4576.gz/SHA256E-s13013235602--f376808c5a3eb175be61839c1576ad8b79064937493a1c41502cb67961cb4576.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "73/xF/SHA256E-s6694437943--cc89ef5b60ed818dacb571860f43b6c2adb6e09d3faf94059cb46862f753b1d7.gz/SHA256E-s6694437943--cc89ef5b60ed818dacb571860f43b6c2adb6e09d3faf94059cb46862f753b1d7.gz";
      r2 = "gV/v0/SHA256E-s7172077200--963e23ce1873f856ec678525ddbea88d6b1e02e207a48ef2dffa99bfec96fdd5.gz/SHA256E-s7172077200--963e23ce1873f856ec678525ddbea88d6b1e02e207a48ef2dffa99bfec96fdd5.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SOL2_0133";
  }
