with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "germline";
      class = "normals";
      pdx = false;
      r1 = "Mf/zJ/SHA256E-s3879193768--91566087f5967fc8b14d2f027167b2ab911c925cd1f91dbbeee8c8c36db6cece.gz/SHA256E-s3879193768--91566087f5967fc8b14d2f027167b2ab911c925cd1f91dbbeee8c8c36db6cece.gz";
      r2 = "FQ/w3/SHA256E-s3765177490--13b5bee584fa38d0c2cbd411fa2ff0e33d5c43f098b0b4be3b4524016b04ac4a.gz/SHA256E-s3765177490--13b5bee584fa38d0c2cbd411fa2ff0e33d5c43f098b0b4be3b4524016b04ac4a.gz";
    }

    {
      site = "germline";
      class = "normals";
      pdx = false;
      r1 = "xq/vM/SHA256E-s1422393364--b518ea3f70d35df5f33ebcd2839959d2f89c2c7e3b0609e266394b9439d9d6e9.gz/SHA256E-s1422393364--b518ea3f70d35df5f33ebcd2839959d2f89c2c7e3b0609e266394b9439d9d6e9.gz";
      r2 = "gj/8z/SHA256E-s1513499216--904f7610751027e0b28aa1ad41084ee970d8f16b53c50ba40a44d7c87386aa37.gz/SHA256E-s1513499216--904f7610751027e0b28aa1ad41084ee970d8f16b53c50ba40a44d7c87386aa37.gz";
    }

    {
      site = "tumour";
      class = "tumours";
      pdx = false;
      r1 = "6X/Z5/SHA256E-s14131907664--b57c1d7493fb4f473475d34d9baf7065ac2937d8d67e87a9a8edd672991ce655.gz/SHA256E-s14131907664--b57c1d7493fb4f473475d34d9baf7065ac2937d8d67e87a9a8edd672991ce655.gz";
      r2 = "WP/xJ/SHA256E-s12861474257--f06c862d363cb7fefeecd0419d7fee485c91e779ea7c7e97938dab588803d01a.gz/SHA256E-s12861474257--f06c862d363cb7fefeecd0419d7fee485c91e779ea7c7e97938dab588803d01a.gz";
    }

    {
      site = "tumour";
      class = "tumours";
      pdx = false;
      r1 = "QW/93/SHA256E-s6075711741--a7ed19d2e899169253aec96ad458e4058316ccb296e1aa1cb393d36b64927696.gz/SHA256E-s6075711741--a7ed19d2e899169253aec96ad458e4058316ccb296e1aa1cb393d36b64927696.gz";
      r2 = "Xm/j0/SHA256E-s6209174222--0a25b963729681c55230bded6af150a56c0e27b0741a93a0c50e374630fb4850.gz/SHA256E-s6209174222--0a25b963729681c55230bded6af150a56c0e27b0741a93a0c50e374630fb4850.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = true;
    name = "SOL2_0024";
  }
