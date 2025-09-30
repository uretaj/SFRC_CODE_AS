with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A12";
      class = "tumours";
      pdx = false;
      r1 = "gv/0m/SHA256E-s888310527--06736e72e141a274042e7ebbbd5869e5b6bab3d7aacc978d2ab8c78a6e870471.gz/SHA256E-s888310527--06736e72e141a274042e7ebbbd5869e5b6bab3d7aacc978d2ab8c78a6e870471.gz";
      r2 = "mk/x7/SHA256E-s886508959--10ac5b7b6d9be014ff02d46b97e167b255e0b38222e188855007fa3ed32ba7ab.gz/SHA256E-s886508959--10ac5b7b6d9be014ff02d46b97e167b255e0b38222e188855007fa3ed32ba7ab.gz";
    }

    {
      site = "A12";
      class = "tumours";
      pdx = false;
      r1 = "43/Q7/SHA256E-s920894473--af869bc022a5a6f1bb1c177d1fac0494e42d955c67771f75c41348556d4edcd6.gz/SHA256E-s920894473--af869bc022a5a6f1bb1c177d1fac0494e42d955c67771f75c41348556d4edcd6.gz";
      r2 = "84/93/SHA256E-s922113792--2c8eb7b393b58b99b2d963fb2fc8b35ea623b24793b5fdf6b97f3f35867d0df9.gz/SHA256E-s922113792--2c8eb7b393b58b99b2d963fb2fc8b35ea623b24793b5fdf6b97f3f35867d0df9.gz";
    }

    {
      site = "A12";
      class = "tumours";
      pdx = false;
      r1 = "jX/V1/SHA256E-s916320008--ab9bc5410f9f300beac688d3b18512b26c0cdd70bd9598c22179a4b44f099129.gz/SHA256E-s916320008--ab9bc5410f9f300beac688d3b18512b26c0cdd70bd9598c22179a4b44f099129.gz";
      r2 = "ZZ/1Z/SHA256E-s918527234--077f545da708427db5f662eda618e61d0bcd5a94106060700ae216986584f26d.gz/SHA256E-s918527234--077f545da708427db5f662eda618e61d0bcd5a94106060700ae216986584f26d.gz";
    }

    {
      site = "A12";
      class = "tumours";
      pdx = false;
      r1 = "f8/GJ/SHA256E-s915988152--29cb5be6eec2ac58bb67d3e58f5f23a5f0be7b3284158ef9534e7fc45893bb5b.gz/SHA256E-s915988152--29cb5be6eec2ac58bb67d3e58f5f23a5f0be7b3284158ef9534e7fc45893bb5b.gz";
      r2 = "wx/jW/SHA256E-s917519610--24bfcf26cd86c1bc10dc24bc2fafeb610454b85fa6aa3d270e8d818b98f4002f.gz/SHA256E-s917519610--24bfcf26cd86c1bc10dc24bc2fafeb610454b85fa6aa3d270e8d818b98f4002f.gz";
    }

    {
      site = "A12";
      class = "tumours";
      pdx = false;
      r1 = "q8/0v/SHA256E-s941481289--f97e624edc54b610c58b7730e3f176c49b9fa973960d3566b554ed083a7d7789.gz/SHA256E-s941481289--f97e624edc54b610c58b7730e3f176c49b9fa973960d3566b554ed083a7d7789.gz";
      r2 = "8J/45/SHA256E-s943774711--9adbdc42c5b3af21af946aec69b71ae715e5f4cb12ee03d6e06a256555caedb7.gz/SHA256E-s943774711--9adbdc42c5b3af21af946aec69b71ae715e5f4cb12ee03d6e06a256555caedb7.gz";
    }

    {
      site = "A12";
      class = "tumours";
      pdx = false;
      r1 = "85/Zj/SHA256E-s926883055--fb072747608789b944e77deb0a3a66275d15a46837662f11bad05444df8a4d9e.gz/SHA256E-s926883055--fb072747608789b944e77deb0a3a66275d15a46837662f11bad05444df8a4d9e.gz";
      r2 = "22/zP/SHA256E-s925301829--1c316a29c4ac0e1f1fbc5279d9a8808a99a33d77464e44f529d1b31f857b87be.gz/SHA256E-s925301829--1c316a29c4ac0e1f1fbc5279d9a8808a99a33d77464e44f529d1b31f857b87be.gz";
    }

    {
      site = "A12";
      class = "tumours";
      pdx = false;
      r1 = "P1/jp/SHA256E-s944196639--1abc641ed0dc6b791f4b3efd1cd7b5dcd551a5d60317f7c382f22a4a9354a292.gz/SHA256E-s944196639--1abc641ed0dc6b791f4b3efd1cd7b5dcd551a5d60317f7c382f22a4a9354a292.gz";
      r2 = "f8/gM/SHA256E-s945830429--3f032ddf7ccdbd81899138b22c236eaa3d25d2f55c1e2b910da6373d584a968a.gz/SHA256E-s945830429--3f032ddf7ccdbd81899138b22c236eaa3d25d2f55c1e2b910da6373d584a968a.gz";
    }

    {
      site = "A12";
      class = "tumours";
      pdx = false;
      r1 = "2k/ZW/SHA256E-s908482328--3e2442ba9857f6d7d47ff03193becbcbcac42cb2f4b2da475c4f38d86fbcea9a.gz/SHA256E-s908482328--3e2442ba9857f6d7d47ff03193becbcbcac42cb2f4b2da475c4f38d86fbcea9a.gz";
      r2 = "fK/X4/SHA256E-s905331634--1d60905f2c22faddc4a911590048483c29ff310a206e9258a57c5ea181f28a8d.gz/SHA256E-s905331634--1d60905f2c22faddc4a911590048483c29ff310a206e9258a57c5ea181f28a8d.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "3M/0V/SHA256E-s784447719--ef485524108f5bb42c13b323f6201714b2b42e14901a635a485a4233dafd6d34.gz/SHA256E-s784447719--ef485524108f5bb42c13b323f6201714b2b42e14901a635a485a4233dafd6d34.gz";
      r2 = "z0/mw/SHA256E-s791759736--0f9bc03b2f94917ebae62e53a2d9d178ab7bc1c4943b0fba3290d5306f1e9a43.gz/SHA256E-s791759736--0f9bc03b2f94917ebae62e53a2d9d178ab7bc1c4943b0fba3290d5306f1e9a43.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "6J/PZ/SHA256E-s799647659--a6a2ab448537a03e8a9bb02d017b3d532b1bdc246ce3dffe9c7663b4b80124ee.gz/SHA256E-s799647659--a6a2ab448537a03e8a9bb02d017b3d532b1bdc246ce3dffe9c7663b4b80124ee.gz";
      r2 = "fM/VP/SHA256E-s805828272--a1b5268116203e5e922f71d75fa1e55acd36cb4d88fb227eea68d6885fd95c37.gz/SHA256E-s805828272--a1b5268116203e5e922f71d75fa1e55acd36cb4d88fb227eea68d6885fd95c37.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "71/mX/SHA256E-s805999776--352b999d48d5dec8dd4e72c2098cbb938b114bf830f0df5f27ee0d2958f97d83.gz/SHA256E-s805999776--352b999d48d5dec8dd4e72c2098cbb938b114bf830f0df5f27ee0d2958f97d83.gz";
      r2 = "2v/Vw/SHA256E-s808414554--4601c5f86fabfd60becb1bd9ee931939d0f4240b2445baf8b475819743b24510.gz/SHA256E-s808414554--4601c5f86fabfd60becb1bd9ee931939d0f4240b2445baf8b475819743b24510.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0003";
    typeHla = true;
    capture = TwistV2HR;
  }
