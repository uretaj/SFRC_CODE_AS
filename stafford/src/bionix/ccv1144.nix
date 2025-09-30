with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "2z/V5/SHA256E-s4403873712--e32476c34c4680d3af4087cf40a67f222f65b049e510c6e3078ddf92db75a0f7.gz/SHA256E-s4403873712--e32476c34c4680d3af4087cf40a67f222f65b049e510c6e3078ddf92db75a0f7.gz";
      r2 = "0k/84/SHA256E-s4438773006--a891f3ca9a40214a8510987e9be9f035623f4dc22e13d9f6a06dcc64e8525d6b.gz/SHA256E-s4438773006--a891f3ca9a40214a8510987e9be9f035623f4dc22e13d9f6a06dcc64e8525d6b.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV1144";
  }
