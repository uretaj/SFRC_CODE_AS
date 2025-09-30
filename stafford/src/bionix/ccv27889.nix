with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Qk/XV/SHA256E-s2354978607--9bc43939f284faccce7a898afbca67af86f955723fb5a8219d6edf6c87e19af9.gz/SHA256E-s2354978607--9bc43939f284faccce7a898afbca67af86f955723fb5a8219d6edf6c87e19af9.gz";
      r2 = "pW/QV/SHA256E-s2373110318--3b51738f2de6f42b148dc83b8b44a828abfdfe102b29ac9883564f68364b10ec.gz/SHA256E-s2373110318--3b51738f2de6f42b148dc83b8b44a828abfdfe102b29ac9883564f68364b10ec.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "q1/fp/SHA256E-s2280517240--e1d49269ebd9e34a41ec66f2f9a383e1fa4fc5c68b6bfbece3ed2dd341a68d89.gz/SHA256E-s2280517240--e1d49269ebd9e34a41ec66f2f9a383e1fa4fc5c68b6bfbece3ed2dd341a68d89.gz";
      r2 = "ff/6G/SHA256E-s2279919789--a28d1c41dc778aa50528e6c588620affb6cb59762249e4110844003af01278a2.gz/SHA256E-s2279919789--a28d1c41dc778aa50528e6c588620affb6cb59762249e4110844003af01278a2.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV27889";
  }
