with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "VG/23/SHA256E-s12333782901--082dd2e03da02cf8b1ee985e3ec870525c508a26e24c60368c9d919b5052f6dd.gz/SHA256E-s12333782901--082dd2e03da02cf8b1ee985e3ec870525c508a26e24c60368c9d919b5052f6dd.gz";
      r2 = "qp/z6/SHA256E-s12575716183--1e88ded6e1cf3f7d94f25fbd5d873addab0c67b8665b80c413c44cf36381a76a.gz/SHA256E-s12575716183--1e88ded6e1cf3f7d94f25fbd5d873addab0c67b8665b80c413c44cf36381a76a.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "1j/kV/SHA256E-s5559879641--ed817e00178cff931a53ee92ff37e801f876908f47ceb18f3d691425d41b40d5.gz/SHA256E-s5559879641--ed817e00178cff931a53ee92ff37e801f876908f47ceb18f3d691425d41b40d5.gz";
      r2 = "V2/6v/SHA256E-s5825844030--fd308eaf9c52080908cb0d0d87d94f448f890071500b8fc9973b777002dcb5e8.gz/SHA256E-s5825844030--fd308eaf9c52080908cb0d0d87d94f448f890071500b8fc9973b777002dcb5e8.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = true;
    name = "SOL2_0053";
  }
