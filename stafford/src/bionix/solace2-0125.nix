with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1O";
      class = "tumours";
      pdx = false;
      r1 = "k4/wz/SHA256E-s957396135--e96a8ce1b506e4865faad09aa9e95c7bf947e72b24b4902bbd698d632a61b2fb.gz/SHA256E-s957396135--e96a8ce1b506e4865faad09aa9e95c7bf947e72b24b4902bbd698d632a61b2fb.gz";
      r2 = "3q/fg/SHA256E-s962028976--08e8edbf55661bd08ef16d24df163de761b20d4fa76cbef6453d812e0bf7ba0d.gz/SHA256E-s962028976--08e8edbf55661bd08ef16d24df163de761b20d4fa76cbef6453d812e0bf7ba0d.gz";
    }

    {
      site = "1O";
      class = "tumours";
      pdx = false;
      r1 = "1w/66/SHA256E-s993079001--fc96697e9158d6be40099754f6c39a791560543b0b1a5cc301d355c4f5df6b99.gz/SHA256E-s993079001--fc96697e9158d6be40099754f6c39a791560543b0b1a5cc301d355c4f5df6b99.gz";
      r2 = "9Z/ZM/SHA256E-s1000277580--b50efa81ed50ee3ce46234da9d5adba75dbe169310e2af8c7838782e76a0b301.gz/SHA256E-s1000277580--b50efa81ed50ee3ce46234da9d5adba75dbe169310e2af8c7838782e76a0b301.gz";
    }

    {
      site = "1O";
      class = "tumours";
      pdx = false;
      r1 = "Pf/09/SHA256E-s976519906--7f25a097475acde59be58203f6ca655747893d2a7e25271737c8d5d9e855263a.gz/SHA256E-s976519906--7f25a097475acde59be58203f6ca655747893d2a7e25271737c8d5d9e855263a.gz";
      r2 = "FP/q0/SHA256E-s984956752--b0bedf786f8b40b5bf7d6c56eea7305275503b3adbde2bb820360962f4fe0604.gz/SHA256E-s984956752--b0bedf786f8b40b5bf7d6c56eea7305275503b3adbde2bb820360962f4fe0604.gz";
    }

    {
      site = "1O";
      class = "tumours";
      pdx = false;
      r1 = "QQ/7F/SHA256E-s977018609--5edb67b242e925e8e455fb1c77ff11328776abf5b9972d9fb668d1ab364b3ddd.gz/SHA256E-s977018609--5edb67b242e925e8e455fb1c77ff11328776abf5b9972d9fb668d1ab364b3ddd.gz";
      r2 = "9Q/ZM/SHA256E-s984429448--7eb368e6b894a4e8ac046c0817f27fdcbf9c3bc098990f1649728ae339e0d553.gz/SHA256E-s984429448--7eb368e6b894a4e8ac046c0817f27fdcbf9c3bc098990f1649728ae339e0d553.gz";
    }

    {
      site = "1O";
      class = "tumours";
      pdx = false;
      r1 = "vZ/1M/SHA256E-s1014089339--d5b725ec8963221a690cd2deedfd21d0677a919251108120d4efdcfeb5421c91.gz/SHA256E-s1014089339--d5b725ec8963221a690cd2deedfd21d0677a919251108120d4efdcfeb5421c91.gz";
      r2 = "fQ/g0/SHA256E-s1022349066--a030f36a568e91b0aae032cf372f5d245ea0c48dead1bd16956350fa78670c07.gz/SHA256E-s1022349066--a030f36a568e91b0aae032cf372f5d245ea0c48dead1bd16956350fa78670c07.gz";
    }

    {
      site = "1O";
      class = "tumours";
      pdx = false;
      r1 = "gX/mW/SHA256E-s953125631--288652e27fbd91f81812d3d0619015b133de275e6a707bfee1510894e6c573b4.gz/SHA256E-s953125631--288652e27fbd91f81812d3d0619015b133de275e6a707bfee1510894e6c573b4.gz";
      r2 = "KK/ZP/SHA256E-s957446906--f9cd3617c9b8e9af5567d13c140caf439be8ac36269ef0e7e8bd7112c1cde755.gz/SHA256E-s957446906--f9cd3617c9b8e9af5567d13c140caf439be8ac36269ef0e7e8bd7112c1cde755.gz";
    }

    {
      site = "1O";
      class = "tumours";
      pdx = false;
      r1 = "X9/xj/SHA256E-s1022190160--ea3cb518e0ab26a7ab1f18d4e99befd35833058db866e8fd97369b0b7700503d.gz/SHA256E-s1022190160--ea3cb518e0ab26a7ab1f18d4e99befd35833058db866e8fd97369b0b7700503d.gz";
      r2 = "j1/6Z/SHA256E-s1030109411--de8fd501b53a0688b7268be541712f6d52b011d2f98e119b766b6661d8082655.gz/SHA256E-s1030109411--de8fd501b53a0688b7268be541712f6d52b011d2f98e119b766b6661d8082655.gz";
    }

    {
      site = "1O";
      class = "tumours";
      pdx = false;
      r1 = "QM/GX/SHA256E-s933176425--5f5ef2c82e09208bf6bceba63b73bca9b152d92ab15989c6c9d719812ba347ae.gz/SHA256E-s933176425--5f5ef2c82e09208bf6bceba63b73bca9b152d92ab15989c6c9d719812ba347ae.gz";
      r2 = "qx/q2/SHA256E-s936346403--3dc93e04a2a05b9c4647e3490a7ed2d0e87d6543a27ecd4110ca0103d1830586.gz/SHA256E-s936346403--3dc93e04a2a05b9c4647e3490a7ed2d0e87d6543a27ecd4110ca0103d1830586.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "GG/qF/SHA256E-s492374370--d39d8cc53dbd6a8c884b0112431d78d18646a1e706671fb2f9fa710e6afde4d8.gz/SHA256E-s492374370--d39d8cc53dbd6a8c884b0112431d78d18646a1e706671fb2f9fa710e6afde4d8.gz";
      r2 = "J6/Wp/SHA256E-s503917600--f6b550513d5e02d65227ec4f0e56bfc60e4809c760c2aef7028d9ddc61e93336.gz/SHA256E-s503917600--f6b550513d5e02d65227ec4f0e56bfc60e4809c760c2aef7028d9ddc61e93336.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "g6/M6/SHA256E-s497883703--25ebfd1143682774e16ab6017190ad9822b83f3267eac7c7d9957742328b6ffd.gz/SHA256E-s497883703--25ebfd1143682774e16ab6017190ad9822b83f3267eac7c7d9957742328b6ffd.gz";
      r2 = "vm/Xm/SHA256E-s513139944--74de92ee840e8e8e4437d57a4fbbf401c4aee3ac4f6db9bf78fd1a029279cebb.gz/SHA256E-s513139944--74de92ee840e8e8e4437d57a4fbbf401c4aee3ac4f6db9bf78fd1a029279cebb.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "8g/p1/SHA256E-s491008132--4227ba0b396f0b99b11dd17a17b16dbb12ab79d25072eeddce6e3002535625e1.gz/SHA256E-s491008132--4227ba0b396f0b99b11dd17a17b16dbb12ab79d25072eeddce6e3002535625e1.gz";
      r2 = "qP/g5/SHA256E-s504971319--84f23f78e4664d4207611215cae1ddc5f195c90d83b9d15160b4348b2a7dc4e3.gz/SHA256E-s504971319--84f23f78e4664d4207611215cae1ddc5f195c90d83b9d15160b4348b2a7dc4e3.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "V2/J2/SHA256E-s541662717--187f78fe1ff3ac11b5e41276cb9ef7ecbee232972e4fca55b730f9bbe4d854c4.gz/SHA256E-s541662717--187f78fe1ff3ac11b5e41276cb9ef7ecbee232972e4fca55b730f9bbe4d854c4.gz";
      r2 = "Mj/g9/SHA256E-s561253808--821682a82e3fed129c8b5db0a0ab685f3e14b3f293ddddff61c58c27f1ed368c.gz/SHA256E-s561253808--821682a82e3fed129c8b5db0a0ab685f3e14b3f293ddddff61c58c27f1ed368c.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0125";
    typeHla = true;
    capture = TwistV2HR;
  }
