with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "germline";
      class = "normals";
      pdx = false;
      r1 = "GV/Q0/SHA256E-s4834278097--6642dd71a277daf4f0a0dac03b658dc0097daa0f8bc29d49f519347c9a5af9c2.gz/SHA256E-s4834278097--6642dd71a277daf4f0a0dac03b658dc0097daa0f8bc29d49f519347c9a5af9c2.gz";
      r2 = "m7/0k/SHA256E-s4556890985--6a535af8ec875106f2bc1353bd83fc95568dc6b5a61c33f91a706baeddc33c02.gz/SHA256E-s4556890985--6a535af8ec875106f2bc1353bd83fc95568dc6b5a61c33f91a706baeddc33c02.gz";
    }

    {
      site = "germline";
      class = "normals";
      pdx = false;
      r1 = "3J/xP/SHA256E-s1884516113--2eacd0f7befe96b7bd08fbf1160b46e1e8483393aa6f22984d55126bc0c64cce.gz/SHA256E-s1884516113--2eacd0f7befe96b7bd08fbf1160b46e1e8483393aa6f22984d55126bc0c64cce.gz";
      r2 = "Fm/79/SHA256E-s1959647662--073b392d3479b705a3c5d1135cc60fd88a5c4d6ee09021deeac161b701fc5f8c.gz/SHA256E-s1959647662--073b392d3479b705a3c5d1135cc60fd88a5c4d6ee09021deeac161b701fc5f8c.gz";
    }

    {
      site = "tumour";
      class = "tumours";
      pdx = false;
      r1 = "Pz/wJ/SHA256E-s14176814107--76e744248e72ed040586bccbe2b3a0b6cec251c3feada03b64938ad9e46558ef.gz/SHA256E-s14176814107--76e744248e72ed040586bccbe2b3a0b6cec251c3feada03b64938ad9e46558ef.gz";
      r2 = "JQ/wk/SHA256E-s12922623463--2816fc07679377f246e332a17a9ad58f7e10e22e2542b8f1bd06e6d2999e1bf5.gz/SHA256E-s12922623463--2816fc07679377f246e332a17a9ad58f7e10e22e2542b8f1bd06e6d2999e1bf5.gz";
    }

    {
      site = "tumour";
      class = "tumours";
      pdx = false;
      r1 = "Qf/31/SHA256E-s6007027571--5d1c488dca5705f73a3e2ce84b25cdbc1deb77fb6ea56308b249ae6f4e92baf5.gz/SHA256E-s6007027571--5d1c488dca5705f73a3e2ce84b25cdbc1deb77fb6ea56308b249ae6f4e92baf5.gz";
      r2 = "Zv/zF/SHA256E-s6148311824--98fe49628f67b3fca4c9df1a2fd0c792ebebc7c1d56f2d569446a69a7d4991fc.gz/SHA256E-s6148311824--98fe49628f67b3fca4c9df1a2fd0c792ebebc7c1d56f2d569446a69a7d4991fc.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = true;
    name = "SOL2_0033";
  }
