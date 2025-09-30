with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Mv/fP/SHA256E-s1529615604--5d84616083e7157b3842dd22f509f5c08e6583b878de1cfce36b2c5d82510d88.gz/SHA256E-s1529615604--5d84616083e7157b3842dd22f509f5c08e6583b878de1cfce36b2c5d82510d88.gz";
      r2 = "v6/3j/SHA256E-s1539883718--77217c0f05d7086dc5b1f542bea9306ea635abf4210248705611048e6aaaa836.gz/SHA256E-s1539883718--77217c0f05d7086dc5b1f542bea9306ea635abf4210248705611048e6aaaa836.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "m6/42/SHA256E-s1465667799--9030e9df17a1f33e10dcbcfb01df069e30831abbe4de9110dee840ca0b1b4c6d.gz/SHA256E-s1465667799--9030e9df17a1f33e10dcbcfb01df069e30831abbe4de9110dee840ca0b1b4c6d.gz";
      r2 = "3x/fw/SHA256E-s1463434556--2ba938ac3099d4a8b166ed23d82bdf757079440d94e84eb658100f88f35c2da5.gz/SHA256E-s1463434556--2ba938ac3099d4a8b166ed23d82bdf757079440d94e84eb658100f88f35c2da5.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV25777";
  }
