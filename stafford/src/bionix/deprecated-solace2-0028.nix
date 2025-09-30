with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "germline";
      class = "normals";
      pdx = false;
      r1 = "kv/66/SHA256E-s3755426288--e0144ebc14ae247d0d15d3e87c79f6f35a59486ca7d45766b88672b75f5819de.gz/SHA256E-s3755426288--e0144ebc14ae247d0d15d3e87c79f6f35a59486ca7d45766b88672b75f5819de.gz";
      r2 = "G9/3P/SHA256E-s3631128463--70cd590bfc9c1224ff5519617edd917bf74d0e2dac0e0670328f022c7e28b31e.gz/SHA256E-s3631128463--70cd590bfc9c1224ff5519617edd917bf74d0e2dac0e0670328f022c7e28b31e.gz";
    }

    {
      site = "germline";
      class = "normals";
      pdx = false;
      r1 = "V6/z6/SHA256E-s1406321202--79c9e49634803d7d493b8456a9c0e9c2a93caa78d0fa8a1b7aaededd89b5afe5.gz/SHA256E-s1406321202--79c9e49634803d7d493b8456a9c0e9c2a93caa78d0fa8a1b7aaededd89b5afe5.gz";
      r2 = "FZ/Z3/SHA256E-s1492173126--4e976827f0b33a0f900bcf3b858aa508f4d5fcde800b8a368a92026ff1b82827.gz/SHA256E-s1492173126--4e976827f0b33a0f900bcf3b858aa508f4d5fcde800b8a368a92026ff1b82827.gz";
    }

    {
      site = "tumour";
      class = "tumours";
      pdx = false;
      r1 = "Q8/p0/SHA256E-s12046497600--073e18b583683f7d41261f2df716020a1335b5a447b2ee61448a3c9bf50a9424.gz/SHA256E-s12046497600--073e18b583683f7d41261f2df716020a1335b5a447b2ee61448a3c9bf50a9424.gz";
      r2 = "g4/zX/SHA256E-s10985386143--da782af6b9da2467f6a6c8123992d809216291e5436da5517ef2c0af522e5b7e.gz/SHA256E-s10985386143--da782af6b9da2467f6a6c8123992d809216291e5436da5517ef2c0af522e5b7e.gz";
    }

    {
      site = "tumour";
      class = "tumours";
      pdx = false;
      r1 = "gK/GZ/SHA256E-s5328245826--c26f434067771b4a7943ff54e6204e5ff389c71ae1c6841fc46ea21cbcf2ad53.gz/SHA256E-s5328245826--c26f434067771b4a7943ff54e6204e5ff389c71ae1c6841fc46ea21cbcf2ad53.gz";
      r2 = "Xw/XM/SHA256E-s5454901530--25f0397b854003f3019db8e4ad08f61e93e8427f3dd145e74e33688339b14921.gz/SHA256E-s5454901530--25f0397b854003f3019db8e4ad08f61e93e8427f3dd145e74e33688339b14921.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = true;
    name = "SOL2_0028";
  }
