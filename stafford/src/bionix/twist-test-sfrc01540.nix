with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1E";
      class = "tumours";
      pdx = false;
      r1 = "WV/28/SHA256E-s3561864051--7f8923b7ab8305fbe0f4a5c40b0024995385f57a6e28227714cc24fe7e098fce.gz/SHA256E-s3561864051--7f8923b7ab8305fbe0f4a5c40b0024995385f57a6e28227714cc24fe7e098fce.gz";
      r2 = "K8/P4/SHA256E-s3585142182--2e937763dde8594a451958e7445739d922d31e13ae12d5dc45365f7179814c54.gz/SHA256E-s3585142182--2e937763dde8594a451958e7445739d922d31e13ae12d5dc45365f7179814c54.gz";
    }

    {
      site = "1E";
      class = "tumours";
      pdx = false;
      r1 = "7Q/zf/SHA256E-s3641234515--232ed4698b3afb92f8f7ccf91f579d08d3abb9c92ab5a2635a4537759109cfc5.gz/SHA256E-s3641234515--232ed4698b3afb92f8f7ccf91f579d08d3abb9c92ab5a2635a4537759109cfc5.gz";
      r2 = "jk/Kq/SHA256E-s3679052735--e8f35eb99ea4621873c84d607cf6721942b373f5acf64880f23f4b1b9fb9d5ea.gz/SHA256E-s3679052735--e8f35eb99ea4621873c84d607cf6721942b373f5acf64880f23f4b1b9fb9d5ea.gz";
    }

    {
      site = "1E";
      class = "tumours";
      pdx = false;
      r1 = "v4/qP/SHA256E-s3611895561--dd547885f05e158a70dca7cc131eb2fcb564d6a3f55feda9196acad37710df5d.gz/SHA256E-s3611895561--dd547885f05e158a70dca7cc131eb2fcb564d6a3f55feda9196acad37710df5d.gz";
      r2 = "Ww/25/SHA256E-s3653486450--4f1ea6d402a6896604e1596658fb4c6135f338b9cd2f73bbb0a8aad544af72ed.gz/SHA256E-s3653486450--4f1ea6d402a6896604e1596658fb4c6135f338b9cd2f73bbb0a8aad544af72ed.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      umi = false;
      r1 = "gx/75/SHA256E-s42177417654--0243ecd58057793d65a0993124d93642af8dceb1ae707df59ab5b7de651b5b78.gz/SHA256E-s42177417654--0243ecd58057793d65a0993124d93642af8dceb1ae707df59ab5b7de651b5b78.gz";
      r2 = "VG/ZF/SHA256E-s45010780683--6c9c2213be955343517cb8e0aede84735b1e1a6d2304e49c648c1219bbecfb60.gz/SHA256E-s45010780683--6c9c2213be955343517cb8e0aede84735b1e1a6d2304e49c648c1219bbecfb60.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SFRC01540-twist-test";
    capture = TwistV2HR;
  }
