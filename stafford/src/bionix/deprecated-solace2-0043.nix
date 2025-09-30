with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2A";
      class = "tumours";
      pdx = false;
      r1 = "mV/Pz/SHA256E-s13555624588--04d1300fd2d3a7a4d2b40de5aef6a5d7909e8f64096e1c1ff7994f4eab9da397.gz/SHA256E-s13555624588--04d1300fd2d3a7a4d2b40de5aef6a5d7909e8f64096e1c1ff7994f4eab9da397.gz";
      r2 = "gg/6z/SHA256E-s14342878418--c398ade80689c61169d09565113cd629d08f037da285a13280473d54451ccbb7.gz/SHA256E-s14342878418--c398ade80689c61169d09565113cd629d08f037da285a13280473d54451ccbb7.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "2G/GV/SHA256E-s6363082882--4b2c3f4130d762d3ecc98d32e9c4b08f1c5f08b12a5f1f0b4427d14f493c92ef.gz/SHA256E-s6363082882--4b2c3f4130d762d3ecc98d32e9c4b08f1c5f08b12a5f1f0b4427d14f493c92ef.gz";
      r2 = "9K/2z/SHA256E-s6781393055--a6ad55ebc700080100177a13322d1ffb386e0659af355b1141411834ed57ed84.gz/SHA256E-s6781393055--a6ad55ebc700080100177a13322d1ffb386e0659af355b1141411834ed57ed84.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SOL2_0043";
  }
