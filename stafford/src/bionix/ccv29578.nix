with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "8q/7Q/SHA256E-s2679210303--e7ba8ac77d1c71b42b2c55bb6dd75539509ef15db1af624d3ad6475ed00ca565.gz/SHA256E-s2679210303--e7ba8ac77d1c71b42b2c55bb6dd75539509ef15db1af624d3ad6475ed00ca565.gz";
      r2 = "6w/80/SHA256E-s2691116654--e4ad1e3d443a2b909fa25a64043aa9b15cc1ff2af154b9431c9dc177d98ae1e0.gz/SHA256E-s2691116654--e4ad1e3d443a2b909fa25a64043aa9b15cc1ff2af154b9431c9dc177d98ae1e0.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "1j/29/SHA256E-s2700113968--ca02916a4bcf3fb306a08adb4252ab39baca290d2660c132e3a4f9db1c75a2b7.gz/SHA256E-s2700113968--ca02916a4bcf3fb306a08adb4252ab39baca290d2660c132e3a4f9db1c75a2b7.gz";
      r2 = "wJ/Xg/SHA256E-s2711773221--fb8b518c812fcce1cc8b00a608bc168e63582c7e0088977117daf8577d63dee6.gz/SHA256E-s2711773221--fb8b518c812fcce1cc8b00a608bc168e63582c7e0088977117daf8577d63dee6.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV29578";
  }
