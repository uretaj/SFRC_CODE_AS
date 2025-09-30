with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "59/4V/SHA256E-s568315802--626bdbb650b08160d731abc48bfb9ca52d0cb5870eac657966e685681b0fdd30.gz/SHA256E-s568315802--626bdbb650b08160d731abc48bfb9ca52d0cb5870eac657966e685681b0fdd30.gz";
      r2 = "61/K0/SHA256E-s569945595--78bd28c3ccdf89643398739a8eb282f3e6ff9ab312ceb92434f31ca14d5440db.gz/SHA256E-s569945595--78bd28c3ccdf89643398739a8eb282f3e6ff9ab312ceb92434f31ca14d5440db.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "3v/3W/SHA256E-s590390396--dee95a655f2be81d29b88428cc54e80e84b048759f1b986ad6f9456ba003a015.gz/SHA256E-s590390396--dee95a655f2be81d29b88428cc54e80e84b048759f1b986ad6f9456ba003a015.gz";
      r2 = "f8/Mj/SHA256E-s593370034--cef1066641779dba80e1be48c9ffdda9009b28481800ac17c3cc4f47aeb7bd9f.gz/SHA256E-s593370034--cef1066641779dba80e1be48c9ffdda9009b28481800ac17c3cc4f47aeb7bd9f.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "80/GQ/SHA256E-s580934879--31dcddebbed2fdbfcc5d4be5a19219172789b6e1044a6e627800425081465f3f.gz/SHA256E-s580934879--31dcddebbed2fdbfcc5d4be5a19219172789b6e1044a6e627800425081465f3f.gz";
      r2 = "Z7/0v/SHA256E-s584691682--05570ef4cc7d03b7104bbc161897b393a540f0b310f089fe0b9d55d6a0e7e202.gz/SHA256E-s584691682--05570ef4cc7d03b7104bbc161897b393a540f0b310f089fe0b9d55d6a0e7e202.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "XJ/8j/SHA256E-s580798503--7d9bb3c018083b9af2831b65128aebc739301761173914833b18ada59ecd9d1d.gz/SHA256E-s580798503--7d9bb3c018083b9af2831b65128aebc739301761173914833b18ada59ecd9d1d.gz";
      r2 = "jz/Pv/SHA256E-s584099849--d2a5925363e780b6bcc786997ff447a094b9b49f554d45f0802373d2d47fd4a6.gz/SHA256E-s584099849--d2a5925363e780b6bcc786997ff447a094b9b49f554d45f0802373d2d47fd4a6.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "7q/87/SHA256E-s601524963--b29594cec8717bc09ed29b16c599f9b528a74e078aba7f29f261aa34239bc15b.gz/SHA256E-s601524963--b29594cec8717bc09ed29b16c599f9b528a74e078aba7f29f261aa34239bc15b.gz";
      r2 = "38/gK/SHA256E-s605285545--f02956f341729efcc015ffee276050be696f67abbd1b2404c12dded8587ba022.gz/SHA256E-s605285545--f02956f341729efcc015ffee276050be696f67abbd1b2404c12dded8587ba022.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "01/qx/SHA256E-s564292589--2435ba3d7f1b30f94f166c2607a7e0c852c0ad66b5aee8e105e25919690b1056.gz/SHA256E-s564292589--2435ba3d7f1b30f94f166c2607a7e0c852c0ad66b5aee8e105e25919690b1056.gz";
      r2 = "k0/2w/SHA256E-s565823950--6086eab9158adb1963805af4c1c7da011315884c711126c02bce0d015f562cf5.gz/SHA256E-s565823950--6086eab9158adb1963805af4c1c7da011315884c711126c02bce0d015f562cf5.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "qz/Kp/SHA256E-s606132895--14dcab95183145413f15133a79736eb6403a5b9d8b6bffa82c8c6e51aa1fbd3e.gz/SHA256E-s606132895--14dcab95183145413f15133a79736eb6403a5b9d8b6bffa82c8c6e51aa1fbd3e.gz";
      r2 = "Gj/W2/SHA256E-s609733533--57693b70b0d1004154a06f6a710e7d4cf6fd0abc4ff50897da86289b3e4b882f.gz/SHA256E-s609733533--57693b70b0d1004154a06f6a710e7d4cf6fd0abc4ff50897da86289b3e4b882f.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "0g/zJ/SHA256E-s552480612--a093ca43496b844d4927803241206b3a9e38f5409729d58f81ba2d38b79ec2ac.gz/SHA256E-s552480612--a093ca43496b844d4927803241206b3a9e38f5409729d58f81ba2d38b79ec2ac.gz";
      r2 = "Fp/vP/SHA256E-s553407006--4ed17efa04dc39cea1ec5dcbd748ad28bb9a2b84f73e2d8e0ab5414f109d481c.gz/SHA256E-s553407006--4ed17efa04dc39cea1ec5dcbd748ad28bb9a2b84f73e2d8e0ab5414f109d481c.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "64/47/SHA256E-s836643675--5c8573df9e155d6afccb506ab285b8736fab321374d54193a3d74c23567824b7.gz/SHA256E-s836643675--5c8573df9e155d6afccb506ab285b8736fab321374d54193a3d74c23567824b7.gz";
      r2 = "5G/29/SHA256E-s839218202--0559877c513795c55d8dd19cede4bba5d25ed22f46bb2a96a22bfb08140d9896.gz/SHA256E-s839218202--0559877c513795c55d8dd19cede4bba5d25ed22f46bb2a96a22bfb08140d9896.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "8G/jJ/SHA256E-s841971585--37435755b16f45e6250c0af24e5bfc39b1fc78a93d486c22b5cf70a91329e037.gz/SHA256E-s841971585--37435755b16f45e6250c0af24e5bfc39b1fc78a93d486c22b5cf70a91329e037.gz";
      r2 = "4m/KQ/SHA256E-s843178314--a4b0252696d9ce0f5b62c862be19347f9e8e03df2f5320c1a7a0c5e15d8ead3c.gz/SHA256E-s843178314--a4b0252696d9ce0f5b62c862be19347f9e8e03df2f5320c1a7a0c5e15d8ead3c.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Jw/7q/SHA256E-s835460545--6492dcd4138386a0353a865d495c8c1b5991eba440fc010a39ca7c7e1e20e8d6.gz/SHA256E-s835460545--6492dcd4138386a0353a865d495c8c1b5991eba440fc010a39ca7c7e1e20e8d6.gz";
      r2 = "ZF/3p/SHA256E-s833411526--40c0f25c565d3b72b69f5768ce198a4ec3457c48b6b89ba28a3e56660a62a899.gz/SHA256E-s833411526--40c0f25c565d3b72b69f5768ce198a4ec3457c48b6b89ba28a3e56660a62a899.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0117";
    typeHla = true;
    capture = TwistV2HR;
  }
