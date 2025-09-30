with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "6";
      class = "tumours";
      pdx = false;
      r1 = "KK/wZ/SHA256E-s1756918606--a6e8e42eb70458a2636966acfc508405dfe43b499bf1753306c2047e8aa03ea3.gz/SHA256E-s1756918606--a6e8e42eb70458a2636966acfc508405dfe43b499bf1753306c2047e8aa03ea3.gz";
      r2 = "Fp/G9/SHA256E-s1765204760--93e2c05bfa1b16af44c92f3f46bdce90deab4209edbe9bfdd5b460078bc70969.gz/SHA256E-s1765204760--93e2c05bfa1b16af44c92f3f46bdce90deab4209edbe9bfdd5b460078bc70969.gz";
    }

    {
      site = "6";
      class = "tumours";
      pdx = false;
      r1 = "Zx/JQ/SHA256E-s1751431897--b1fc5116d7864ba5152bbcd52a2cbd870749e43d3fa109ccda95db219c95aa5e.gz/SHA256E-s1751431897--b1fc5116d7864ba5152bbcd52a2cbd870749e43d3fa109ccda95db219c95aa5e.gz";
      r2 = "6q/13/SHA256E-s1767989998--e31bba7095ea4e97280cdc27aff96ec31ac8b6ddaf48107bab25a4420b8c94ee.gz/SHA256E-s1767989998--e31bba7095ea4e97280cdc27aff96ec31ac8b6ddaf48107bab25a4420b8c94ee.gz";
    }

    {
      site = "6";
      class = "tumours";
      pdx = false;
      r1 = "g3/FW/SHA256E-s1756836263--4653e0c6e323dd36086eb80bf1d09ff267a612df2346980248fdca8e0d74210c.gz/SHA256E-s1756836263--4653e0c6e323dd36086eb80bf1d09ff267a612df2346980248fdca8e0d74210c.gz";
      r2 = "5M/xK/SHA256E-s1770374997--dd167fe089932678aed8a166a348f07e4d99ff97eb219e41d9de3859d7aa9ba5.gz/SHA256E-s1770374997--dd167fe089932678aed8a166a348f07e4d99ff97eb219e41d9de3859d7aa9ba5.gz";
    }

    {
      site = "6";
      class = "tumours";
      pdx = false;
      r1 = "mW/m8/SHA256E-s1650939615--28559556d0ebcd73adb6b4cff3ab02a73a777d9af36a9f7a959b1ed83a7eaeca.gz/SHA256E-s1650939615--28559556d0ebcd73adb6b4cff3ab02a73a777d9af36a9f7a959b1ed83a7eaeca.gz";
      r2 = "Zq/6F/SHA256E-s1673726448--786ce6152384098bd5832bec7fde455b23611b52482021af7838e539e155fb18.gz/SHA256E-s1673726448--786ce6152384098bd5832bec7fde455b23611b52482021af7838e539e155fb18.gz";
    }

    #    {
    #      site = "7";
    #      class = "tumours";
    #      pdx = false;
    #      r1 = "fz/3X/SHA256E-s481193084--a83482efe5d788c89c22eb6341e0424cb90ea197b208c13abb74d68d8a060056.gz/SHA256E-s481193084--a83482efe5d788c89c22eb6341e0424cb90ea197b208c13abb74d68d8a060056.gz";
    #      r2 = "WG/zv/SHA256E-s486786812--e70fa43d112ef43b67f204516909f06c111bb0a36d90679d816a2579305bbfce.gz/SHA256E-s486786812--e70fa43d112ef43b67f204516909f06c111bb0a36d90679d816a2579305bbfce.gz";
    #    }
    #
    #    {
    #      site = "7";
    #      class = "tumours";
    #      pdx = false;
    #      r1 = "QF/Fq/SHA256E-s491696126--2d54800559d6aabec9cd0357815cdd8097944876359a852d1a77518c3d16fea3.gz/SHA256E-s491696126--2d54800559d6aabec9cd0357815cdd8097944876359a852d1a77518c3d16fea3.gz";
    #      r2 = "gf/5x/SHA256E-s498969445--42679e0c42d9e8d0d9906d27cd6570a76573f16ec7cbfcd49a677962728d32c8.gz/SHA256E-s498969445--42679e0c42d9e8d0d9906d27cd6570a76573f16ec7cbfcd49a677962728d32c8.gz";
    #    }
    #
    #    {
    #      site = "7";
    #      class = "tumours";
    #      pdx = false;
    #      r1 = "P6/71/SHA256E-s494199783--86f804f67b0433f76953ef585213bef0b62e1fc62b4422c49d0845b93779d47e.gz/SHA256E-s494199783--86f804f67b0433f76953ef585213bef0b62e1fc62b4422c49d0845b93779d47e.gz";
    #      r2 = "kz/Gv/SHA256E-s502007474--ac24ab52b2d8180d9866ee7068bf07eaff2cce938c320cf4efaea1ba4ba32e3c.gz/SHA256E-s502007474--ac24ab52b2d8180d9866ee7068bf07eaff2cce938c320cf4efaea1ba4ba32e3c.gz";
    #    }
    #
    #    {
    #      site = "7";
    #      class = "tumours";
    #      pdx = false;
    #      r1 = "j0/Mg/SHA256E-s491850092--32aec56ae558adb1c805ededc66fce0784368a75ec42637d4ac05903458b0c8a.gz/SHA256E-s491850092--32aec56ae558adb1c805ededc66fce0784368a75ec42637d4ac05903458b0c8a.gz";
    #      r2 = "2q/xw/SHA256E-s499076366--c351b3a29eb1c2c315099ac14b1e9dbf4946c93dc4d3fb23c41cb1413383c4e5.gz/SHA256E-s499076366--c351b3a29eb1c2c315099ac14b1e9dbf4946c93dc4d3fb23c41cb1413383c4e5.gz";
    #    }
    #
    #    {
    #      site = "7";
    #      class = "tumours";
    #      pdx = false;
    #      r1 = "V2/xf/SHA256E-s501225013--adae048d3359963d51c2033aa5a75c81aca09d9d286e25cb7a9c01458a767904.gz/SHA256E-s501225013--adae048d3359963d51c2033aa5a75c81aca09d9d286e25cb7a9c01458a767904.gz";
    #      r2 = "WP/VG/SHA256E-s508889969--6534369fe2790160b0a0128a192f0c2eb9e4c718a1a070ee087393b0e2c84443.gz/SHA256E-s508889969--6534369fe2790160b0a0128a192f0c2eb9e4c718a1a070ee087393b0e2c84443.gz";
    #    }
    #
    #    {
    #      site = "7";
    #      class = "tumours";
    #      pdx = false;
    #      r1 = "G3/35/SHA256E-s513402415--dc4107e4a9ba3d542afbfe7ce4b3a7fd8cb90571ee8c3dfb0d36f25bd582c10f.gz/SHA256E-s513402415--dc4107e4a9ba3d542afbfe7ce4b3a7fd8cb90571ee8c3dfb0d36f25bd582c10f.gz";
    #      r2 = "jx/45/SHA256E-s519150263--44987601d5917e818c45a138ef9b97dd49d9d751965ac1b1fa92bb0ba1bf6273.gz/SHA256E-s519150263--44987601d5917e818c45a138ef9b97dd49d9d751965ac1b1fa92bb0ba1bf6273.gz";
    #    }
    #
    #    {
    #      site = "7";
    #      class = "tumours";
    #      pdx = false;
    #      r1 = "1f/8g/SHA256E-s500501444--b2f5d50fc792cf212a9aec9fcb604c50dfebafc2721b8422e637cf827c5a20fe.gz/SHA256E-s500501444--b2f5d50fc792cf212a9aec9fcb604c50dfebafc2721b8422e637cf827c5a20fe.gz";
    #      r2 = "7W/VJ/SHA256E-s507838837--bac4ad08f5bfe2b86e157b708610aae423a547b92f925310b1e35ce811aba32b.gz/SHA256E-s507838837--bac4ad08f5bfe2b86e157b708610aae423a547b92f925310b1e35ce811aba32b.gz";
    #    }
    #
    #    {
    #      site = "7";
    #      class = "tumours";
    #      pdx = false;
    #      r1 = "z6/QV/SHA256E-s502010287--2a8b0f9b3a9d686d3e10e1cc77e338f568fbc49c318def495e92e4a18f15220a.gz/SHA256E-s502010287--2a8b0f9b3a9d686d3e10e1cc77e338f568fbc49c318def495e92e4a18f15220a.gz";
    #      r2 = "QW/X7/SHA256E-s506636857--94888f331d6719529d0274e0e7885273c38d66d148447cad13155fc51b608cb7.gz/SHA256E-s506636857--94888f331d6719529d0274e0e7885273c38d66d148447cad13155fc51b608cb7.gz";
    #    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "v5/vQ/SHA256E-s631538556--f54b88f459e7dce2ae96b4de9cefa1c136c31388fa484dc91e879131a7adeb27.gz/SHA256E-s631538556--f54b88f459e7dce2ae96b4de9cefa1c136c31388fa484dc91e879131a7adeb27.gz";
      r2 = "GK/4Z/SHA256E-s637414358--5ac457129f4d26fe3f46a8cb961a553f0fcc5149fe61c780450c792d11f7420b.gz/SHA256E-s637414358--5ac457129f4d26fe3f46a8cb961a553f0fcc5149fe61c780450c792d11f7420b.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "q2/mg/SHA256E-s635825548--eecdce27d508d5abfcf64871ad77ab8b3643d80a4f720f4dd4652f992141547f.gz/SHA256E-s635825548--eecdce27d508d5abfcf64871ad77ab8b3643d80a4f720f4dd4652f992141547f.gz";
      r2 = "11/mZ/SHA256E-s645935949--eb37ee2caf2d17828e60581f637ce5aa6bc4dad125c61d10ca88cf2fc86d2804.gz/SHA256E-s645935949--eb37ee2caf2d17828e60581f637ce5aa6bc4dad125c61d10ca88cf2fc86d2804.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "6x/4m/SHA256E-s630560149--20a9434f964c0138eec92074665e8330d630a6be71657f1e3f96dd5529aafe07.gz/SHA256E-s630560149--20a9434f964c0138eec92074665e8330d630a6be71657f1e3f96dd5529aafe07.gz";
      r2 = "Jz/x2/SHA256E-s638809767--6beb6c90e8e554dbffb7346f1c90da506e7c4631ac3dd9d761535236f14372da.gz/SHA256E-s638809767--6beb6c90e8e554dbffb7346f1c90da506e7c4631ac3dd9d761535236f14372da.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "PZ/Pw/SHA256E-s673195224--eeaa7910a737e7599b4bcd57c9e7d44ba8cf326feda66bbdd71378b163bbf25c.gz/SHA256E-s673195224--eeaa7910a737e7599b4bcd57c9e7d44ba8cf326feda66bbdd71378b163bbf25c.gz";
      r2 = "MP/8f/SHA256E-s686800938--c7874213b21816ebacfc097f863b796fe338ada33619a5b6c7bf106b9d7bac51.gz/SHA256E-s686800938--c7874213b21816ebacfc097f863b796fe338ada33619a5b6c7bf106b9d7bac51.gz";
    }

    {
      site = "S3";
      class = "tumours";
      pdx = false;
      r1 = "gP/26/SHA256E-s4468510946--99bfa78615315b72ecaf9091f5dbeb5d1d8289ae0cd59c114e43e58834db030f.gz/SHA256E-s4468510946--99bfa78615315b72ecaf9091f5dbeb5d1d8289ae0cd59c114e43e58834db030f.gz";
      r2 = "qQ/9v/SHA256E-s4413185648--fdd4da2361bd4222a8ac29c8669cc5bdfac828f28797613dc0083218c9af4453.gz/SHA256E-s4413185648--fdd4da2361bd4222a8ac29c8669cc5bdfac828f28797613dc0083218c9af4453.gz";
    }

    {
      site = "S3";
      class = "tumours";
      pdx = false;
      r1 = "6Q/Jx/SHA256E-s4471517285--3c7f7b770afa87f43ce5161e4c2b542827e354bea07b18502606ce117e002ec3.gz/SHA256E-s4471517285--3c7f7b770afa87f43ce5161e4c2b542827e354bea07b18502606ce117e002ec3.gz";
      r2 = "ZZ/04/SHA256E-s4439116811--ce0afe5be47c4b5c7f2efcb8ad97c846651140f9e3a1d926d48349f1266cf890.gz/SHA256E-s4439116811--ce0afe5be47c4b5c7f2efcb8ad97c846651140f9e3a1d926d48349f1266cf890.gz";
    }

    {
      site = "S3";
      class = "tumours";
      pdx = false;
      r1 = "vQ/12/SHA256E-s4473094966--d0019c65f98df17829cbb6e123c779c09abfd896293931fad520fda0cfeaecaa.gz/SHA256E-s4473094966--d0019c65f98df17829cbb6e123c779c09abfd896293931fad520fda0cfeaecaa.gz";
      r2 = "2g/23/SHA256E-s4430489582--201798990016ffbce2ee96a6f130b8b9428814ecc0823291aa1c948bdc561fc2.gz/SHA256E-s4430489582--201798990016ffbce2ee96a6f130b8b9428814ecc0823291aa1c948bdc561fc2.gz";
    }

    {
      site = "S3";
      class = "tumours";
      pdx = false;
      r1 = "7X/8G/SHA256E-s4350501451--f9ec42453207ca312954e5c0f4d245b60a1ae52a8e3c019dd8ad368424dbd811.gz/SHA256E-s4350501451--f9ec42453207ca312954e5c0f4d245b60a1ae52a8e3c019dd8ad368424dbd811.gz";
      r2 = "46/52/SHA256E-s4330444738--714e098685bce3ab2c93f6fcae767a5f125c437ebc96a0eca9f245c3f90c6836.gz/SHA256E-s4330444738--714e098685bce3ab2c93f6fcae767a5f125c437ebc96a0eca9f245c3f90c6836.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "EMBRACE04";
    capture = TwistV2HR;
  }
