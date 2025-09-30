with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B5";
      class = "tumours";
      pdx = false;
      r1 = "7P/0G/SHA256E-s1428404714--fa9b72cb00e00702426bf42ae889649987028bd5c1b7188b5ff1869070d9e75c.gz/SHA256E-s1428404714--fa9b72cb00e00702426bf42ae889649987028bd5c1b7188b5ff1869070d9e75c.gz";
      r2 = "Gk/Q1/SHA256E-s1436438843--99c4591cec3490c9e97ab60d3d376dfd8e4703a9dc3b11f4ee1bfd2052e167e1.gz/SHA256E-s1436438843--99c4591cec3490c9e97ab60d3d376dfd8e4703a9dc3b11f4ee1bfd2052e167e1.gz";
    }

    {
      site = "B5";
      class = "tumours";
      pdx = false;
      r1 = "m7/JJ/SHA256E-s1483201063--cd9bc3350bdf36dcb8628ac9c4fbc406ad617ebcef53ca9626c586be4171a26f.gz/SHA256E-s1483201063--cd9bc3350bdf36dcb8628ac9c4fbc406ad617ebcef53ca9626c586be4171a26f.gz";
      r2 = "G8/mk/SHA256E-s1494904533--9b203399f8d7261cc72c63b3d8db6cf2b657e6ecd5654c23bf8ffe95bb5adf8a.gz/SHA256E-s1494904533--9b203399f8d7261cc72c63b3d8db6cf2b657e6ecd5654c23bf8ffe95bb5adf8a.gz";
    }

    {
      site = "B5";
      class = "tumours";
      pdx = false;
      r1 = "pG/fG/SHA256E-s1471759436--d3f460ae0b44aba1eba1a84dacac18ce09aa92362625e74a51e35b66572c9c7c.gz/SHA256E-s1471759436--d3f460ae0b44aba1eba1a84dacac18ce09aa92362625e74a51e35b66572c9c7c.gz";
      r2 = "mZ/6P/SHA256E-s1485628883--44bc750052b5cb667430dd60a8d3b4d366c8b03daf98f7d201051f02f3c5cbe9.gz/SHA256E-s1485628883--44bc750052b5cb667430dd60a8d3b4d366c8b03daf98f7d201051f02f3c5cbe9.gz";
    }

    {
      site = "B5";
      class = "tumours";
      pdx = false;
      r1 = "J0/03/SHA256E-s1475123132--92fa625d78bd58cb32c2f7eb1c7203d53da450e973a95f452af5b874c9d2dbb0.gz/SHA256E-s1475123132--92fa625d78bd58cb32c2f7eb1c7203d53da450e973a95f452af5b874c9d2dbb0.gz";
      r2 = "fx/Xp/SHA256E-s1487475805--07e0fdbd2f209c8c7568d805b4baca0631803e8bebcc9de352eb023e01e93834.gz/SHA256E-s1487475805--07e0fdbd2f209c8c7568d805b4baca0631803e8bebcc9de352eb023e01e93834.gz";
    }

    {
      site = "B5";
      class = "tumours";
      pdx = false;
      r1 = "KF/M4/SHA256E-s1521720220--86e820ddec78612fe6e550407a08405d1214a9d624bf6d6d2dd3822391d0b0e1.gz/SHA256E-s1521720220--86e820ddec78612fe6e550407a08405d1214a9d624bf6d6d2dd3822391d0b0e1.gz";
      r2 = "q3/Q5/SHA256E-s1535514228--ab9dd9fac948b309a855d32fe50d1577e4aa2aae72b95d4369f2729a94b29f13.gz/SHA256E-s1535514228--ab9dd9fac948b309a855d32fe50d1577e4aa2aae72b95d4369f2729a94b29f13.gz";
    }

    {
      site = "B5";
      class = "tumours";
      pdx = false;
      r1 = "g4/pV/SHA256E-s1456578910--4fb88211b491b4ee0832d554c3b56544d6dd8d8d527d3f2e8fe5dcfbac89aa14.gz/SHA256E-s1456578910--4fb88211b491b4ee0832d554c3b56544d6dd8d8d527d3f2e8fe5dcfbac89aa14.gz";
      r2 = "98/7g/SHA256E-s1464839586--abed05ecb5cafa59b2515c50746ac508ebf0f212e2d4a54a651b3880f34a4358.gz/SHA256E-s1464839586--abed05ecb5cafa59b2515c50746ac508ebf0f212e2d4a54a651b3880f34a4358.gz";
    }

    {
      site = "B5";
      class = "tumours";
      pdx = false;
      r1 = "Wj/5W/SHA256E-s1526746871--b501edecc81614ceba6e637b207854e2ea3e08cce136f250f0445d1c7ddac7c6.gz/SHA256E-s1526746871--b501edecc81614ceba6e637b207854e2ea3e08cce136f250f0445d1c7ddac7c6.gz";
      r2 = "x4/gJ/SHA256E-s1539768281--8e0d729c697ecf3fb87989384a5cd20178c16265379c82d9416e8a1b96e9f035.gz/SHA256E-s1539768281--8e0d729c697ecf3fb87989384a5cd20178c16265379c82d9416e8a1b96e9f035.gz";
    }

    {
      site = "B5";
      class = "tumours";
      pdx = false;
      r1 = "fv/W5/SHA256E-s1427008187--93137abff6e92c59e1d0ff34f7df98e364dafd070bd4e8db6435447906be69d3.gz/SHA256E-s1427008187--93137abff6e92c59e1d0ff34f7df98e364dafd070bd4e8db6435447906be69d3.gz";
      r2 = "6q/zX/SHA256E-s1433405280--e93ee58d90a351143326d5ae271c156e4d50c7875c553124af68ab25fbe5aba8.gz/SHA256E-s1433405280--e93ee58d90a351143326d5ae271c156e4d50c7875c553124af68ab25fbe5aba8.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "x9/Q2/SHA256E-s941522143--72b33b431fd4f64e7a278bb75319c3a1fae2c66c4d0c964168b2acee75540cca.gz/SHA256E-s941522143--72b33b431fd4f64e7a278bb75319c3a1fae2c66c4d0c964168b2acee75540cca.gz";
      r2 = "4x/2G/SHA256E-s939277904--6338287cb9e2015a85a7855be21af426e601baac5efdb07af2c411110d1ae89b.gz/SHA256E-s939277904--6338287cb9e2015a85a7855be21af426e601baac5efdb07af2c411110d1ae89b.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "qk/6V/SHA256E-s947676150--43789054de58e72df8627d271ee666929d4f9c21ea595fe2665e975d60748fd2.gz/SHA256E-s947676150--43789054de58e72df8627d271ee666929d4f9c21ea595fe2665e975d60748fd2.gz";
      r2 = "1v/Fg/SHA256E-s944337929--cbf61f1477bd59860d84d50ea4dc191b6d49ef17ac9b7caedd2105d8adc01449.gz/SHA256E-s944337929--cbf61f1477bd59860d84d50ea4dc191b6d49ef17ac9b7caedd2105d8adc01449.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "z3/P3/SHA256E-s942788010--1150caace87c40f29301881ca2f8b1b20ae2a026cda8ff564da3f7f8628fd409.gz/SHA256E-s942788010--1150caace87c40f29301881ca2f8b1b20ae2a026cda8ff564da3f7f8628fd409.gz";
      r2 = "2g/26/SHA256E-s935674154--2a61eeaa8526cbc1076f71e97bcc4b69d2c4147c564060f3310dd2322076a15b.gz/SHA256E-s935674154--2a61eeaa8526cbc1076f71e97bcc4b69d2c4147c564060f3310dd2322076a15b.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0021";
    typeHla = true;
    capture = TwistV2HR;
  }
