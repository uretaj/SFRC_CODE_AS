with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "3B";
      class = "tumours";
      pdx = false;
      r1 = "j0/Qw/SHA256E-s4666702470--5839d50e6d6d4303f933d58772c1610a3ee753750060a0bee1d34fab3c2bce56.gz/SHA256E-s4666702470--5839d50e6d6d4303f933d58772c1610a3ee753750060a0bee1d34fab3c2bce56.gz";
      r2 = "PX/9v/SHA256E-s4750948906--8979e81a90a801b1702aed46fde0d8cb344a1386b6741ad73234c3407d6c33e3.gz/SHA256E-s4750948906--8979e81a90a801b1702aed46fde0d8cb344a1386b6741ad73234c3407d6c33e3.gz";
    }

    {
      site = "3B";
      class = "tumours";
      pdx = false;
      r1 = "z6/fF/SHA256E-s4632934165--460c0e17401d600dc1582177bf7b67a995057f6f4f641e6698e163092ef87e6b.gz/SHA256E-s4632934165--460c0e17401d600dc1582177bf7b67a995057f6f4f641e6698e163092ef87e6b.gz";
      r2 = "pP/0J/SHA256E-s4695318247--dd397ebf36697a9d1fa75f89ea7947f314af085892d1332413959ffc1612adfa.gz/SHA256E-s4695318247--dd397ebf36697a9d1fa75f89ea7947f314af085892d1332413959ffc1612adfa.gz";
    }

    {
      site = "3B";
      class = "tumours";
      pdx = false;
      r1 = "jW/J5/SHA256E-s4616949946--5342d584bf7f70cfddaeec1dafedad3b2f26c95d83e704fa1abaf51e3fce474c.gz/SHA256E-s4616949946--5342d584bf7f70cfddaeec1dafedad3b2f26c95d83e704fa1abaf51e3fce474c.gz";
      r2 = "z9/gM/SHA256E-s4666543165--6a2c26cf4f5553e0e3119a27ef102cd4085f95c11ce22390d28e127691748d0e.gz/SHA256E-s4666543165--6a2c26cf4f5553e0e3119a27ef102cd4085f95c11ce22390d28e127691748d0e.gz";
    }

    {
      site = "3B";
      class = "tumours";
      pdx = false;
      r1 = "zX/fv/SHA256E-s4590506780--3db84ddc21111a393df78926f00b18acda23eb2ec2c07b00c359044ef24b9164.gz/SHA256E-s4590506780--3db84ddc21111a393df78926f00b18acda23eb2ec2c07b00c359044ef24b9164.gz";
      r2 = "Fx/XZ/SHA256E-s4639520111--7156eb2c09984ff7493e622b56fba2183cd1d27c98a51f59540897d30719877d.gz/SHA256E-s4639520111--7156eb2c09984ff7493e622b56fba2183cd1d27c98a51f59540897d30719877d.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "w2/Pz/SHA256E-s1299453106--40b9ec06b18130d53cbb980efed5f7a2e653a84f52ca400035c9fa24555494c0.gz/SHA256E-s1299453106--40b9ec06b18130d53cbb980efed5f7a2e653a84f52ca400035c9fa24555494c0.gz";
      r2 = "J2/xK/SHA256E-s1298190805--4130220aca665ca914e35ea9971df17de0023b6fbf1ef39f845685f06e6ee548.gz/SHA256E-s1298190805--4130220aca665ca914e35ea9971df17de0023b6fbf1ef39f845685f06e6ee548.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "65/21/SHA256E-s1316652638--ffe0c6a9359e6b2b7cbd61fb73fadb0932a1af02cf3d300918c5abf3582da680.gz/SHA256E-s1316652638--ffe0c6a9359e6b2b7cbd61fb73fadb0932a1af02cf3d300918c5abf3582da680.gz";
      r2 = "K9/1M/SHA256E-s1313609086--70d1f93539ce9f8776da690f37b9ee7ec4a4707a216b566a9a8cda7a59175795.gz/SHA256E-s1313609086--70d1f93539ce9f8776da690f37b9ee7ec4a4707a216b566a9a8cda7a59175795.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "fx/w1/SHA256E-s1319057844--b43885626db89766b0f78c35b7c5911aa61514528f4e792f57bb2711c2d25428.gz/SHA256E-s1319057844--b43885626db89766b0f78c35b7c5911aa61514528f4e792f57bb2711c2d25428.gz";
      r2 = "5j/q1/SHA256E-s1310724699--32db85a0a38f15c19d73b6c2c1a35e240025e6640d8118c1897b4f1f6bde05e4.gz/SHA256E-s1310724699--32db85a0a38f15c19d73b6c2c1a35e240025e6640d8118c1897b4f1f6bde05e4.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0070";
    typeHla = true;
    capture = TwistV2HR;
  }
