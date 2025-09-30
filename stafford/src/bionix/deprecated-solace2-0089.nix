with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "4N";
      class = "tumours";
      pdx = false;
      r1 = "M3/Wm/SHA256E-s12325085330--c97deef1479903d2cd86246a126bdc81bb64af0d653f1c3c007c144735eef46b.gz/SHA256E-s12325085330--c97deef1479903d2cd86246a126bdc81bb64af0d653f1c3c007c144735eef46b.gz";
      r2 = "gw/pM/SHA256E-s12559235825--43cc04a172127d5ca4acae53ab56d289850243f38d009e4aeb8c9972035a2478.gz/SHA256E-s12559235825--43cc04a172127d5ca4acae53ab56d289850243f38d009e4aeb8c9972035a2478.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "qm/26/SHA256E-s5456502784--91022e7f13466908ab9517932243e3bf392bc271f637ac42ea07fc1ed100ec61.gz/SHA256E-s5456502784--91022e7f13466908ab9517932243e3bf392bc271f637ac42ea07fc1ed100ec61.gz";
      r2 = "fF/1v/SHA256E-s5492405846--90ba0d93613dfb25eac22b95a2da2a874e607db7452d5757bd8a6d959d614066.gz/SHA256E-s5492405846--90ba0d93613dfb25eac22b95a2da2a874e607db7452d5757bd8a6d959d614066.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SOL2_0089";
  }
