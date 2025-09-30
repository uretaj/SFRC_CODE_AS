with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "3H";
      class = "tumours";
      pdx = false;
      r1 = "76/ff/SHA256E-s22803608606--47a9ed15c91e036a3ab9ce1beec25a4f4d4c792381bd049147a9b5ea9f39b116.gz/SHA256E-s22803608606--47a9ed15c91e036a3ab9ce1beec25a4f4d4c792381bd049147a9b5ea9f39b116.gz";
      r2 = "K2/fw/SHA256E-s23564579657--e6c562755012ad74f7b2bca5ac38ef09c4af64e99c1ff9adcc04797b424a38aa.gz/SHA256E-s23564579657--e6c562755012ad74f7b2bca5ac38ef09c4af64e99c1ff9adcc04797b424a38aa.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "56/4v/SHA256E-s6354284508--debcfbb7561c335cbf4c87cf5ecf4028c8f86e73c731d1ef12a2b400dbe4e578.gz/SHA256E-s6354284508--debcfbb7561c335cbf4c87cf5ecf4028c8f86e73c731d1ef12a2b400dbe4e578.gz";
      r2 = "XW/V7/SHA256E-s6446757335--5327d914e144f454fdacc49dcae4ce1cfe2dd4afcad4696ebadc275830927904.gz/SHA256E-s6446757335--5327d914e144f454fdacc49dcae4ce1cfe2dd4afcad4696ebadc275830927904.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    name = "SOL2_0123";
    capture = CREv2;
  }
