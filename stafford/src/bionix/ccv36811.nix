with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "X8/2x/SHA256E-s4602984760--ebc27ee59c53023fecb87fe18e0e220d065400a10fdd27b5d76598af79880d5c.gz/SHA256E-s4602984760--ebc27ee59c53023fecb87fe18e0e220d065400a10fdd27b5d76598af79880d5c.gz";
      r2 = "vw/Xq/SHA256E-s4705612392--100811036fe09d50ff6ab2ea02d70417b3c9df04b920013aaba802292918fcfe.gz/SHA256E-s4705612392--100811036fe09d50ff6ab2ea02d70417b3c9df04b920013aaba802292918fcfe.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "qQ/zG/SHA256E-s4650094064--528376398e0fa600f5b19b95a1c91b703e2c80a4f0519599d447bd999cbed1ad.gz/SHA256E-s4650094064--528376398e0fa600f5b19b95a1c91b703e2c80a4f0519599d447bd999cbed1ad.gz";
      r2 = "qK/mq/SHA256E-s4752812130--751637cf46c90bfc3fcde3690fc7de9ae2a3ffce88ab11d3ff981796b6e792f8.gz/SHA256E-s4752812130--751637cf46c90bfc3fcde3690fc7de9ae2a3ffce88ab11d3ff981796b6e792f8.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV36811";
  }
