with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A9";
      class = "tumours";
      pdx = false;
      r1 = "qf/5z/SHA256E-s12298705406--e080adce358e7f9c0f441a751e2171817ca7ad45707a1200117f4b973c05180a.gz/SHA256E-s12298705406--e080adce358e7f9c0f441a751e2171817ca7ad45707a1200117f4b973c05180a.gz";
      r2 = "v9/fj/SHA256E-s12410191531--e08d100c6ba03ca777544321dd7a74468ee02eff3b6a142b466903b9406fdf79.gz/SHA256E-s12410191531--e08d100c6ba03ca777544321dd7a74468ee02eff3b6a142b466903b9406fdf79.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "PP/4k/SHA256E-s5806173684--166014aeb6676192d353c37aaf0a0bb53472b4d30e081371bc902fc48a9df1ec.gz/SHA256E-s5806173684--166014aeb6676192d353c37aaf0a0bb53472b4d30e081371bc902fc48a9df1ec.gz";
      r2 = "VK/Zx/SHA256E-s6142684272--fddd576bd5c0f14d99cdf3b434a390ad957955b0d97d07c15624d9496aae2c44.gz/SHA256E-s6142684272--fddd576bd5c0f14d99cdf3b434a390ad957955b0d97d07c15624d9496aae2c44.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = true;
    name = "SOL2_0009";
  }
