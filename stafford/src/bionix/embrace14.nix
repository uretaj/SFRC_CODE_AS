with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "Fj/Zg/SHA256E-s1767924994--e789888ecf933107d4069f34d93e986dc64c1bf008d0015d21cbce24f97e743f.gz/SHA256E-s1767924994--e789888ecf933107d4069f34d93e986dc64c1bf008d0015d21cbce24f97e743f.gz";
      r2 = "q9/8g/SHA256E-s1799648905--ebbd9a08aa76905382488bcf2f5a97014e67bdd20d8d61a201ef2a4c8262b68c.gz/SHA256E-s1799648905--ebbd9a08aa76905382488bcf2f5a97014e67bdd20d8d61a201ef2a4c8262b68c.gz";
    }

    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "xP/wM/SHA256E-s1758539919--3b1d11cedec15ddd6b4af681405aaac0976bb948225bc85c2407de902693c14a.gz/SHA256E-s1758539919--3b1d11cedec15ddd6b4af681405aaac0976bb948225bc85c2407de902693c14a.gz";
      r2 = "K8/1Z/SHA256E-s1797871756--5a9fec0343f8924c76e4a1393263b5d75c85b4ecf3bd97f3d9b7e669f775c7bd.gz/SHA256E-s1797871756--5a9fec0343f8924c76e4a1393263b5d75c85b4ecf3bd97f3d9b7e669f775c7bd.gz";
    }

    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "FJ/Pp/SHA256E-s1767951632--24e476e7d6032db9e67af8a8aa2eb8ac535687c1fec5760163716e5a0dcc5bc1.gz/SHA256E-s1767951632--24e476e7d6032db9e67af8a8aa2eb8ac535687c1fec5760163716e5a0dcc5bc1.gz";
      r2 = "PP/4v/SHA256E-s1804737895--289aab861619c16f8c43a03c633b8ea9b81a623a14962cf5f970a3b59ef33420.gz/SHA256E-s1804737895--289aab861619c16f8c43a03c633b8ea9b81a623a14962cf5f970a3b59ef33420.gz";
    }

    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "zJ/3m/SHA256E-s1676559739--5f9909da40a19b04c6e61e877a2c9186fcd40fc72a61321d1d064d81a53ee293.gz/SHA256E-s1676559739--5f9909da40a19b04c6e61e877a2c9186fcd40fc72a61321d1d064d81a53ee293.gz";
      r2 = "P7/F8/SHA256E-s1720286443--70f371053efab4ced80262c7d47444dbd53daa932e8d4f76171d82b22956e04b.gz/SHA256E-s1720286443--70f371053efab4ced80262c7d47444dbd53daa932e8d4f76171d82b22956e04b.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "1P/9m/SHA256E-s737911934--7576abe698e49a10a717e5127c41856e34b0541982c41a8b2fe0161fc880fa53.gz/SHA256E-s737911934--7576abe698e49a10a717e5127c41856e34b0541982c41a8b2fe0161fc880fa53.gz";
      r2 = "1w/WZ/SHA256E-s740247537--db8d8f07ae4bdc3fac79422bbce6b277601391575dbae5ba6014ac128cf7c032.gz/SHA256E-s740247537--db8d8f07ae4bdc3fac79422bbce6b277601391575dbae5ba6014ac128cf7c032.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "VJ/Wk/SHA256E-s742138723--0d9d7f78e83f322d30d9adaaa34c0a0c1d2fc5537a15fb367847337f084adaa2.gz/SHA256E-s742138723--0d9d7f78e83f322d30d9adaaa34c0a0c1d2fc5537a15fb367847337f084adaa2.gz";
      r2 = "Zm/29/SHA256E-s749460992--95ca2cf72d76e1b84d67388ee06cbaa2f0b1d077cb5acb692991a7871c2c667f.gz/SHA256E-s749460992--95ca2cf72d76e1b84d67388ee06cbaa2f0b1d077cb5acb692991a7871c2c667f.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "qG/jm/SHA256E-s736160950--63e9aeae624dff32a41b579f10c0af7fd1e7a2497003594d7232bf897b5e459e.gz/SHA256E-s736160950--63e9aeae624dff32a41b579f10c0af7fd1e7a2497003594d7232bf897b5e459e.gz";
      r2 = "fZ/1g/SHA256E-s741436743--2641af9807fbe42f0f379eff318790a3b169b0d0659a0f1289034a9bdf81e12f.gz/SHA256E-s741436743--2641af9807fbe42f0f379eff318790a3b169b0d0659a0f1289034a9bdf81e12f.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "0w/M6/SHA256E-s782277415--2d0637ee722060d38c6a529c928a625596e24817b2ee47aadda08d3d9c58fa75.gz/SHA256E-s782277415--2d0637ee722060d38c6a529c928a625596e24817b2ee47aadda08d3d9c58fa75.gz";
      r2 = "0j/Z3/SHA256E-s793512335--85ad6534776922c574cde18bd976fc111464b92c970af4387e50c4a6fd071230.gz/SHA256E-s793512335--85ad6534776922c574cde18bd976fc111464b92c970af4387e50c4a6fd071230.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "EMBRACE14";
    capture = TwistV2HR;
  }
