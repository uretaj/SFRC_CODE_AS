with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1J";
      class = "tumours";
      pdx = false;
      r1 = "J3/W8/SHA256E-s853959973--ad394f6363eca4238a59a1df4f66bf74333b503e2131aa81e6de82fa972fab8e.gz/SHA256E-s853959973--ad394f6363eca4238a59a1df4f66bf74333b503e2131aa81e6de82fa972fab8e.gz";
      r2 = "M5/QP/SHA256E-s854350732--cc616fb0a3ab6670ad4d4795509fa65fa5b880fb91419d55025e228e37f9ec8e.gz/SHA256E-s854350732--cc616fb0a3ab6670ad4d4795509fa65fa5b880fb91419d55025e228e37f9ec8e.gz";
    }

    {
      site = "1J";
      class = "tumours";
      pdx = false;
      r1 = "56/Jp/SHA256E-s886934653--0ea8f28fd8b6e09a1da113183727f0eda62dba04183af52ed03a6b36c51a2bff.gz/SHA256E-s886934653--0ea8f28fd8b6e09a1da113183727f0eda62dba04183af52ed03a6b36c51a2bff.gz";
      r2 = "XV/0x/SHA256E-s889089699--f0950dc4675f7b49a0191bb80fb78a76c64d75e4248e3fef6cba332f076a4bf2.gz/SHA256E-s889089699--f0950dc4675f7b49a0191bb80fb78a76c64d75e4248e3fef6cba332f076a4bf2.gz";
    }

    {
      site = "1J";
      class = "tumours";
      pdx = false;
      r1 = "K7/z9/SHA256E-s888145009--2036e5acf88b372b47ad3821a51105b443fa3d4550fb69e4b067caf64db48ee7.gz/SHA256E-s888145009--2036e5acf88b372b47ad3821a51105b443fa3d4550fb69e4b067caf64db48ee7.gz";
      r2 = "1Z/Mx/SHA256E-s891671767--576d58059b97b198bff50fc20bed4fe635704048125f56cbcd51f4c8bf5dd49f.gz/SHA256E-s891671767--576d58059b97b198bff50fc20bed4fe635704048125f56cbcd51f4c8bf5dd49f.gz";
    }

    {
      site = "1J";
      class = "tumours";
      pdx = false;
      r1 = "m0/Z5/SHA256E-s902855044--0ec940aa4d2d66f9d38621a7be26dafc4c02aac8d9ef9b84747c6bde6132944a.gz/SHA256E-s902855044--0ec940aa4d2d66f9d38621a7be26dafc4c02aac8d9ef9b84747c6bde6132944a.gz";
      r2 = "QQ/qf/SHA256E-s905591218--0c09ebd6436833fda99cff4bdec521aa231ad252781aed6196668926d2f4889e.gz/SHA256E-s905591218--0c09ebd6436833fda99cff4bdec521aa231ad252781aed6196668926d2f4889e.gz";
    }

    {
      site = "1J";
      class = "tumours";
      pdx = false;
      r1 = "zZ/f9/SHA256E-s919540782--794febf80395d88abc7855a3cfb4659e7b5d2155f37a8b49c35c49eaf0a9b1e8.gz/SHA256E-s919540782--794febf80395d88abc7855a3cfb4659e7b5d2155f37a8b49c35c49eaf0a9b1e8.gz";
      r2 = "7X/5W/SHA256E-s922859619--aa1aa5237ac5aabbb3a2d50464a091b754e4750c8bae94523a7d72adef921bd4.gz/SHA256E-s922859619--aa1aa5237ac5aabbb3a2d50464a091b754e4750c8bae94523a7d72adef921bd4.gz";
    }

    {
      site = "1J";
      class = "tumours";
      pdx = false;
      r1 = "wx/MQ/SHA256E-s874381182--cfde9a171053a5e4a9525ae2b23b4cc90f6a3fb24a909ab6bb4e37d67f331cf1.gz/SHA256E-s874381182--cfde9a171053a5e4a9525ae2b23b4cc90f6a3fb24a909ab6bb4e37d67f331cf1.gz";
      r2 = "Gj/x4/SHA256E-s874512186--6b93035e5b2700f503fc37dd6120ac9a1bd3faf3bb3a0889fb06f91e608171a9.gz/SHA256E-s874512186--6b93035e5b2700f503fc37dd6120ac9a1bd3faf3bb3a0889fb06f91e608171a9.gz";
    }

    {
      site = "1J";
      class = "tumours";
      pdx = false;
      r1 = "4j/3z/SHA256E-s912785320--ec507ab16ad1bb22b747abad4c7974190f907e726a462488ce1bfab2a0713d28.gz/SHA256E-s912785320--ec507ab16ad1bb22b747abad4c7974190f907e726a462488ce1bfab2a0713d28.gz";
      r2 = "ww/V0/SHA256E-s915656908--a6fec2debbcfe3d76ce4c16ebba1705de76c21e6b87679d2901e8543435d5a9a.gz/SHA256E-s915656908--a6fec2debbcfe3d76ce4c16ebba1705de76c21e6b87679d2901e8543435d5a9a.gz";
    }

    {
      site = "1J";
      class = "tumours";
      pdx = false;
      r1 = "Wp/ZM/SHA256E-s856978759--7e68f59a8e457c87e315d50a6d12227fc77dadbe1547e20fc3ea78452134a301.gz/SHA256E-s856978759--7e68f59a8e457c87e315d50a6d12227fc77dadbe1547e20fc3ea78452134a301.gz";
      r2 = "56/26/SHA256E-s856623054--edafb1929d8204dab819913a9841f3dacd0e7c6090c8540d899e447303b07c05.gz/SHA256E-s856623054--edafb1929d8204dab819913a9841f3dacd0e7c6090c8540d899e447303b07c05.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "4z/QK/SHA256E-s915637682--ac5779a60168f991cc483bac31ea3e7429dff61306afc9eb754d039604b92cfc.gz/SHA256E-s915637682--ac5779a60168f991cc483bac31ea3e7429dff61306afc9eb754d039604b92cfc.gz";
      r2 = "XJ/GF/SHA256E-s920090912--8c1499d007a2fb4d2d99130a859d19a7b1b223281bd2dc50d5c3eba58e92bec4.gz/SHA256E-s920090912--8c1499d007a2fb4d2d99130a859d19a7b1b223281bd2dc50d5c3eba58e92bec4.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "mV/kJ/SHA256E-s926601625--2855ace4fae65cb68eaac22ea52245d4eed7ce4e14e91a3172ee10afd0cac20e.gz/SHA256E-s926601625--2855ace4fae65cb68eaac22ea52245d4eed7ce4e14e91a3172ee10afd0cac20e.gz";
      r2 = "MP/J7/SHA256E-s929391308--d05c857db7f3382d884cbed49c62748810f1278c2c9b2b0ad3cba3479c60a944.gz/SHA256E-s929391308--d05c857db7f3382d884cbed49c62748810f1278c2c9b2b0ad3cba3479c60a944.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "6X/P4/SHA256E-s927378751--ce95798b39ba458bb87c509a37321fdc338c32be7b4e47753ca93d38e5c060f1.gz/SHA256E-s927378751--ce95798b39ba458bb87c509a37321fdc338c32be7b4e47753ca93d38e5c060f1.gz";
      r2 = "w2/1J/SHA256E-s926160521--46d3c1d1bb72834e98a8a4c5b1d71ebb5b80794c7fed5b6781a6f3f419929ae5.gz/SHA256E-s926160521--46d3c1d1bb72834e98a8a4c5b1d71ebb5b80794c7fed5b6781a6f3f419929ae5.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0111";
    typeHla = true;
    capture = TwistV2HR;
  }
