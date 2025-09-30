with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "5V/Zw/SHA256E-s3387000578--a5a7b3fa10a38ecd05d059d80fd0731c44acd9b2ad92ce097d37392fc720c744.gz/SHA256E-s3387000578--a5a7b3fa10a38ecd05d059d80fd0731c44acd9b2ad92ce097d37392fc720c744.gz";
      r2 = "GX/pM/SHA256E-s3186889347--dbd7abd2c27692875cf2f3b6c87bc9115bf27b0aa5d9b09021b9187887686ce2.gz/SHA256E-s3186889347--dbd7abd2c27692875cf2f3b6c87bc9115bf27b0aa5d9b09021b9187887686ce2.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "J0/vp/SHA256E-s1441573722--e6b632cd29fd49fbbea30d03d1b47a101ef21a9d91799cc911dc920035c32d79.gz/SHA256E-s1441573722--e6b632cd29fd49fbbea30d03d1b47a101ef21a9d91799cc911dc920035c32d79.gz";
      r2 = "3v/pJ/SHA256E-s1504984157--1027acc21187488107831423bd09a91bf6cc2dd676690725ef0ff33471cfb060.gz/SHA256E-s1504984157--1027acc21187488107831423bd09a91bf6cc2dd676690725ef0ff33471cfb060.gz";
    }

    {
      site = "C1";
      class = "tumours";
      pdx = false;
      r1 = "7f/q5/SHA256E-s15098555655--68fc78168b0c3836df6b1bcbf13716af8b92ff8ac9a9139b4d3e7f7d71450fd4.gz/SHA256E-s15098555655--68fc78168b0c3836df6b1bcbf13716af8b92ff8ac9a9139b4d3e7f7d71450fd4.gz";
      r2 = "3f/gp/SHA256E-s13944619727--6836a5281a533a6e5b8445ac2838e8c8a45b8998137fbbe1648de5bd7e5aa912.gz/SHA256E-s13944619727--6836a5281a533a6e5b8445ac2838e8c8a45b8998137fbbe1648de5bd7e5aa912.gz";
    }

    {
      site = "C1";
      class = "tumours";
      pdx = false;
      r1 = "pX/ZQ/SHA256E-s6443770695--b23b6da8ef62d68c0cad55513bd964afd5c33adbd9e3851189c618c5714c2ddb.gz/SHA256E-s6443770695--b23b6da8ef62d68c0cad55513bd964afd5c33adbd9e3851189c618c5714c2ddb.gz";
      r2 = "Qz/3X/SHA256E-s6608901573--7ea8f18fe80632d061558df08c2a3ebd3ceeaeea528a7f2513a580cce720b1f8.gz/SHA256E-s6608901573--7ea8f18fe80632d061558df08c2a3ebd3ceeaeea528a7f2513a580cce720b1f8.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "PH592";
  }
