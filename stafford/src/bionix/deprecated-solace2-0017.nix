with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "7Z/XX/SHA256E-s11110023238--f4e3eee63bcf439794948b40c3f6c30292366601665f45acdb01abf3ec18cd2b.gz/SHA256E-s11110023238--f4e3eee63bcf439794948b40c3f6c30292366601665f45acdb01abf3ec18cd2b.gz";
      r2 = "72/39/SHA256E-s11059979142--86c7561384e4213199ca2bbe25b807f55dbfea00d937256fcfff5650fc5b7efe.gz/SHA256E-s11059979142--86c7561384e4213199ca2bbe25b807f55dbfea00d937256fcfff5650fc5b7efe.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Mj/pZ/SHA256E-s5371729519--184e560efc60ea7961de2e84ef55929099d9acb2f1898d75f19e6d8782c6d673.gz/SHA256E-s5371729519--184e560efc60ea7961de2e84ef55929099d9acb2f1898d75f19e6d8782c6d673.gz";
      r2 = "Wv/X8/SHA256E-s5612279632--21d7d664518388c20c0c66ca361b6df533314b4d3be79e6c1566a3712c251b57.gz/SHA256E-s5612279632--21d7d664518388c20c0c66ca361b6df533314b4d3be79e6c1566a3712c251b57.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    name = "SOL2_0017";
    capture = CREv2;
  }
