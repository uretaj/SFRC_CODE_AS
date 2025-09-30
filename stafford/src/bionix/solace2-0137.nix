with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "0X/7M/SHA256E-s774911716--db03308b6b76c3aaef8e8a6369b7bfb55dddf4d43c15838db5a0b047adf09fb0.gz/SHA256E-s774911716--db03308b6b76c3aaef8e8a6369b7bfb55dddf4d43c15838db5a0b047adf09fb0.gz";
      r2 = "q5/0P/SHA256E-s772242012--e00b90cbb5748ff8990690cb9714e0b4022059220b184227e7fd58e1ce311afb.gz/SHA256E-s772242012--e00b90cbb5748ff8990690cb9714e0b4022059220b184227e7fd58e1ce311afb.gz";
    }

    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "ZQ/GG/SHA256E-s799891415--ea568757b682cdc667e1e7f30bf27c65674d0fb2b177fe52e65378509ac9e991.gz/SHA256E-s799891415--ea568757b682cdc667e1e7f30bf27c65674d0fb2b177fe52e65378509ac9e991.gz";
      r2 = "kP/51/SHA256E-s798933161--45b9013641cf574f022bb95cb8bef20e93e3333b5f15bc838b0034c5381813fc.gz/SHA256E-s798933161--45b9013641cf574f022bb95cb8bef20e93e3333b5f15bc838b0034c5381813fc.gz";
    }

    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "5k/jf/SHA256E-s806522446--5bca92ad904ee644041e6e084b6a85ab9949a7eeadae8686db72a97fe6f6ca09.gz/SHA256E-s806522446--5bca92ad904ee644041e6e084b6a85ab9949a7eeadae8686db72a97fe6f6ca09.gz";
      r2 = "x9/pf/SHA256E-s806884629--22fda5ec9283beed014e93245d67671a5ff495212a26c6db3790a15bc91f2472.gz/SHA256E-s806884629--22fda5ec9283beed014e93245d67671a5ff495212a26c6db3790a15bc91f2472.gz";
    }

    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "Jp/v2/SHA256E-s816205347--75db40761341d4820a464c2fcf649d1c9adadda33f47441f3dfe2de4d96a5187.gz/SHA256E-s816205347--75db40761341d4820a464c2fcf649d1c9adadda33f47441f3dfe2de4d96a5187.gz";
      r2 = "5Q/gf/SHA256E-s815928656--8153449562850f9e815a7c1fed00a7902843bc82a47b933357054c35d1c8d669.gz/SHA256E-s815928656--8153449562850f9e815a7c1fed00a7902843bc82a47b933357054c35d1c8d669.gz";
    }

    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "F3/Zk/SHA256E-s827539511--aca91ef073295b9bcdd1db6c1c43a4948a83f169a7623cdb44137e11674215da.gz/SHA256E-s827539511--aca91ef073295b9bcdd1db6c1c43a4948a83f169a7623cdb44137e11674215da.gz";
      r2 = "k2/JZ/SHA256E-s827472434--8fc3df35052aa059947933ce380ec153fbca2cc147d15a2554176c80b9ccfe1b.gz/SHA256E-s827472434--8fc3df35052aa059947933ce380ec153fbca2cc147d15a2554176c80b9ccfe1b.gz";
    }

    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "F4/Fv/SHA256E-s805420044--7aa736e3d04d33229a9451169aa8ff075cbeef31add9516857251fb6e5a2db67.gz/SHA256E-s805420044--7aa736e3d04d33229a9451169aa8ff075cbeef31add9516857251fb6e5a2db67.gz";
      r2 = "Pk/JV/SHA256E-s802281209--e1eaf29e0442c7c59453fa28d89d1100cc14c9b57a4e23918681dbe346c895e5.gz/SHA256E-s802281209--e1eaf29e0442c7c59453fa28d89d1100cc14c9b57a4e23918681dbe346c895e5.gz";
    }

    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "ZV/Mk/SHA256E-s820092324--af53974f809afaa8633c12787b9269fa97ebfcaaaf6d5d17edb8383ef82faef5.gz/SHA256E-s820092324--af53974f809afaa8633c12787b9269fa97ebfcaaaf6d5d17edb8383ef82faef5.gz";
      r2 = "q4/vW/SHA256E-s819511711--e0454e342b1dd7864f3cffe5c68fe352bb1328b76d8dd84c5e95a6b96911c770.gz/SHA256E-s819511711--e0454e342b1dd7864f3cffe5c68fe352bb1328b76d8dd84c5e95a6b96911c770.gz";
    }

    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "20/vx/SHA256E-s790134670--b6ae0d03f5ad868a46609d3d59167a7936d3304e009e55fff981cb95fea98fb2.gz/SHA256E-s790134670--b6ae0d03f5ad868a46609d3d59167a7936d3304e009e55fff981cb95fea98fb2.gz";
      r2 = "8f/Vk/SHA256E-s786315805--e25ef7d246b19f323f1c041189ba5916956204d213bb78107dfb21bcc46ae948.gz/SHA256E-s786315805--e25ef7d246b19f323f1c041189ba5916956204d213bb78107dfb21bcc46ae948.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "2j/64/SHA256E-s1141986857--9c317923043c801ff0a37f86511fe691fa8465cb9b738b487943dced0acb6c06.gz/SHA256E-s1141986857--9c317923043c801ff0a37f86511fe691fa8465cb9b738b487943dced0acb6c06.gz";
      r2 = "xp/3K/SHA256E-s1145837321--5dee7edea762d8c6bfa7081c593862f9f315d2b4c03a6edcf6313026bc5003dc.gz/SHA256E-s1145837321--5dee7edea762d8c6bfa7081c593862f9f315d2b4c03a6edcf6313026bc5003dc.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Vm/mM/SHA256E-s1153113825--37b0d7f8f30c51f3cc65dac36b2332f6753f975c2cdd0c64f1086fba07998e34.gz/SHA256E-s1153113825--37b0d7f8f30c51f3cc65dac36b2332f6753f975c2cdd0c64f1086fba07998e34.gz";
      r2 = "FJ/3j/SHA256E-s1155363706--d30c505f56ce125cd90328f00a251bb5aa2cef50c875ebce616c049f4c0d55db.gz/SHA256E-s1155363706--d30c505f56ce125cd90328f00a251bb5aa2cef50c875ebce616c049f4c0d55db.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "kv/7k/SHA256E-s1153359068--36b274f74a3eef3fa4b41663fea0ec242094880465f35aef066583f57b36a516.gz/SHA256E-s1153359068--36b274f74a3eef3fa4b41663fea0ec242094880465f35aef066583f57b36a516.gz";
      r2 = "x6/Gp/SHA256E-s1150509397--85b07fe863e29bf01b95044ef242bc940a86e06bffea201102bf09e1caa3acf5.gz/SHA256E-s1150509397--85b07fe863e29bf01b95044ef242bc940a86e06bffea201102bf09e1caa3acf5.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0137";
    typeHla = true;
    capture = TwistV2HR;
  }
