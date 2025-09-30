with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1H";
      class = "tumours";
      pdx = false;
      r1 = "jZ/gK/SHA256E-s20847906758--8e584d3aced79ffa07b8229fa9e6167121366f22898e47a7822e59942ef826bd.gz/SHA256E-s20847906758--8e584d3aced79ffa07b8229fa9e6167121366f22898e47a7822e59942ef826bd.gz";
      r2 = "zx/62/SHA256E-s21621217139--da81f2adb486554d22a89b88ef507a25954b2798a5cf43274baef32cedb8c63e.gz/SHA256E-s21621217139--da81f2adb486554d22a89b88ef507a25954b2798a5cf43274baef32cedb8c63e.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "xQ/kz/SHA256E-s6842114697--e04191279ed8e9013f5d9c710b542e083b0f3e2429b17535fe67a7e113738eb6.gz/SHA256E-s6842114697--e04191279ed8e9013f5d9c710b542e083b0f3e2429b17535fe67a7e113738eb6.gz";
      r2 = "9g/43/SHA256E-s7089283055--704c6af4025cdac56d81ee6462c69bd3275e3911e45d7519233724fd6eb667b0.gz/SHA256E-s7089283055--704c6af4025cdac56d81ee6462c69bd3275e3911e45d7519233724fd6eb667b0.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    name = "SOL2_0126";
    capture = CREv2;
  }
