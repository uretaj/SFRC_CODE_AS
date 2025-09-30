with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B11";
      class = "tumours";
      pdx = false;
      r1 = "vk/6Q/SHA256E-s14132452796--75d737c63fc38980d148e5789f7b94f4f78f73bd04529478abb00db8db2b4e35.gz/SHA256E-s14132452796--75d737c63fc38980d148e5789f7b94f4f78f73bd04529478abb00db8db2b4e35.gz";
      r2 = "x8/47/SHA256E-s14561507985--df38534d31b9992ffe52e87c26b14f9c3ddf938f16d9a2c0fd0a3769af0553b5.gz/SHA256E-s14561507985--df38534d31b9992ffe52e87c26b14f9c3ddf938f16d9a2c0fd0a3769af0553b5.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "mq/fw/SHA256E-s6419846600--e4f86d8704bf9667cd184bc2968c325660793023dd54945220ddf1ed593a6799.gz/SHA256E-s6419846600--e4f86d8704bf9667cd184bc2968c325660793023dd54945220ddf1ed593a6799.gz";
      r2 = "Wz/gK/SHA256E-s6886692794--14147f4f2ddb8d3f3624a77c589c5516c10a275b5e43701ac1e039925b1943c5.gz/SHA256E-s6886692794--14147f4f2ddb8d3f3624a77c589c5516c10a275b5e43701ac1e039925b1943c5.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SOL2_0138";
  }
