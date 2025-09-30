with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "D3";
      class = "tumours";
      pdx = false;
      r1 = "j6/1J/SHA256E-s586939901--49dc4ef4e51a87c1da53c31f45ff85323a104547baaa5f96cd935a40bd5152f8.gz/SHA256E-s586939901--49dc4ef4e51a87c1da53c31f45ff85323a104547baaa5f96cd935a40bd5152f8.gz";
      r2 = "XV/zk/SHA256E-s588115251--83520c264342475ac6f984cdc377f0b047d71f7d72ac9bbec94413afe7f97ca5.gz/SHA256E-s588115251--83520c264342475ac6f984cdc377f0b047d71f7d72ac9bbec94413afe7f97ca5.gz";
    }

    {
      site = "D3";
      class = "tumours";
      pdx = false;
      r1 = "8W/Kw/SHA256E-s614781371--290c4a115e63cbf1f5f2311bc8de178dfe389d213787f66c70dac14611e4580d.gz/SHA256E-s614781371--290c4a115e63cbf1f5f2311bc8de178dfe389d213787f66c70dac14611e4580d.gz";
      r2 = "pV/1f/SHA256E-s617692133--d99b6be10aa36637bb500fbb273d85caf281ac5c73aebc89a34be486498f8e6e.gz/SHA256E-s617692133--d99b6be10aa36637bb500fbb273d85caf281ac5c73aebc89a34be486498f8e6e.gz";
    }

    {
      site = "D3";
      class = "tumours";
      pdx = false;
      r1 = "qp/19/SHA256E-s617493155--daa27c64dd1a1d3f76bb2c73093f2f8f197cc1a73ccbab785187e6567e116abd.gz/SHA256E-s617493155--daa27c64dd1a1d3f76bb2c73093f2f8f197cc1a73ccbab785187e6567e116abd.gz";
      r2 = "w2/w5/SHA256E-s621147302--6be838f9624621bddbce26e8cb358ca46b8ed765b024e811b901fd4eb931ece3.gz/SHA256E-s621147302--6be838f9624621bddbce26e8cb358ca46b8ed765b024e811b901fd4eb931ece3.gz";
    }

    {
      site = "D3";
      class = "tumours";
      pdx = false;
      r1 = "ZZ/xK/SHA256E-s618689179--9aca8be3d2cb036baa6238b02acc56c43290289846818f41a8da89d483878abc.gz/SHA256E-s618689179--9aca8be3d2cb036baa6238b02acc56c43290289846818f41a8da89d483878abc.gz";
      r2 = "pj/Xx/SHA256E-s621632453--5ce03150a7e0f680647e8f74ed9425713f86094697cb9769cf46348630224bd8.gz/SHA256E-s621632453--5ce03150a7e0f680647e8f74ed9425713f86094697cb9769cf46348630224bd8.gz";
    }

    {
      site = "D3";
      class = "tumours";
      pdx = false;
      r1 = "qZ/fw/SHA256E-s635361994--a4db95975e1f27a4a74afd13be2f7c7816f4c9c71045e248ac0c8ff682e65753.gz/SHA256E-s635361994--a4db95975e1f27a4a74afd13be2f7c7816f4c9c71045e248ac0c8ff682e65753.gz";
      r2 = "3p/zz/SHA256E-s638818491--e6e18d50d4b5b3cfdfc512771f1e6348450abca97fcaacabb44cae03cecbf6f0.gz/SHA256E-s638818491--e6e18d50d4b5b3cfdfc512771f1e6348450abca97fcaacabb44cae03cecbf6f0.gz";
    }

    {
      site = "D3";
      class = "tumours";
      pdx = false;
      r1 = "z4/mk/SHA256E-s632591309--7ffbe834fcd1c5580bd3eafb038336d60b389022a2d7713f3338a34b2cdb8009.gz/SHA256E-s632591309--7ffbe834fcd1c5580bd3eafb038336d60b389022a2d7713f3338a34b2cdb8009.gz";
      r2 = "k0/M9/SHA256E-s633656446--7f903ec29f60a9c78fa326d2e23efb9e5a4a4713e96354a417a08e015d7dac15.gz/SHA256E-s633656446--7f903ec29f60a9c78fa326d2e23efb9e5a4a4713e96354a417a08e015d7dac15.gz";
    }

    {
      site = "D3";
      class = "tumours";
      pdx = false;
      r1 = "GX/fV/SHA256E-s632785146--6aa7aae67d8bd120c8334418f672c14f05d481c4ab34ca96f09044c4d4e0b2f1.gz/SHA256E-s632785146--6aa7aae67d8bd120c8334418f672c14f05d481c4ab34ca96f09044c4d4e0b2f1.gz";
      r2 = "54/51/SHA256E-s635826213--88c938d5c531736f25753c1becb09edd9c6d49d8c3746f11411abfcc83f586c0.gz/SHA256E-s635826213--88c938d5c531736f25753c1becb09edd9c6d49d8c3746f11411abfcc83f586c0.gz";
    }

    {
      site = "D3";
      class = "tumours";
      pdx = false;
      r1 = "44/M6/SHA256E-s610586273--ee06fe22e2e8bd4616146a97722567d4242f7f08ae946735ab6e28d6b60438cb.gz/SHA256E-s610586273--ee06fe22e2e8bd4616146a97722567d4242f7f08ae946735ab6e28d6b60438cb.gz";
      r2 = "9j/xx/SHA256E-s610720914--a412115a7ad315ebda79b2f6b872f7ed6b654cf1bc9f8eda1252d78ff911b679.gz/SHA256E-s610720914--a412115a7ad315ebda79b2f6b872f7ed6b654cf1bc9f8eda1252d78ff911b679.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "VV/9F/SHA256E-s1245055970--75ac0c6b617b96e7349e1a7c8072f23ea2c647c7994fab568d33debe00059973.gz/SHA256E-s1245055970--75ac0c6b617b96e7349e1a7c8072f23ea2c647c7994fab568d33debe00059973.gz";
      r2 = "1M/wX/SHA256E-s1248300916--a4066922b8d839bf0810ebd1e9c12f500a8a6a3202b9435d5af8626f2329dee6.gz/SHA256E-s1248300916--a4066922b8d839bf0810ebd1e9c12f500a8a6a3202b9435d5af8626f2329dee6.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "f2/qF/SHA256E-s1263641183--c2cffc428e7d150b9ac4c6097d9ed83f8aa0744472cd7a551efb49eb7e1fada3.gz/SHA256E-s1263641183--c2cffc428e7d150b9ac4c6097d9ed83f8aa0744472cd7a551efb49eb7e1fada3.gz";
      r2 = "KP/32/SHA256E-s1264587577--97996d30c8a17de52169c821b8498c0201b5a0134abe83357662f58587388a32.gz/SHA256E-s1264587577--97996d30c8a17de52169c821b8498c0201b5a0134abe83357662f58587388a32.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "82/0z/SHA256E-s1261633130--e9ce5f26cf6bfd49dd993ec676e1dc40c854f080bb53bec9b149e2a583805042.gz/SHA256E-s1261633130--e9ce5f26cf6bfd49dd993ec676e1dc40c854f080bb53bec9b149e2a583805042.gz";
      r2 = "Zf/pF/SHA256E-s1256964987--cfaac61ba2da47f5452737ed6a367ff6ee9314d699b55203ada2debed87f411c.gz/SHA256E-s1256964987--cfaac61ba2da47f5452737ed6a367ff6ee9314d699b55203ada2debed87f411c.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0079";
    typeHla = true;
    capture = TwistV2HR;
  }
