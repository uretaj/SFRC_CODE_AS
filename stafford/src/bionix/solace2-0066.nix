with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "Pk/2z/SHA256E-s3878001037--027bb112c5176a012895e7b5d765f3429d53a59e70c4d536cfb5f3dd5da70798.gz/SHA256E-s3878001037--027bb112c5176a012895e7b5d765f3429d53a59e70c4d536cfb5f3dd5da70798.gz";
      r2 = "F4/wf/SHA256E-s3928694050--5f16ee7aa00c2b52da67cf0bf279596a059333fa6a4ea57e876bfd2029408a10.gz/SHA256E-s3928694050--5f16ee7aa00c2b52da67cf0bf279596a059333fa6a4ea57e876bfd2029408a10.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "xw/g4/SHA256E-s3975838717--db9af5333c0f0964a12270e42d342cb1da91dea253b166f2cb3238daae4db801.gz/SHA256E-s3975838717--db9af5333c0f0964a12270e42d342cb1da91dea253b166f2cb3238daae4db801.gz";
      r2 = "MG/0g/SHA256E-s4010781593--0890a0d67f158f6218f699c98138a66ab98f13d854b14b060b31697129499887.gz/SHA256E-s4010781593--0890a0d67f158f6218f699c98138a66ab98f13d854b14b060b31697129499887.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "4k/Pw/SHA256E-s4010311541--f0234e3e1ae9cf791c57b97ee00b56fc98310704cf25b3d1811c90dff58d325f.gz/SHA256E-s4010311541--f0234e3e1ae9cf791c57b97ee00b56fc98310704cf25b3d1811c90dff58d325f.gz";
      r2 = "Zg/G1/SHA256E-s4033560315--36070bdf81535a72a5e9af2cd3c2de8c41af004f117644b27ad3f61827439a1a.gz/SHA256E-s4033560315--36070bdf81535a72a5e9af2cd3c2de8c41af004f117644b27ad3f61827439a1a.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "Vz/0k/SHA256E-s3955810904--25dddb75c4a83337999e8b8ac7c1eb3811de2e4c74c71b1a3c5d2b449c496a86.gz/SHA256E-s3955810904--25dddb75c4a83337999e8b8ac7c1eb3811de2e4c74c71b1a3c5d2b449c496a86.gz";
      r2 = "j9/7W/SHA256E-s3979094760--84e99f7874ee5fa1774421a6643c8b9e0a05e218349944d9002f7679cd2fe29b.gz/SHA256E-s3979094760--84e99f7874ee5fa1774421a6643c8b9e0a05e218349944d9002f7679cd2fe29b.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "V3/m1/SHA256E-s1435208733--5cc7a172d03fec2cc3629d9cfea9e5ca8a6d8f091be25a3d8cd6c7c61804788c.gz/SHA256E-s1435208733--5cc7a172d03fec2cc3629d9cfea9e5ca8a6d8f091be25a3d8cd6c7c61804788c.gz";
      r2 = "P7/jx/SHA256E-s1428643067--e7720c7379efe8f6ef32084cb25fc0a36d8e241f4b02b98e30bd2a79726c3f8b.gz/SHA256E-s1428643067--e7720c7379efe8f6ef32084cb25fc0a36d8e241f4b02b98e30bd2a79726c3f8b.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "G1/z1/SHA256E-s1455998735--71b87d69a993ba83a72766cf8ff6c23d516d3393cc12f52fb9fcd53256103162.gz/SHA256E-s1455998735--71b87d69a993ba83a72766cf8ff6c23d516d3393cc12f52fb9fcd53256103162.gz";
      r2 = "8z/wj/SHA256E-s1448060664--13bd1f0035364a319c59a639b962200e95a47fa8b27fc3d78d46fbbe54a9f709.gz/SHA256E-s1448060664--13bd1f0035364a319c59a639b962200e95a47fa8b27fc3d78d46fbbe54a9f709.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "pG/WQ/SHA256E-s1460245745--438918e4f93b39ea7c58464e199ed40536ae4d371a76afd5fe5221747b8764cd.gz/SHA256E-s1460245745--438918e4f93b39ea7c58464e199ed40536ae4d371a76afd5fe5221747b8764cd.gz";
      r2 = "p2/Q3/SHA256E-s1446310663--e889abe6eb39850247b11a8b962500fd22996c5e7f9b9ba7362de5c5f294223b.gz/SHA256E-s1446310663--e889abe6eb39850247b11a8b962500fd22996c5e7f9b9ba7362de5c5f294223b.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0066";
    typeHla = true;
    capture = TwistV2HR;
  }
