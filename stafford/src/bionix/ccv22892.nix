with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "j2/9P/SHA256E-s2235235080--a6a1f162edd4fac3644c05d22760d9ba9891ba50ea1d366b3cc271ed4a90c26c.gz/SHA256E-s2235235080--a6a1f162edd4fac3644c05d22760d9ba9891ba50ea1d366b3cc271ed4a90c26c.gz";
      r2 = "J0/ZQ/SHA256E-s2226317890--d89b80103b2a60511371228b1f7101f5f0f6e7d92752611435a416ef9fc5e769.gz/SHA256E-s2226317890--d89b80103b2a60511371228b1f7101f5f0f6e7d92752611435a416ef9fc5e769.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "8f/6f/SHA256E-s2267730442--19d4c2b55dc5081e4a8657299e68781eb9d218f7b7ebb88a353ec872aaeafbc8.gz/SHA256E-s2267730442--19d4c2b55dc5081e4a8657299e68781eb9d218f7b7ebb88a353ec872aaeafbc8.gz";
      r2 = "v4/5G/SHA256E-s2243705190--b845169b0a128d6de3b5600d21507bcafba4e944c9c8a084c8ca0b3dbcf2ee8f.gz/SHA256E-s2243705190--b845169b0a128d6de3b5600d21507bcafba4e944c9c8a084c8ca0b3dbcf2ee8f.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV22892";
  }
