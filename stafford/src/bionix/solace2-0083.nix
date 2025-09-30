with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "3A";
      class = "tumours";
      pdx = false;
      r1 = "F9/pw/SHA256E-s1669001637--69982abbdd1002fcd7d9e5968653642fb3f19e1097dfeed15a44958cd92bf704.gz/SHA256E-s1669001637--69982abbdd1002fcd7d9e5968653642fb3f19e1097dfeed15a44958cd92bf704.gz";
      r2 = "wQ/F5/SHA256E-s1712213015--c6ade2797fbef73c01abb1341ac14b04858c7da5aed4ecd865dc6dd1aa6cf2c8.gz/SHA256E-s1712213015--c6ade2797fbef73c01abb1341ac14b04858c7da5aed4ecd865dc6dd1aa6cf2c8.gz";
    }

    {
      site = "3A";
      class = "tumours";
      pdx = false;
      r1 = "Z3/VK/SHA256E-s1683324375--866a75dd54cf9e1bb8d4c43c1c4468f0a920ba738bcb9eb6932fb64adcf30d15.gz/SHA256E-s1683324375--866a75dd54cf9e1bb8d4c43c1c4468f0a920ba738bcb9eb6932fb64adcf30d15.gz";
      r2 = "V5/K7/SHA256E-s1719276254--2e287fd1e190d0c2b6ed1e2f0f40d6bbbda6ca83242996b0d0f36dee65b6817d.gz/SHA256E-s1719276254--2e287fd1e190d0c2b6ed1e2f0f40d6bbbda6ca83242996b0d0f36dee65b6817d.gz";
    }

    {
      site = "3A";
      class = "tumours";
      pdx = false;
      r1 = "K8/WG/SHA256E-s1686421277--b372d64e6fee078f5ba2915d438aac618768a487cdd4a04c22d4e668bd0c2b52.gz/SHA256E-s1686421277--b372d64e6fee078f5ba2915d438aac618768a487cdd4a04c22d4e668bd0c2b52.gz";
      r2 = "ZK/1F/SHA256E-s1718345449--6938aed36afe062ed3520e05b0d839d20cf066bb99d863a045416e0c2020a7f8.gz/SHA256E-s1718345449--6938aed36afe062ed3520e05b0d839d20cf066bb99d863a045416e0c2020a7f8.gz";
    }

    {
      site = "3A";
      class = "tumours";
      pdx = false;
      r1 = "xM/06/SHA256E-s1658171598--99eb3f8384198c7b34ddaf0370dae024562eccdf8a0f6407c3982fbad87f52b5.gz/SHA256E-s1658171598--99eb3f8384198c7b34ddaf0370dae024562eccdf8a0f6407c3982fbad87f52b5.gz";
      r2 = "XM/Wp/SHA256E-s1689274654--cac7c9459faf9577890e074c12b0576060b7ffb7f3c83cafe8c449988f29d605.gz/SHA256E-s1689274654--cac7c9459faf9577890e074c12b0576060b7ffb7f3c83cafe8c449988f29d605.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Gw/8x/SHA256E-s793294217--faee6a04a76666083f8004f29a5f22e59f76936c4bb7149232bfe59fa12cc6e4.gz/SHA256E-s793294217--faee6a04a76666083f8004f29a5f22e59f76936c4bb7149232bfe59fa12cc6e4.gz";
      r2 = "0X/xq/SHA256E-s797561758--dc6af81b9749f93d00eae287259bed1edf8944e026538eb7ec313f84eb74c1ef.gz/SHA256E-s797561758--dc6af81b9749f93d00eae287259bed1edf8944e026538eb7ec313f84eb74c1ef.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "x8/Gz/SHA256E-s803251108--671d48ce1cf627abac3fa76d0bf2f766a7f662fc3813693b18050421ebd5561b.gz/SHA256E-s803251108--671d48ce1cf627abac3fa76d0bf2f766a7f662fc3813693b18050421ebd5561b.gz";
      r2 = "vw/xw/SHA256E-s806566300--1530e4794a4ea4c133c903d1a2185201b0a4de9f2033c22441a8e1e6fb5091dc.gz/SHA256E-s806566300--1530e4794a4ea4c133c903d1a2185201b0a4de9f2033c22441a8e1e6fb5091dc.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "WK/FJ/SHA256E-s802335157--1e25f0c01c0a330c2a9b8523f7b38169dd956523c50aa7b6ff9c5f846d601096.gz/SHA256E-s802335157--1e25f0c01c0a330c2a9b8523f7b38169dd956523c50aa7b6ff9c5f846d601096.gz";
      r2 = "zM/17/SHA256E-s802540173--9fa3a5cf88a9bf2693582f74c73f03662936ffcbeba6b1ef1119a6e58fa316bf.gz/SHA256E-s802540173--9fa3a5cf88a9bf2693582f74c73f03662936ffcbeba6b1ef1119a6e58fa316bf.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0083";
    typeHla = true;
    capture = TwistV2HR;
  }
