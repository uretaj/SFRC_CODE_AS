with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Mq/v6/SHA256E-s1788704171--bbd49c10055ca29deb98dc68065cd79f7434b4635ccc275b689dc0f0a6ba1937.gz/SHA256E-s1788704171--bbd49c10055ca29deb98dc68065cd79f7434b4635ccc275b689dc0f0a6ba1937.gz";
      r2 = "fX/Xm/SHA256E-s1811364020--56f312f25678459a68382af33620127e7dee09d205a45c97423cf67d360009d3.gz/SHA256E-s1811364020--56f312f25678459a68382af33620127e7dee09d205a45c97423cf67d360009d3.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "33/k5/SHA256E-s1824238454--63713d2533e4a9be56fd46b17aecc162a2977617ab35b1277a836601da10185d.gz/SHA256E-s1824238454--63713d2533e4a9be56fd46b17aecc162a2977617ab35b1277a836601da10185d.gz";
      r2 = "8m/8J/SHA256E-s1847509762--c0df1d3eb34b62ac5de4262598d8249014504518fc54273ccea7d892d42fcc65.gz/SHA256E-s1847509762--c0df1d3eb34b62ac5de4262598d8249014504518fc54273ccea7d892d42fcc65.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV29721";
  }
