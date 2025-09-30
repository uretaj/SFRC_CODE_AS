with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "Block2.6";
      class = "tumours";
      pdx = false;
      r1 = "Pv/fP/SHA256E-s13876422932--a50274fbd5376d93755e1084be70d6836461fef9d9612309ac230fefee406c8c.gz/SHA256E-s13876422932--a50274fbd5376d93755e1084be70d6836461fef9d9612309ac230fefee406c8c.gz";
      r2 = "9M/0M/SHA256E-s14410175553--df06d0ee40d2c3e34c089bfddb46c8f79905a66559dec66c960a41a31c40729f.gz/SHA256E-s14410175553--df06d0ee40d2c3e34c089bfddb46c8f79905a66559dec66c960a41a31c40729f.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "2g/wp/SHA256E-s7081938305--0c81921dec837855ba81c93b7bec7e80fdef26fb4194f27c5aa22d30e1d96493.gz/SHA256E-s7081938305--0c81921dec837855ba81c93b7bec7e80fdef26fb4194f27c5aa22d30e1d96493.gz";
      r2 = "4F/VQ/SHA256E-s7611068593--dfa73ae87e038ddc39181416b1f80ab682b12dbf9995f0ccc68bcd594b5198ec.gz/SHA256E-s7611068593--dfa73ae87e038ddc39181416b1f80ab682b12dbf9995f0ccc68bcd594b5198ec.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SOL2_0031";
  }
