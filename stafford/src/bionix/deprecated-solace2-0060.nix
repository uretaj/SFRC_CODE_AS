with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "wK/vp/SHA256E-s15081923095--65b2b34bca59fadcea3ad549a9b7f399e06044bc5d35247ee23e710f1f16441b.gz/SHA256E-s15081923095--65b2b34bca59fadcea3ad549a9b7f399e06044bc5d35247ee23e710f1f16441b.gz";
      r2 = "4w/pF/SHA256E-s15599247399--3ef10184c72cb93fec1826dbd3719b28c6dcbd03e396ba91b23f49a36dbbc7f4.gz/SHA256E-s15599247399--3ef10184c72cb93fec1826dbd3719b28c6dcbd03e396ba91b23f49a36dbbc7f4.gz";
    }
    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Mv/WJ/SHA256E-s5930678527--f27e619338b4938586f70c0dec048b42a39bdaba126aee6c1bb4c8695b691561.gz/SHA256E-s5930678527--f27e619338b4938586f70c0dec048b42a39bdaba126aee6c1bb4c8695b691561.gz";
      r2 = "pG/6g/SHA256E-s6262178539--76ee624cb28a68b6112aac59006f118cb669d5c5318626b998a359b56062349b.gz/SHA256E-s6262178539--76ee624cb28a68b6112aac59006f118cb669d5c5318626b998a359b56062349b.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SOL2_0060";
  }
