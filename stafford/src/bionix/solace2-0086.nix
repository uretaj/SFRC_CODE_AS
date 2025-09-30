with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1C";
      class = "tumours";
      pdx = false;
      r1 = "72/K6/SHA256E-s2683599942--18706ffde15eb56a505bf4e31cf264b04184bfba5c9f06cf487fb67822b1949d.gz/SHA256E-s2683599942--18706ffde15eb56a505bf4e31cf264b04184bfba5c9f06cf487fb67822b1949d.gz";
      r2 = "W1/k2/SHA256E-s2730551089--e4245e014a77572dd111dffdcdad3f28cf02508a03bbb437dc129710c8eb5c89.gz/SHA256E-s2730551089--e4245e014a77572dd111dffdcdad3f28cf02508a03bbb437dc129710c8eb5c89.gz";
    }

    {
      site = "1C";
      class = "tumours";
      pdx = false;
      r1 = "W0/Xm/SHA256E-s2634499883--69d06319bee48e6c46d50aca98a5a5bbae8c4b0621c47f36af4d37de6733e6be.gz/SHA256E-s2634499883--69d06319bee48e6c46d50aca98a5a5bbae8c4b0621c47f36af4d37de6733e6be.gz";
      r2 = "5Z/XK/SHA256E-s2668649532--f21c638bf8d5f70d7214bafc0b34f301bf3552946a91e5a30116109dce105d93.gz/SHA256E-s2668649532--f21c638bf8d5f70d7214bafc0b34f301bf3552946a91e5a30116109dce105d93.gz";
    }

    {
      site = "1C";
      class = "tumours";
      pdx = false;
      r1 = "5m/v5/SHA256E-s2644737985--fa24542f0832250f724260689813e11bc61652cdc7bc2cd45ca7becbdffc3e08.gz/SHA256E-s2644737985--fa24542f0832250f724260689813e11bc61652cdc7bc2cd45ca7becbdffc3e08.gz";
      r2 = "PV/VZ/SHA256E-s2672007898--deda840ba05f7e6f6d6f5070a2e321b6e6eeaa09d9cf3ff499f11f7e1ddc392f.gz/SHA256E-s2672007898--deda840ba05f7e6f6d6f5070a2e321b6e6eeaa09d9cf3ff499f11f7e1ddc392f.gz";
    }

    {
      site = "1C";
      class = "tumours";
      pdx = false;
      r1 = "wJ/V9/SHA256E-s2612636903--cc8b081834371cc1756a659586ae90eaada95211b7c2dca2eb06fd78a6ed22f3.gz/SHA256E-s2612636903--cc8b081834371cc1756a659586ae90eaada95211b7c2dca2eb06fd78a6ed22f3.gz";
      r2 = "9x/Gk/SHA256E-s2638952022--e7823bd7e9606765d90b414816a8fc88c9d61f21c77885505fc8731897957011.gz/SHA256E-s2638952022--e7823bd7e9606765d90b414816a8fc88c9d61f21c77885505fc8731897957011.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "j4/6W/SHA256E-s731187601--86c10349b9bdff1b8524379bf45c3982da58d6213bb85e78a34dd4326af87544.gz/SHA256E-s731187601--86c10349b9bdff1b8524379bf45c3982da58d6213bb85e78a34dd4326af87544.gz";
      r2 = "wx/PX/SHA256E-s730863189--78b29ef29ee56653bce305e2d041fea08b151d53228be3848ade79bc108e9c2f.gz/SHA256E-s730863189--78b29ef29ee56653bce305e2d041fea08b151d53228be3848ade79bc108e9c2f.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Zm/wF/SHA256E-s734270923--20608e3527e48ea4beb0c3515f3ac83653ab69714553cc757002d5247db16955.gz/SHA256E-s734270923--20608e3527e48ea4beb0c3515f3ac83653ab69714553cc757002d5247db16955.gz";
      r2 = "PQ/Wq/SHA256E-s738386054--bc28c0f5095c0eed9a4e9925cf853728af391802f376900837962b21c334a095.gz/SHA256E-s738386054--bc28c0f5095c0eed9a4e9925cf853728af391802f376900837962b21c334a095.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "XW/vv/SHA256E-s726255084--8c2b10d3912ecfbdc43e4514860330901509a7201213711022f7e28050dff9f3.gz/SHA256E-s726255084--8c2b10d3912ecfbdc43e4514860330901509a7201213711022f7e28050dff9f3.gz";
      r2 = "Mw/f9/SHA256E-s728268595--6ad9757de1a6061734c11ee441f3df0f13c9333a1b40989fa1628e53ffa82f98.gz/SHA256E-s728268595--6ad9757de1a6061734c11ee441f3df0f13c9333a1b40989fa1628e53ffa82f98.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "qp/VQ/SHA256E-s763232678--f5280876d759939dbc9cbc4704be538be3590b9c01a2ee5ae2121e7aa156a733.gz/SHA256E-s763232678--f5280876d759939dbc9cbc4704be538be3590b9c01a2ee5ae2121e7aa156a733.gz";
      r2 = "pm/j1/SHA256E-s770184038--46a512f88cbca4b7249cddb6135eab1fa224faa1d83d6dadd504849d3551234d.gz/SHA256E-s770184038--46a512f88cbca4b7249cddb6135eab1fa224faa1d83d6dadd504849d3551234d.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0086";
    typeHla = true;
    capture = TwistV2HR;
  }
