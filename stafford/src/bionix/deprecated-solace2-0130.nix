with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "5A";
      class = "tumours";
      pdx = false;
      r1 = "XX/9p/SHA256E-s3787690168--18b66ce12b202c5f1612ab5e065ff29ee09734589c0510cf166ab7428351ef62.gz/SHA256E-s3787690168--18b66ce12b202c5f1612ab5e065ff29ee09734589c0510cf166ab7428351ef62.gz";
      r2 = "VG/00/SHA256E-s3750087332--e9bd0752b7e64831a361e89ca9425b39f69fe5b2e18b443d4686d6ca97cc051f.gz/SHA256E-s3750087332--e9bd0752b7e64831a361e89ca9425b39f69fe5b2e18b443d4686d6ca97cc051f.gz";
    }

    {
      site = "5A";
      class = "tumours";
      pdx = false;
      r1 = "6Q/3P/SHA256E-s3854360164--a118d850ea80b5220730e8fdf87a2b35d9edab68e8cc6ef6c5dbabd56ad64af1.gz/SHA256E-s3854360164--a118d850ea80b5220730e8fdf87a2b35d9edab68e8cc6ef6c5dbabd56ad64af1.gz";
      r2 = "j2/W6/SHA256E-s3822460176--0e9a266fa09a957850855d6c6b4a31b4497a6d46d92b5078f8345452bcd13806.gz/SHA256E-s3822460176--0e9a266fa09a957850855d6c6b4a31b4497a6d46d92b5078f8345452bcd13806.gz";
    }

    {
      site = "germline";
      class = "normals";
      pdx = false;
      r1 = "pj/Q2/SHA256E-s1376522803--cc42e177ce7552e4275dd4420f9842263e2d4e8608614a27765207025e75134f.gz/SHA256E-s1376522803--cc42e177ce7552e4275dd4420f9842263e2d4e8608614a27765207025e75134f.gz";
      r2 = "FW/z5/SHA256E-s1424243048--9757d5fc24e0bd8b96f11fe2ae1fc3c4267b6fce52c1b00f1200ad773521f8e8.gz/SHA256E-s1424243048--9757d5fc24e0bd8b96f11fe2ae1fc3c4267b6fce52c1b00f1200ad773521f8e8.gz";
    }

    {
      site = "germline";
      class = "normals";
      pdx = false;
      r1 = "kF/7Z/SHA256E-s1463669462--181c9dfaa2cc5b2a388e95c6b8a0e06eaf975daab576550215b621da9077e0a5.gz/SHA256E-s1463669462--181c9dfaa2cc5b2a388e95c6b8a0e06eaf975daab576550215b621da9077e0a5.gz";
      r2 = "W2/J8/SHA256E-s1517285348--8c4437b9244044cb24da5a1a77fbdc3106c80a77a193d728b9f2a8c99c396c0c.gz/SHA256E-s1517285348--8c4437b9244044cb24da5a1a77fbdc3106c80a77a193d728b9f2a8c99c396c0c.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TwistV2HR;
    name = "SOL2_0130";
  }
