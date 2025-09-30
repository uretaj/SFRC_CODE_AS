with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1.3";
      class = "tumours";
      pdx = false;
      r1 = "FZ/vQ/SHA256E-s3071437443--004a3ff5b7aeabf0f4dc3c32f98d90f7317601f5ac69bca0bae9afee3e72ea3d.gz/SHA256E-s3071437443--004a3ff5b7aeabf0f4dc3c32f98d90f7317601f5ac69bca0bae9afee3e72ea3d.gz";
      r2 = "z3/9Q/SHA256E-s3032133528--35921a396332550161b17a29c82ddfaa334a4183b0bca5548d98b51d94c24319.gz/SHA256E-s3032133528--35921a396332550161b17a29c82ddfaa334a4183b0bca5548d98b51d94c24319.gz";
    }

    {
      site = "1.3";
      class = "tumours";
      pdx = false;
      r1 = "KF/XM/SHA256E-s3061836461--dee9030749729581df1b8a41accf9e9bced5337763fb3c7e980c89a42b376516.gz/SHA256E-s3061836461--dee9030749729581df1b8a41accf9e9bced5337763fb3c7e980c89a42b376516.gz";
      r2 = "qw/J8/SHA256E-s3038473762--f7b8722a2b6faca638c5fa58ff2743d46acb0097cec566940b23ddc674442f77.gz/SHA256E-s3038473762--f7b8722a2b6faca638c5fa58ff2743d46acb0097cec566940b23ddc674442f77.gz";
    }

    {
      site = "1.3";
      class = "tumours";
      pdx = false;
      r1 = "w4/G0/SHA256E-s3065577838--01a7c53085b505afc1a7923f81ec82062d16ca2e4057089665cb4fe7946e7928.gz/SHA256E-s3065577838--01a7c53085b505afc1a7923f81ec82062d16ca2e4057089665cb4fe7946e7928.gz";
      r2 = "2J/ZW/SHA256E-s3035914912--5b026408d792472ff0d3483a8a09a52075e2325246ef4d2299b9b300598762d8.gz/SHA256E-s3035914912--5b026408d792472ff0d3483a8a09a52075e2325246ef4d2299b9b300598762d8.gz";
    }

    {
      site = "1.3";
      class = "tumours";
      pdx = false;
      r1 = "g8/jK/SHA256E-s2938443000--2edbf2774b1692a2b00b50694b9c26d95c3949cfec0b82c290e70f5792b354e9.gz/SHA256E-s2938443000--2edbf2774b1692a2b00b50694b9c26d95c3949cfec0b82c290e70f5792b354e9.gz";
      r2 = "3g/80/SHA256E-s2927153798--3e216843dc799d42ba0af6c8fdcbd699a8e947422ea6a740e4911b2812626ec0.gz/SHA256E-s2927153798--3e216843dc799d42ba0af6c8fdcbd699a8e947422ea6a740e4911b2812626ec0.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "zf/gX/SHA256E-s722275401--0837bb6cc44e1db2cbe45a215d848ac947e637f439f761733bf15f8e9d3cc79d.gz/SHA256E-s722275401--0837bb6cc44e1db2cbe45a215d848ac947e637f439f761733bf15f8e9d3cc79d.gz";
      r2 = "QX/XG/SHA256E-s727041355--fdcf0bc7a518f86fb5376baf9c5731d934112c66cb739d1ad8e20ce3cfe5a77f.gz/SHA256E-s727041355--fdcf0bc7a518f86fb5376baf9c5731d934112c66cb739d1ad8e20ce3cfe5a77f.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "mJ/XG/SHA256E-s726095297--039f3d5734fde299967b81e1a45606ee196cb47fb85cd15df423a1c3df9947ca.gz/SHA256E-s726095297--039f3d5734fde299967b81e1a45606ee196cb47fb85cd15df423a1c3df9947ca.gz";
      r2 = "wZ/X3/SHA256E-s735687938--5c0f09acd51b1492e3d61c39784b41b66bc570f10c9f3c6e62998b8174f1e3c3.gz/SHA256E-s735687938--5c0f09acd51b1492e3d61c39784b41b66bc570f10c9f3c6e62998b8174f1e3c3.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "9g/qP/SHA256E-s720167395--28fe4c9845740e30d63eaef91d7507d7e2e410af3aa99efb8792b6e95030f4b1.gz/SHA256E-s720167395--28fe4c9845740e30d63eaef91d7507d7e2e410af3aa99efb8792b6e95030f4b1.gz";
      r2 = "g4/qk/SHA256E-s727641665--e161ffd5d59a236403994ce2011cf6ddd0ee9207c6589f558c4c700e71477fe1.gz/SHA256E-s727641665--e161ffd5d59a236403994ce2011cf6ddd0ee9207c6589f558c4c700e71477fe1.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "W0/Q8/SHA256E-s769792710--e1076a66ac41f2882fa30dd462783875dc5eee8c8a05f9a552ded4116200f868.gz/SHA256E-s769792710--e1076a66ac41f2882fa30dd462783875dc5eee8c8a05f9a552ded4116200f868.gz";
      r2 = "2K/WG/SHA256E-s783596375--065527ebf4d8f45619f883d351e8d57f0921129a4f98aa82b781640e7c6d4032.gz/SHA256E-s783596375--065527ebf4d8f45619f883d351e8d57f0921129a4f98aa82b781640e7c6d4032.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "EMBRACE09";
    capture = TwistV2HR;
  }
