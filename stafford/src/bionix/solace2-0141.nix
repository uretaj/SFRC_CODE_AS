with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B6";
      class = "tumours";
      pdx = false;
      r1 = "91/41/SHA256E-s628757515--8e5ef5f9f958310c9a768fa13a439a2ec4227a21a10dbb7112fd96acc901f42d.gz/SHA256E-s628757515--8e5ef5f9f958310c9a768fa13a439a2ec4227a21a10dbb7112fd96acc901f42d.gz";
      r2 = "5M/pm/SHA256E-s630951917--3bc33ef8259721335b31b760edfc89016452457427af6d29b04e5f4631f28ea0.gz/SHA256E-s630951917--3bc33ef8259721335b31b760edfc89016452457427af6d29b04e5f4631f28ea0.gz";
    }

    {
      site = "B6";
      class = "tumours";
      pdx = false;
      r1 = "5f/V4/SHA256E-s653224683--a95c8117a534ff0d723d45f05c8ab6a15b997f0b13e6188d949c666e2599e9c8.gz/SHA256E-s653224683--a95c8117a534ff0d723d45f05c8ab6a15b997f0b13e6188d949c666e2599e9c8.gz";
      r2 = "vj/vg/SHA256E-s657291560--43c443723a6be513131e07ef50d083ca1700f3970a9645b1ed18b0eab99517b7.gz/SHA256E-s657291560--43c443723a6be513131e07ef50d083ca1700f3970a9645b1ed18b0eab99517b7.gz";
    }

    {
      site = "B6";
      class = "tumours";
      pdx = false;
      r1 = "79/W3/SHA256E-s653229205--32da4e38e328da2be3b0b698a83151894de347eabca745a8c8110eaab86e229c.gz/SHA256E-s653229205--32da4e38e328da2be3b0b698a83151894de347eabca745a8c8110eaab86e229c.gz";
      r2 = "z8/fm/SHA256E-s658169664--03ff99e12b20407d53f34707678bdea838ca51adf8144d73f91ebbb4f99dbead.gz/SHA256E-s658169664--03ff99e12b20407d53f34707678bdea838ca51adf8144d73f91ebbb4f99dbead.gz";
    }

    {
      site = "B6";
      class = "tumours";
      pdx = false;
      r1 = "Qz/PX/SHA256E-s660405917--3135983f1dc2cb7eb5a41492196df47bda66d12b8037d4de0da6c2cc4d7e5bc3.gz/SHA256E-s660405917--3135983f1dc2cb7eb5a41492196df47bda66d12b8037d4de0da6c2cc4d7e5bc3.gz";
      r2 = "wg/ZG/SHA256E-s664820091--0a216ab37237cb7022140ffb749e7e45cfa7c4931fd4f5026f4821b1feb2aff1.gz/SHA256E-s664820091--0a216ab37237cb7022140ffb749e7e45cfa7c4931fd4f5026f4821b1feb2aff1.gz";
    }

    {
      site = "B6";
      class = "tumours";
      pdx = false;
      r1 = "wP/FQ/SHA256E-s672556724--8473de1318cd57b2557f495c58e2359893fc0bc0367db4aaf2cec5af7f03a479.gz/SHA256E-s672556724--8473de1318cd57b2557f495c58e2359893fc0bc0367db4aaf2cec5af7f03a479.gz";
      r2 = "73/mF/SHA256E-s677542095--5a9c1fcb91f701511b3426619d4e4f5e9b593898059d20f611dd2c49205f8204.gz/SHA256E-s677542095--5a9c1fcb91f701511b3426619d4e4f5e9b593898059d20f611dd2c49205f8204.gz";
    }

    {
      site = "B6";
      class = "tumours";
      pdx = false;
      r1 = "f4/8v/SHA256E-s653834697--872030aaa7f5bc0b71c4a57bc156577c5efa22eafb407050637d7a49e1655809.gz/SHA256E-s653834697--872030aaa7f5bc0b71c4a57bc156577c5efa22eafb407050637d7a49e1655809.gz";
      r2 = "Pf/1K/SHA256E-s656102651--95733d6f321b377592e24acd40d8d045c763002b2fd6e4fda95b4c04e49331df.gz/SHA256E-s656102651--95733d6f321b377592e24acd40d8d045c763002b2fd6e4fda95b4c04e49331df.gz";
    }

    {
      site = "B6";
      class = "tumours";
      pdx = false;
      r1 = "P7/6V/SHA256E-s671589324--795d3305da89a713b7414bb4477bd604828b2a125b4ed6e116d096d91c4ca905.gz/SHA256E-s671589324--795d3305da89a713b7414bb4477bd604828b2a125b4ed6e116d096d91c4ca905.gz";
      r2 = "p7/KP/SHA256E-s676071904--7d68be146ccd7c7dbd33a03eeff803ded6096cf92dc57f592a6960042ce2ac5b.gz/SHA256E-s676071904--7d68be146ccd7c7dbd33a03eeff803ded6096cf92dc57f592a6960042ce2ac5b.gz";
    }

    {
      site = "B6";
      class = "tumours";
      pdx = false;
      r1 = "64/Vg/SHA256E-s640699179--ec35ccd2f5f8832218e959ba6e2b9395af67d68bab5b5c13ebba63f2800a7464.gz/SHA256E-s640699179--ec35ccd2f5f8832218e959ba6e2b9395af67d68bab5b5c13ebba63f2800a7464.gz";
      r2 = "56/8J/SHA256E-s642154543--045b5c92d5703be7e8f7626ad6620c28f014fbac5514581c6bae820a1a21d0dd.gz/SHA256E-s642154543--045b5c92d5703be7e8f7626ad6620c28f014fbac5514581c6bae820a1a21d0dd.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Q6/pz/SHA256E-s1170322795--09202cd3f51673252113b11903e1a2ea3cfcc1b1b573e4e72bdf657f13f79ea4.gz/SHA256E-s1170322795--09202cd3f51673252113b11903e1a2ea3cfcc1b1b573e4e72bdf657f13f79ea4.gz";
      r2 = "kX/V7/SHA256E-s1170950848--c6594819638bc60b0fd191f6ab3b00b07dc8af61e69b2291d48ff66ac68c379b.gz/SHA256E-s1170950848--c6594819638bc60b0fd191f6ab3b00b07dc8af61e69b2291d48ff66ac68c379b.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "34/ff/SHA256E-s1185862624--7c6003203b0befadf86fe06145b0db449b40eb2903493d74746abba57d533a40.gz/SHA256E-s1185862624--7c6003203b0befadf86fe06145b0db449b40eb2903493d74746abba57d533a40.gz";
      r2 = "8J/kG/SHA256E-s1184935790--70d66caa05431b7917a9f94622fbf6d39c35186adde191011da3bff46cbfa857.gz/SHA256E-s1184935790--70d66caa05431b7917a9f94622fbf6d39c35186adde191011da3bff46cbfa857.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Kf/6J/SHA256E-s1186778482--5754e9e06885edec252dc4152c889220ab71b426799f2ccc525693ab03d8170f.gz/SHA256E-s1186778482--5754e9e06885edec252dc4152c889220ab71b426799f2ccc525693ab03d8170f.gz";
      r2 = "F4/Wk/SHA256E-s1181089186--6aed74101577c1e84b2253d8ff8cdd2c8e78ec39a5e8a9737025b15aa1ab6fda.gz/SHA256E-s1181089186--6aed74101577c1e84b2253d8ff8cdd2c8e78ec39a5e8a9737025b15aa1ab6fda.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0141";
    typeHla = true;
    capture = TwistV2HR;
  }
