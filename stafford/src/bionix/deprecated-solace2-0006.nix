with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "germline";
      class = "normals";
      pdx = false;
      r1 = "j8/z2/SHA256E-s4561779806--5170c7f61cb07cb18556f83c22748dbe69cf4f7f4282356feea0070c98e2f606.gz/SHA256E-s4561779806--5170c7f61cb07cb18556f83c22748dbe69cf4f7f4282356feea0070c98e2f606.gz";
      r2 = "QM/22/SHA256E-s4392759134--6f20c8cfbfd33380b7ff9825302dbe92c4470fef4240f99a1822dcb21ddb4dd9.gz/SHA256E-s4392759134--6f20c8cfbfd33380b7ff9825302dbe92c4470fef4240f99a1822dcb21ddb4dd9.gz";
    }

    {
      site = "germline";
      class = "normals";
      pdx = false;
      r1 = "zw/79/SHA256E-s1712566539--e6e9d5e44d1c903ecff9b560414212951b081166ab3956bf327d79a19fcc1add.gz/SHA256E-s1712566539--e6e9d5e44d1c903ecff9b560414212951b081166ab3956bf327d79a19fcc1add.gz";
      r2 = "Fp/5p/SHA256E-s1813075724--369a0053fb8c0995c29f531e573f5ee370236b6f6870789afc52269c5d058273.gz/SHA256E-s1813075724--369a0053fb8c0995c29f531e573f5ee370236b6f6870789afc52269c5d058273.gz";
    }
    {
      site = "tumour";
      class = "tumours";
      pdx = false;
      r1 = "8k/K8/SHA256E-s11325267365--335e1e03a360aeea052974605f7aef4e87ec1b067f96801cc07ab9a737cff450.gz/SHA256E-s11325267365--335e1e03a360aeea052974605f7aef4e87ec1b067f96801cc07ab9a737cff450.gz";
      r2 = "m9/GW/SHA256E-s10254270266--81ecd810c5a5d27f55d03563370d81c125cca8f69b7e8555ef88bc83f3d6820a.gz/SHA256E-s10254270266--81ecd810c5a5d27f55d03563370d81c125cca8f69b7e8555ef88bc83f3d6820a.gz";
    }

    {
      site = "tumour";
      class = "tumours";
      pdx = false;
      r1 = "5p/g3/SHA256E-s5103496509--5b9b1599577c61e165be7e2b93186c2e39f4f485ce265e6fa1f7e33ab6c1c942.gz/SHA256E-s5103496509--5b9b1599577c61e165be7e2b93186c2e39f4f485ce265e6fa1f7e33ab6c1c942.gz";
      r2 = "Ff/7Z/SHA256E-s5184407946--3909609b79888f344e2b12c27c761937219404e7de85b0c3062ba5da8ac4f32c.gz/SHA256E-s5184407946--3909609b79888f344e2b12c27c761937219404e7de85b0c3062ba5da8ac4f32c.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = true;
    name = "SOL2_0006";
  }
