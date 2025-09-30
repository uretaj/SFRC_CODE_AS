with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "4E";
      class = "tumours";
      pdx = false;
      r1 = "m2/XK/SHA256E-s6714357644--d761a6a92458f35e73ef511e5dafa2142bdb45c5ab0511abbe2859344fc9791c.gz/SHA256E-s6714357644--d761a6a92458f35e73ef511e5dafa2142bdb45c5ab0511abbe2859344fc9791c.gz";
      r2 = "zQ/26/SHA256E-s6692428468--8a24b69a04fac1221a209b5b6e47543dc001874101f3aae6ce6c3b4c1646638d.gz/SHA256E-s6692428468--8a24b69a04fac1221a209b5b6e47543dc001874101f3aae6ce6c3b4c1646638d.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "6Q/Xj/SHA256E-s1512020780--d8c10495ecf2c31441ad2724fb9c0dddb523be1ee5b483df838db355baebd236.gz/SHA256E-s1512020780--d8c10495ecf2c31441ad2724fb9c0dddb523be1ee5b483df838db355baebd236.gz";
      r2 = "12/k3/SHA256E-s1503853595--537e572eea3184f3de87d6ba0d80187f00b7ea51c7c7c28a989fb7e0c604de05.gz/SHA256E-s1503853595--537e572eea3184f3de87d6ba0d80187f00b7ea51c7c7c28a989fb7e0c604de05.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "GJ/FQ/SHA256E-s1529624352--22704534bc6539ad269be5e878bd28e8ecf2032e005f9054350bf9fbe041d76e.gz/SHA256E-s1529624352--22704534bc6539ad269be5e878bd28e8ecf2032e005f9054350bf9fbe041d76e.gz";
      r2 = "4Z/x0/SHA256E-s1519321176--6fb0771e45302e29f72b70d2a2433a935a654250347097e5c4adfee151420fe0.gz/SHA256E-s1519321176--6fb0771e45302e29f72b70d2a2433a935a654250347097e5c4adfee151420fe0.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "zV/68/SHA256E-s1532321690--46d67098bd4a54f6379dd0a41bf349c8710fbd5d2b17e11eaae03e14f56e84b6.gz/SHA256E-s1532321690--46d67098bd4a54f6379dd0a41bf349c8710fbd5d2b17e11eaae03e14f56e84b6.gz";
      r2 = "6P/fw/SHA256E-s1515737353--08d73142fe0ee940a9ded13066637676d5a2e41d2a6fceff3e2a36ec10d46540.gz/SHA256E-s1515737353--08d73142fe0ee940a9ded13066637676d5a2e41d2a6fceff3e2a36ec10d46540.gz";
    }
    {
      site = "4E";
      class = "tumours";
      pdx = false;
      r1 = "z1/02/SHA256E-s4981318909--7255449db2d9450ddf9c44c0d9ced42ac163f1b5b1d74ba4e6a8ae2c5c86e0ed.gz/SHA256E-s4981318909--7255449db2d9450ddf9c44c0d9ced42ac163f1b5b1d74ba4e6a8ae2c5c86e0ed.gz";
      r2 = "p0/zP/SHA256E-s4988245448--c6f0df1c1ba0cc29f4fe80e2c445df822ddda2657e37c64f1ac512412fce7ab8.gz/SHA256E-s4988245448--c6f0df1c1ba0cc29f4fe80e2c445df822ddda2657e37c64f1ac512412fce7ab8.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0067";
    typeHla = true;
    capture = TwistV2HR;
  }
