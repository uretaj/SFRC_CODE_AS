with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "germline";
      class = "normals";
      pdx = false;
      r1 = "k1/fj/SHA256E-s4862073968--594d3aa0c215e230e04db453592f958eb4c8d54a99b3254b38f6c1b4520e5293.gz/SHA256E-s4862073968--594d3aa0c215e230e04db453592f958eb4c8d54a99b3254b38f6c1b4520e5293.gz";
      r2 = "7X/6G/SHA256E-s4634247730--5723c62b877496464dede3418e9a7c91bf6ca605ebe01cf6e9758ad2da11560e.gz/SHA256E-s4634247730--5723c62b877496464dede3418e9a7c91bf6ca605ebe01cf6e9758ad2da11560e.gz";
    }

    {
      site = "germline";
      class = "normals";
      pdx = false;
      r1 = "P4/1v/SHA256E-s1823887587--36720cbe8791a189625ba4b7fb3122af83aa9fce3bbed2caa180d7ef0d0cf0bd.gz/SHA256E-s1823887587--36720cbe8791a189625ba4b7fb3122af83aa9fce3bbed2caa180d7ef0d0cf0bd.gz";
      r2 = "5K/g7/SHA256E-s1911200487--413479fa39db28fc6b166e3a42ccfbdac1ae9200fe77091e4c342c38c6fd6eb2.gz/SHA256E-s1911200487--413479fa39db28fc6b166e3a42ccfbdac1ae9200fe77091e4c342c38c6fd6eb2.gz";
    }

    {
      site = "tumour";
      class = "tumours";
      pdx = false;
      r1 = "Xq/7j/SHA256E-s12761479824--27d4150f2c840c7fcf7c18cbd6b58553484a6218c6a982fa3c0ff57573e4e261.gz/SHA256E-s12761479824--27d4150f2c840c7fcf7c18cbd6b58553484a6218c6a982fa3c0ff57573e4e261.gz";
      r2 = "JF/Q8/SHA256E-s11761481859--40413fe97a3559be22fca83753b85d13faf8bd975b243b444eae527994fabe4d.gz/SHA256E-s11761481859--40413fe97a3559be22fca83753b85d13faf8bd975b243b444eae527994fabe4d.gz";
    }

    {
      site = "tumour";
      class = "tumours";
      pdx = false;
      r1 = "0J/Jx/SHA256E-s5406236223--1328e823a7d381dd0f522b83a569e171a59737bb4b0f0a4ace076c6eac82d833.gz/SHA256E-s5406236223--1328e823a7d381dd0f522b83a569e171a59737bb4b0f0a4ace076c6eac82d833.gz";
      r2 = "68/kv/SHA256E-s5560507146--7c690f724b8ce6b0a4b034ae4736450756e94c5a736ddeb33cb34e2723e9c97b.gz/SHA256E-s5560507146--7c690f724b8ce6b0a4b034ae4736450756e94c5a736ddeb33cb34e2723e9c97b.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = true;
    name = "SOL2_0039";
  }
