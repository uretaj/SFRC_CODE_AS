with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "1W/G7/SHA256E-s462840752--c60857faabee9d6db0e06345ed5bca6954bfac601a557bd7fce37d39dfbfe3a6.gz/SHA256E-s462840752--c60857faabee9d6db0e06345ed5bca6954bfac601a557bd7fce37d39dfbfe3a6.gz";
      r2 = "mz/wK/SHA256E-s472674266--099614cafa51adef756b0142451c522862ffd086e2074df3011848b2b8203e80.gz/SHA256E-s472674266--099614cafa51adef756b0142451c522862ffd086e2074df3011848b2b8203e80.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "7F/76/SHA256E-s478170694--b284b225772768a5c5feee1ab6c36396f83582c3e1f2b2a7608af6df9d70170d.gz/SHA256E-s478170694--b284b225772768a5c5feee1ab6c36396f83582c3e1f2b2a7608af6df9d70170d.gz";
      r2 = "84/0Q/SHA256E-s489558771--b5feb061731935dcadc905a3f773a26c585666cd2b135e14f6aa485a0e1a164b.gz/SHA256E-s489558771--b5feb061731935dcadc905a3f773a26c585666cd2b135e14f6aa485a0e1a164b.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "Zp/PZ/SHA256E-s486299939--7961bfb272d568d86b6ed0b3b8ddc983ef83a89c34df43a0f1cebb2f7384af3b.gz/SHA256E-s486299939--7961bfb272d568d86b6ed0b3b8ddc983ef83a89c34df43a0f1cebb2f7384af3b.gz";
      r2 = "pG/Wz/SHA256E-s498502081--3e4df1ed80161fb296c9fefd49f476f95c056ef441e91f970ad4123cff25dc6f.gz/SHA256E-s498502081--3e4df1ed80161fb296c9fefd49f476f95c056ef441e91f970ad4123cff25dc6f.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "KJ/x2/SHA256E-s490998371--f40a9cacefab25eb5791593705f4532e5e5aeb7aa57511939a2933c8d1e5c4d6.gz/SHA256E-s490998371--f40a9cacefab25eb5791593705f4532e5e5aeb7aa57511939a2933c8d1e5c4d6.gz";
      r2 = "M7/8j/SHA256E-s502784833--9e9858ee0551f587b23d3d0a85ffd2e7930f7973c269c75bd23b5bbbdf45e1cc.gz/SHA256E-s502784833--9e9858ee0551f587b23d3d0a85ffd2e7930f7973c269c75bd23b5bbbdf45e1cc.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "VX/0g/SHA256E-s495915413--e7dc8e7e4c2b671390a94a150408233993e284a3a155f8fb79f3b42b3d2efc48.gz/SHA256E-s495915413--e7dc8e7e4c2b671390a94a150408233993e284a3a155f8fb79f3b42b3d2efc48.gz";
      r2 = "v5/P3/SHA256E-s507949593--9f79920d8e10eca4c7369ed62b6736a910560e6419f5fc5f2094acc35bb9ca3d.gz/SHA256E-s507949593--9f79920d8e10eca4c7369ed62b6736a910560e6419f5fc5f2094acc35bb9ca3d.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "G8/Fj/SHA256E-s503605293--907a56b8cf0c3fa0ca58272975a3f4fd046253d5399b8725ee5361d896a6abcb.gz/SHA256E-s503605293--907a56b8cf0c3fa0ca58272975a3f4fd046253d5399b8725ee5361d896a6abcb.gz";
      r2 = "kQ/01/SHA256E-s513969718--a7aba436347716646a515d4295c15756a1546bb67cb2abeb0b26a8296eae2a1e.gz/SHA256E-s513969718--a7aba436347716646a515d4295c15756a1546bb67cb2abeb0b26a8296eae2a1e.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "MG/1z/SHA256E-s489214474--a2bf0a5449831aad5b2c6d492841a2fa5dd1d15774b6c6c634a3e761e2415c00.gz/SHA256E-s489214474--a2bf0a5449831aad5b2c6d492841a2fa5dd1d15774b6c6c634a3e761e2415c00.gz";
      r2 = "W7/JV/SHA256E-s500872581--4c103870d9265e5951a9ca5ecc9ea464eb37a0e4b549c74df924d8a64a31706a.gz/SHA256E-s500872581--4c103870d9265e5951a9ca5ecc9ea464eb37a0e4b549c74df924d8a64a31706a.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "68/vf/SHA256E-s492004559--797fea39f586f26b379e10b43f2e6afe71349891ebaeb911800e2b2677a68fdd.gz/SHA256E-s492004559--797fea39f586f26b379e10b43f2e6afe71349891ebaeb911800e2b2677a68fdd.gz";
      r2 = "64/P2/SHA256E-s501356338--cedbee5e6a8bbeb04fc00ad140f9ca482cf33d77da9bf5443c151616bf4f5bdc.gz/SHA256E-s501356338--cedbee5e6a8bbeb04fc00ad140f9ca482cf33d77da9bf5443c151616bf4f5bdc.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Zz/34/SHA256E-s523484347--78d69f1473f77f2dc98a43125f560f1ff2900712041fa33ebe25fa60109912f7.gz/SHA256E-s523484347--78d69f1473f77f2dc98a43125f560f1ff2900712041fa33ebe25fa60109912f7.gz";
      r2 = "5k/Mz/SHA256E-s528587339--6c7e7c2271a633d80f94cba2dd43aae1378477b102bddfe9fa13dc2858201976.gz/SHA256E-s528587339--6c7e7c2271a633d80f94cba2dd43aae1378477b102bddfe9fa13dc2858201976.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "KV/jJ/SHA256E-s526727912--ab2a6e02b2beee2c4eade85a9fd05ef835c3370d01c5f2d1244a0f180be3db38.gz/SHA256E-s526727912--ab2a6e02b2beee2c4eade85a9fd05ef835c3370d01c5f2d1244a0f180be3db38.gz";
      r2 = "1W/Xg/SHA256E-s535401010--d7ee922d00e41c30e13d9ac28e654a64404c894f004d23fc17cde0538a8ab334.gz/SHA256E-s535401010--d7ee922d00e41c30e13d9ac28e654a64404c894f004d23fc17cde0538a8ab334.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "v8/Z3/SHA256E-s518942390--2d011d896c25db3c2d1ad3de3fa69dc4cdb794802d26764b21c5b0cc43682ed0.gz/SHA256E-s518942390--2d011d896c25db3c2d1ad3de3fa69dc4cdb794802d26764b21c5b0cc43682ed0.gz";
      r2 = "48/GV/SHA256E-s526262872--6d078b34e72c3eb1d798c387b466110dd81828fba7b5b5309c8a8e1343e0397d.gz/SHA256E-s526262872--6d078b34e72c3eb1d798c387b466110dd81828fba7b5b5309c8a8e1343e0397d.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Ff/7X/SHA256E-s557062751--4106889a37962403fc98f13c28f383ed2d6f084fdb021bb9e33273a4a00af7fc.gz/SHA256E-s557062751--4106889a37962403fc98f13c28f383ed2d6f084fdb021bb9e33273a4a00af7fc.gz";
      r2 = "6G/z1/SHA256E-s568908003--7a7bbeedfb1ce51fb9bc40dadab5b84254fda83ab93a5eea5f294c5302a23f6f.gz/SHA256E-s568908003--7a7bbeedfb1ce51fb9bc40dadab5b84254fda83ab93a5eea5f294c5302a23f6f.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0023";
    typeHla = true;
    capture = TwistV2HR;
  }
