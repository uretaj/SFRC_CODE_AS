with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "ff/v3/SHA256E-s773697483--d1349b17e68f9629fbd5c9227d25853af7896f37134b9f9b8ecd75284d805540.gz/SHA256E-s773697483--d1349b17e68f9629fbd5c9227d25853af7896f37134b9f9b8ecd75284d805540.gz";
      r2 = "KM/xm/SHA256E-s771959317--3fb19243cbd8307be36349f6773adb8c65e3add63af3edbea16c354a84bbd10a.gz/SHA256E-s771959317--3fb19243cbd8307be36349f6773adb8c65e3add63af3edbea16c354a84bbd10a.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "W2/Pw/SHA256E-s805009769--0a53575c1e3b04e100a9abb552b1adaf309c2b2457e79a7e56bd19b454a5a2bd.gz/SHA256E-s805009769--0a53575c1e3b04e100a9abb552b1adaf309c2b2457e79a7e56bd19b454a5a2bd.gz";
      r2 = "V7/qG/SHA256E-s805443443--cd0e495e9d38e5231c156cf830f86718d664ef994506b8791054a1b5f3265327.gz/SHA256E-s805443443--cd0e495e9d38e5231c156cf830f86718d664ef994506b8791054a1b5f3265327.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "ZX/Vj/SHA256E-s793058903--6fcf2606f9e527996bb047bb901ee2abfd49a00e68b1c60cde547beb015b5a38.gz/SHA256E-s793058903--6fcf2606f9e527996bb047bb901ee2abfd49a00e68b1c60cde547beb015b5a38.gz";
      r2 = "1W/wV/SHA256E-s794576107--76fb6a2697da97fa7f565f1fd6e4eb8a6fec9837c577945231c985a6a6bde6ac.gz/SHA256E-s794576107--76fb6a2697da97fa7f565f1fd6e4eb8a6fec9837c577945231c985a6a6bde6ac.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "vf/xM/SHA256E-s786918157--b924de9662585a62c6815cf289a01e43de3a60be006b330833b880f484e85efc.gz/SHA256E-s786918157--b924de9662585a62c6815cf289a01e43de3a60be006b330833b880f484e85efc.gz";
      r2 = "V2/K8/SHA256E-s787661307--f1faceecae0580366fa81cb9fdfc1c4b841fce1edb63a90eedab3e60ca9f9f1b.gz/SHA256E-s787661307--f1faceecae0580366fa81cb9fdfc1c4b841fce1edb63a90eedab3e60ca9f9f1b.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "G1/0G/SHA256E-s815845675--5b0fd8cf06a85e7960accc0d08c0d4310384e988b91143099b6f6d2c49330a9c.gz/SHA256E-s815845675--5b0fd8cf06a85e7960accc0d08c0d4310384e988b91143099b6f6d2c49330a9c.gz";
      r2 = "Wz/kG/SHA256E-s817252551--2055059d5b8ec3575d1aa466b33ad2a8fbbddb8adf7576c3d01b00fa2da92e9e.gz/SHA256E-s817252551--2055059d5b8ec3575d1aa466b33ad2a8fbbddb8adf7576c3d01b00fa2da92e9e.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "K9/Kk/SHA256E-s793600306--7edd7dbf754620d212834571c995ad99facb01a9aa82828fd081a2a5557fcd10.gz/SHA256E-s793600306--7edd7dbf754620d212834571c995ad99facb01a9aa82828fd081a2a5557fcd10.gz";
      r2 = "g6/3V/SHA256E-s791776070--bc1dd423806558ffd8cced61ec3266e24697ddada0a94504166d9a2c77fe3f03.gz/SHA256E-s791776070--bc1dd423806558ffd8cced61ec3266e24697ddada0a94504166d9a2c77fe3f03.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "w1/W9/SHA256E-s827577711--b15a2b12c3586eba85da7f3200dbf78f1de7f281a2a58f981cf610ee4559b4c6.gz/SHA256E-s827577711--b15a2b12c3586eba85da7f3200dbf78f1de7f281a2a58f981cf610ee4559b4c6.gz";
      r2 = "xq/5x/SHA256E-s828414739--ff65e56a16fd456d3eb94bcafdaaa6232c407d18dd6dfbfd912e27215261eaf7.gz/SHA256E-s828414739--ff65e56a16fd456d3eb94bcafdaaa6232c407d18dd6dfbfd912e27215261eaf7.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "Fq/zZ/SHA256E-s773421852--c987bfabdadff0915ddf856d97cffe8d944d4de784203e15ef1d36c3adb9ef20.gz/SHA256E-s773421852--c987bfabdadff0915ddf856d97cffe8d944d4de784203e15ef1d36c3adb9ef20.gz";
      r2 = "2m/6P/SHA256E-s770557361--5b8f2a47a6f2d17ad9c6d6ea46d306d5cfc2f2cd27ec6a00076a7df2928bf1a3.gz/SHA256E-s770557361--5b8f2a47a6f2d17ad9c6d6ea46d306d5cfc2f2cd27ec6a00076a7df2928bf1a3.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Wg/w3/SHA256E-s737809803--d8a5750c8712ac3f2ab87d1639d14478081aebdc3868a5c9638fa09b0160d5e0.gz/SHA256E-s737809803--d8a5750c8712ac3f2ab87d1639d14478081aebdc3868a5c9638fa09b0160d5e0.gz";
      r2 = "3W/X9/SHA256E-s744405536--08d834661fd93f109cfc96083bcf5819501a557363d7cddfd23958130516512f.gz/SHA256E-s744405536--08d834661fd93f109cfc96083bcf5819501a557363d7cddfd23958130516512f.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Z8/PQ/SHA256E-s727379200--c315ad4772bdf13180180321b1e6c59b669c5dcbe2bb8be71bf6bb9884256403.gz/SHA256E-s727379200--c315ad4772bdf13180180321b1e6c59b669c5dcbe2bb8be71bf6bb9884256403.gz";
      r2 = "q6/zG/SHA256E-s732771651--7e1f9337e7cd9d86c6865977c51c3369967a0503265e77661958723a63cb8ccc.gz/SHA256E-s732771651--7e1f9337e7cd9d86c6865977c51c3369967a0503265e77661958723a63cb8ccc.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "8p/04/SHA256E-s710881377--873153214a8688196f68c6a2c7af1096661cdd90f7f56264166c0f12a726e779.gz/SHA256E-s710881377--873153214a8688196f68c6a2c7af1096661cdd90f7f56264166c0f12a726e779.gz";
      r2 = "Gg/Vw/SHA256E-s713467714--10ff90f854e28df44a3f9a98c4e2554844004a403121115bb5b16429141a1d27.gz/SHA256E-s713467714--10ff90f854e28df44a3f9a98c4e2554844004a403121115bb5b16429141a1d27.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0135";
    typeHla = true;
    capture = TwistV2HR;
  }
