with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "germline";
      class = "normals";
      pdx = false;
      r1 = "1m/x0/SHA256E-s4096570923--e6a4f642a2b848bed18b685764992b6d856c70e8c95035253d8cd1f5a593fdeb.gz/SHA256E-s4096570923--e6a4f642a2b848bed18b685764992b6d856c70e8c95035253d8cd1f5a593fdeb.gz";
      r2 = "6j/wj/SHA256E-s3929009555--7ad0a329145bed7a5904fc6971cb6a1648a85b1b26dbb19b443c3ff67f094b0d.gz/SHA256E-s3929009555--7ad0a329145bed7a5904fc6971cb6a1648a85b1b26dbb19b443c3ff67f094b0d.gz";
    }

    {
      site = "germline";
      class = "normals";
      pdx = false;
      r1 = "p4/gK/SHA256E-s1494210806--abb41783ef4e755fd9872dd1d1b780299b20d2c017899ed8aa7d286828abd19e.gz/SHA256E-s1494210806--abb41783ef4e755fd9872dd1d1b780299b20d2c017899ed8aa7d286828abd19e.gz";
      r2 = "4V/qQ/SHA256E-s1570811211--586d3a2d3b79262ba87092a86c7632d3aa5adff8cf39c0a927346867a02036b3.gz/SHA256E-s1570811211--586d3a2d3b79262ba87092a86c7632d3aa5adff8cf39c0a927346867a02036b3.gz";
    }

    {
      site = "tumour";
      class = "tumours";
      pdx = false;
      r1 = "km/mZ/SHA256E-s9965051599--d26ac9391bc59ec689766b08fb11c44b9fdd849cd756214bee0f3731f3d4a812.gz/SHA256E-s9965051599--d26ac9391bc59ec689766b08fb11c44b9fdd849cd756214bee0f3731f3d4a812.gz";
      r2 = "0q/z4/SHA256E-s9012473564--8c7a8ccc7e3152523b3b564bc40bba0e05a91a5ef2dae22b1152f55969d3a6e0.gz/SHA256E-s9012473564--8c7a8ccc7e3152523b3b564bc40bba0e05a91a5ef2dae22b1152f55969d3a6e0.gz";
    }

    {
      site = "tumour";
      class = "tumours";
      pdx = false;
      r1 = "82/gw/SHA256E-s4336174927--5d7a39afe757adf99cac9662cf6fee9bfbde801e80f65f4a01ad3e92f91715a7.gz/SHA256E-s4336174927--5d7a39afe757adf99cac9662cf6fee9bfbde801e80f65f4a01ad3e92f91715a7.gz";
      r2 = "J5/20/SHA256E-s4397686860--424adb3a72f4792c55af893171d9c15dff613ee7f37b54d7747b5a41ef4ee789.gz/SHA256E-s4397686860--424adb3a72f4792c55af893171d9c15dff613ee7f37b54d7747b5a41ef4ee789.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = true;
    name = "SOL2_0027";
  }
