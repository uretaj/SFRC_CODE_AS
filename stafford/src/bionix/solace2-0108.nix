with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1N";
      class = "tumours";
      pdx = false;
      r1 = "xk/z2/SHA256E-s562070697--5b7ff400934f8225b31f08ced6c2f8631e970f82cdbe2e5faba12f04aff7d8f1.gz/SHA256E-s562070697--5b7ff400934f8225b31f08ced6c2f8631e970f82cdbe2e5faba12f04aff7d8f1.gz";
      r2 = "9Z/wj/SHA256E-s563200448--34812b0efef6ce8cee7d2a85cfd94145e0f3c7063124b85c33fdf592e77a5e0e.gz/SHA256E-s563200448--34812b0efef6ce8cee7d2a85cfd94145e0f3c7063124b85c33fdf592e77a5e0e.gz";
    }

    {
      site = "1N";
      class = "tumours";
      pdx = false;
      r1 = "Q8/Jm/SHA256E-s581530665--580db9c6ad0008b2674dbdc4bd7eeabee65e152c26ef6bff70340a83bb2c26f2.gz/SHA256E-s581530665--580db9c6ad0008b2674dbdc4bd7eeabee65e152c26ef6bff70340a83bb2c26f2.gz";
      r2 = "30/W6/SHA256E-s584046245--03a6c0a022fef75dbd5439601cf0bf394f94b5193c02b451a7d56adb66f50d8e.gz/SHA256E-s584046245--03a6c0a022fef75dbd5439601cf0bf394f94b5193c02b451a7d56adb66f50d8e.gz";
    }

    {
      site = "1N";
      class = "tumours";
      pdx = false;
      r1 = "18/19/SHA256E-s580214224--e3696e0e6df4de2151532700a9e47f8758fea2550000e64f6e2210df1eb18ebd.gz/SHA256E-s580214224--e3696e0e6df4de2151532700a9e47f8758fea2550000e64f6e2210df1eb18ebd.gz";
      r2 = "9x/z2/SHA256E-s583672349--f0bc0a6cf165c2c055ab3dcaf1b449041a9fa285eec88716f0cb6e2fb697fe90.gz/SHA256E-s583672349--f0bc0a6cf165c2c055ab3dcaf1b449041a9fa285eec88716f0cb6e2fb697fe90.gz";
    }

    {
      site = "1N";
      class = "tumours";
      pdx = false;
      r1 = "0q/jq/SHA256E-s579786876--4e65fea900ad43a975549e43cec0a69c3cb6d3aae6f5fa19716fc2efac40a99c.gz/SHA256E-s579786876--4e65fea900ad43a975549e43cec0a69c3cb6d3aae6f5fa19716fc2efac40a99c.gz";
      r2 = "ZW/w5/SHA256E-s582607676--024afd16cfc88a4ef7380de6c658f1bb015743df6aa841681168aa47f765d0d1.gz/SHA256E-s582607676--024afd16cfc88a4ef7380de6c658f1bb015743df6aa841681168aa47f765d0d1.gz";
    }

    {
      site = "1N";
      class = "tumours";
      pdx = false;
      r1 = "qw/87/SHA256E-s596085932--8571d28d939c4b0a589d473abc3ed20748aed16faf2d5b1b7346290dd8d9e819.gz/SHA256E-s596085932--8571d28d939c4b0a589d473abc3ed20748aed16faf2d5b1b7346290dd8d9e819.gz";
      r2 = "Qp/5m/SHA256E-s599246313--be6e476036718f51f8b6b176404eea2c53f7ce529f1e6df18997c370642fcc50.gz/SHA256E-s599246313--be6e476036718f51f8b6b176404eea2c53f7ce529f1e6df18997c370642fcc50.gz";
    }

    {
      site = "1N";
      class = "tumours";
      pdx = false;
      r1 = "3x/8q/SHA256E-s581667465--ec1f44950819c0e911f8b2f221f15906082a8c80fa215340d9a8fe99492af92a.gz/SHA256E-s581667465--ec1f44950819c0e911f8b2f221f15906082a8c80fa215340d9a8fe99492af92a.gz";
      r2 = "j1/jP/SHA256E-s582753272--95cc0bab3fe76221b0e62c15c081c621d7f99785807b79ccd47a1909314e17cc.gz/SHA256E-s582753272--95cc0bab3fe76221b0e62c15c081c621d7f99785807b79ccd47a1909314e17cc.gz";
    }

    {
      site = "1N";
      class = "tumours";
      pdx = false;
      r1 = "z3/7Q/SHA256E-s596884886--70a5bb356fc57917c57e9d5392120d4910f9bb5f17474f3a7391bb9a5f9721f4.gz/SHA256E-s596884886--70a5bb356fc57917c57e9d5392120d4910f9bb5f17474f3a7391bb9a5f9721f4.gz";
      r2 = "xq/vV/SHA256E-s599717227--fc26ff05016982216e17d8b1003ab0c5fb7188dbb0fac51600741e0f82a62638.gz/SHA256E-s599717227--fc26ff05016982216e17d8b1003ab0c5fb7188dbb0fac51600741e0f82a62638.gz";
    }

    {
      site = "1N";
      class = "tumours";
      pdx = false;
      r1 = "qg/4Z/SHA256E-s570242967--338963396877a5e79ee67a91ec7f3814d33e1a890b1a59d1634be25d908016fc.gz/SHA256E-s570242967--338963396877a5e79ee67a91ec7f3814d33e1a890b1a59d1634be25d908016fc.gz";
      r2 = "4f/0j/SHA256E-s570753291--ae5397f12b965e8da91003f29ba15462459f0b22e1dd24e03acaa6a88543121a.gz/SHA256E-s570753291--ae5397f12b965e8da91003f29ba15462459f0b22e1dd24e03acaa6a88543121a.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Zq/62/SHA256E-s902613813--9696378b45d116533544f22b47211730137075c539d0635ffa07f079145a0f74.gz/SHA256E-s902613813--9696378b45d116533544f22b47211730137075c539d0635ffa07f079145a0f74.gz";
      r2 = "z9/5q/SHA256E-s904308028--fd97abee85b4760442a475d145aa85ca338ece9e3616846891900d422f050efd.gz/SHA256E-s904308028--fd97abee85b4760442a475d145aa85ca338ece9e3616846891900d422f050efd.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "vF/KX/SHA256E-s912762406--dddbc217fc42497df8595b8059536810371f27b51b304bdce8e7315ae0deee8a.gz/SHA256E-s912762406--dddbc217fc42497df8595b8059536810371f27b51b304bdce8e7315ae0deee8a.gz";
      r2 = "Xw/2V/SHA256E-s913498791--0b614fea51150146dbbdf2c5b8152a0fd17b8444331bc02681b59c7c4456eca6.gz/SHA256E-s913498791--0b614fea51150146dbbdf2c5b8152a0fd17b8444331bc02681b59c7c4456eca6.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "95/66/SHA256E-s914114668--cb97795dcc1631cd2c1b05ab02759d4a6002980e0d39f9ae6c74e1900f49be5f.gz/SHA256E-s914114668--cb97795dcc1631cd2c1b05ab02759d4a6002980e0d39f9ae6c74e1900f49be5f.gz";
      r2 = "Gf/58/SHA256E-s911303032--96de07933b76effccd4c12d6c852f1f88c23b5ff1a8a8c61c02f71c22e810c38.gz/SHA256E-s911303032--96de07933b76effccd4c12d6c852f1f88c23b5ff1a8a8c61c02f71c22e810c38.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0108";
    typeHla = true;
    capture = TwistV2HR;
  }
