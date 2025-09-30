with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "3G-2B";
      class = "tumours";
      pdx = false;
      r1 = "m7/WX/SHA256E-s3013590822--7701e7a88078de60e4dda59c7ee626a8e3cbc7587dbd573c85a930704f03418c.gz/SHA256E-s3013590822--7701e7a88078de60e4dda59c7ee626a8e3cbc7587dbd573c85a930704f03418c.gz";
      r2 = "jm/v7/SHA256E-s3064410029--6dcd0df4e6b6e9685186e6ba6783e7b2b690bdd91988d224fd300eab7550e06f.gz/SHA256E-s3064410029--6dcd0df4e6b6e9685186e6ba6783e7b2b690bdd91988d224fd300eab7550e06f.gz";
    }

    {
      site = "3G-2B";
      class = "tumours";
      pdx = false;
      r1 = "94/mG/SHA256E-s3070225858--aed44335649a5c4605cdffa8c75382452638e5ed7352a64f57dcf1b478c38c16.gz/SHA256E-s3070225858--aed44335649a5c4605cdffa8c75382452638e5ed7352a64f57dcf1b478c38c16.gz";
      r2 = "W9/Z0/SHA256E-s3108221052--2eb14cc051d42bbe82507f615e27512b76f81f754805307bd0a1590b6b68aa74.gz/SHA256E-s3108221052--2eb14cc051d42bbe82507f615e27512b76f81f754805307bd0a1590b6b68aa74.gz";
    }

    {
      site = "3G-2B";
      class = "tumours";
      pdx = false;
      r1 = "14/Jz/SHA256E-s3072967973--87d0999289fc89b4eb15d72d155938711925b40aa2d78d12880c0c5dab95e36b.gz/SHA256E-s3072967973--87d0999289fc89b4eb15d72d155938711925b40aa2d78d12880c0c5dab95e36b.gz";
      r2 = "M4/07/SHA256E-s3102020683--eee9601f53be3cb87c4a6c2c5528d88edba11a1df1c36139398d22651829548d.gz/SHA256E-s3102020683--eee9601f53be3cb87c4a6c2c5528d88edba11a1df1c36139398d22651829548d.gz";
    }

    {
      site = "3G-2B";
      class = "tumours";
      pdx = false;
      r1 = "6z/j3/SHA256E-s3003045230--4ce16fdc93ab3a118081417c8a83d4189c0bec1c60ddb0c34510aca1aba01f36.gz/SHA256E-s3003045230--4ce16fdc93ab3a118081417c8a83d4189c0bec1c60ddb0c34510aca1aba01f36.gz";
      r2 = "19/2P/SHA256E-s3031898698--a9f908c96baffc148737b1ae20445428e572176dd36970de5923afa78af5165f.gz/SHA256E-s3031898698--a9f908c96baffc148737b1ae20445428e572176dd36970de5923afa78af5165f.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "V1/VK/SHA256E-s684023321--1fef3053325f9e0489911bff1e7843672ef5e5864151eeaa64cff75db042190e.gz/SHA256E-s684023321--1fef3053325f9e0489911bff1e7843672ef5e5864151eeaa64cff75db042190e.gz";
      r2 = "23/zm/SHA256E-s692239142--773acffce2ffc6a2eb41a543706415206174dd0c9a2ade9e89f1a793ea9042c7.gz/SHA256E-s692239142--773acffce2ffc6a2eb41a543706415206174dd0c9a2ade9e89f1a793ea9042c7.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Kz/1w/SHA256E-s688097669--4231b2db44d327ad0131146ed5472dd28cfd453e55d48bff14938545cd63f395.gz/SHA256E-s688097669--4231b2db44d327ad0131146ed5472dd28cfd453e55d48bff14938545cd63f395.gz";
      r2 = "5X/4z/SHA256E-s701005146--4b42e0814e64394f715547937805e773a55bd6e3a00cba4e4b7ed76ab58f63d1.gz/SHA256E-s701005146--4b42e0814e64394f715547937805e773a55bd6e3a00cba4e4b7ed76ab58f63d1.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "XJ/KX/SHA256E-s681316609--df51923579ba5c3456eabb6c70e0af931c39356f3817cc676ff988950595d19c.gz/SHA256E-s681316609--df51923579ba5c3456eabb6c70e0af931c39356f3817cc676ff988950595d19c.gz";
      r2 = "ZX/vZ/SHA256E-s692229947--49b0cbcead55363dbb616216920aaca7ff7248548a1ad11e0d7fa93a969a2145.gz/SHA256E-s692229947--49b0cbcead55363dbb616216920aaca7ff7248548a1ad11e0d7fa93a969a2145.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Mx/W9/SHA256E-s729634107--2472d3d35097c19afaf9d0b70114157eb2df0b664211747a825b0730c6a8ae15.gz/SHA256E-s729634107--2472d3d35097c19afaf9d0b70114157eb2df0b664211747a825b0730c6a8ae15.gz";
      r2 = "vK/0V/SHA256E-s746976743--a4bda6d5f5ecba9e642465fe6ba6fe70ce0cc3d01e1b2a8de80184f3f088f3e1.gz/SHA256E-s746976743--a4bda6d5f5ecba9e642465fe6ba6fe70ce0cc3d01e1b2a8de80184f3f088f3e1.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0091";
    typeHla = true;
    capture = TwistV2HR;
  }
