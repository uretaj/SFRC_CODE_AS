with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "4N";
      class = "tumours";
      pdx = false;
      r1 = "Kv/Zv/SHA256E-s771551103--af646e18151bbc5939636403139af1dc7ac101f749228f3f2d953cbdb227cca1.gz/SHA256E-s771551103--af646e18151bbc5939636403139af1dc7ac101f749228f3f2d953cbdb227cca1.gz";
      r2 = "8k/PX/SHA256E-s769524743--e5fa4cb391b2e9f78c3bcedd1671370e03eb71744b087f889c46eac6b74c1d42.gz/SHA256E-s769524743--e5fa4cb391b2e9f78c3bcedd1671370e03eb71744b087f889c46eac6b74c1d42.gz";
    }

    {
      site = "4N";
      class = "tumours";
      pdx = false;
      r1 = "Vv/W4/SHA256E-s789379581--dbb238c156cf011e0f1f928123888f845e541a9793e3fe3481cc9fa95b89a44b.gz/SHA256E-s789379581--dbb238c156cf011e0f1f928123888f845e541a9793e3fe3481cc9fa95b89a44b.gz";
      r2 = "Wq/QZ/SHA256E-s789269435--782b937d298b44fe7699d63b96e1e4ecd2098dbb273bac9697c7e8cef6b4b745.gz/SHA256E-s789269435--782b937d298b44fe7699d63b96e1e4ecd2098dbb273bac9697c7e8cef6b4b745.gz";
    }

    {
      site = "4N";
      class = "tumours";
      pdx = false;
      r1 = "1P/QW/SHA256E-s795333680--a571be36a309b94bd9709ca24890f73c3cd8fa26681a070a8d00d7aa603e1319.gz/SHA256E-s795333680--a571be36a309b94bd9709ca24890f73c3cd8fa26681a070a8d00d7aa603e1319.gz";
      r2 = "qK/41/SHA256E-s796346984--c27fea6aa00eb4c9a5e7acdce050090e66778e6d323ca71b0f49908aa8282769.gz/SHA256E-s796346984--c27fea6aa00eb4c9a5e7acdce050090e66778e6d323ca71b0f49908aa8282769.gz";
    }

    {
      site = "4N";
      class = "tumours";
      pdx = false;
      r1 = "Xf/mf/SHA256E-s805702171--80f5b3b9abfed894897b195e12149ffe38bde1e50a4aa8ba19d123e3df52d554.gz/SHA256E-s805702171--80f5b3b9abfed894897b195e12149ffe38bde1e50a4aa8ba19d123e3df52d554.gz";
      r2 = "G2/21/SHA256E-s806088024--5dd46f1f3aa0c77a511c4e97fafc3966912b3f314048c55bd14807d5614b12fe.gz/SHA256E-s806088024--5dd46f1f3aa0c77a511c4e97fafc3966912b3f314048c55bd14807d5614b12fe.gz";
    }

    {
      site = "4N";
      class = "tumours";
      pdx = false;
      r1 = "92/Q7/SHA256E-s817408596--f2ab83223324128965f1f3c0fe1ce9f9127647005f492253d958d837fb8727d5.gz/SHA256E-s817408596--f2ab83223324128965f1f3c0fe1ce9f9127647005f492253d958d837fb8727d5.gz";
      r2 = "1f/99/SHA256E-s818081046--3257d40afa9f81f7dff8fb8e0b5546f05bf0b86057f627dac2f9fba720cc41eb.gz/SHA256E-s818081046--3257d40afa9f81f7dff8fb8e0b5546f05bf0b86057f627dac2f9fba720cc41eb.gz";
    }

    {
      site = "4N";
      class = "tumours";
      pdx = false;
      r1 = "58/52/SHA256E-s794698241--92bd5a3c1421cba01b439024aa3cc81623775848f8c476eea28f8b6e3e91e19b.gz/SHA256E-s794698241--92bd5a3c1421cba01b439024aa3cc81623775848f8c476eea28f8b6e3e91e19b.gz";
      r2 = "77/5q/SHA256E-s792489507--5520c8b022c85ada9f3d9e5580231afe896794767a72812811a4e957c7daf402.gz/SHA256E-s792489507--5520c8b022c85ada9f3d9e5580231afe896794767a72812811a4e957c7daf402.gz";
    }

    {
      site = "4N";
      class = "tumours";
      pdx = false;
      r1 = "v8/70/SHA256E-s807852315--04d20fae977a810e6060eeb7af9ff3a2aed2f1c8a8f350d818c1153d4242a915.gz/SHA256E-s807852315--04d20fae977a810e6060eeb7af9ff3a2aed2f1c8a8f350d818c1153d4242a915.gz";
      r2 = "4q/g9/SHA256E-s807984269--38fece786379b5c50f04bc8020a2535ed7d471abb6feb0d70033294dfcb85e50.gz/SHA256E-s807984269--38fece786379b5c50f04bc8020a2535ed7d471abb6feb0d70033294dfcb85e50.gz";
    }

    {
      site = "4N";
      class = "tumours";
      pdx = false;
      r1 = "99/X3/SHA256E-s782790816--d81615ac4850dc864bd049f7e9911c8a1d70360da50324156d39457b0277e6da.gz/SHA256E-s782790816--d81615ac4850dc864bd049f7e9911c8a1d70360da50324156d39457b0277e6da.gz";
      r2 = "zw/v5/SHA256E-s779400582--cae3da3e5ebcd35ad6abea5d0d4d66a5b51aa07528d76854d3886b1bcdd25c13.gz/SHA256E-s779400582--cae3da3e5ebcd35ad6abea5d0d4d66a5b51aa07528d76854d3886b1bcdd25c13.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "kK/Kp/SHA256E-s996541087--55165568cfb12f4aca76aeb3dbd188fbdd7492680d1836ebacc8a40cf0065614.gz/SHA256E-s996541087--55165568cfb12f4aca76aeb3dbd188fbdd7492680d1836ebacc8a40cf0065614.gz";
      r2 = "x4/1F/SHA256E-s994800864--d90feb2d9c6bbaa34eac4aae6d5fe006e800c47406646f769bdcd4bada51032f.gz/SHA256E-s994800864--d90feb2d9c6bbaa34eac4aae6d5fe006e800c47406646f769bdcd4bada51032f.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Qv/Z7/SHA256E-s1011898046--d7901c5f73fa85b73f13a4b30c7ab9afa415eda7cd845236651ce2e5a0bd594a.gz/SHA256E-s1011898046--d7901c5f73fa85b73f13a4b30c7ab9afa415eda7cd845236651ce2e5a0bd594a.gz";
      r2 = "mQ/5M/SHA256E-s1008671376--5e811fa69b43e01035bb8f3461b56da633dfc3b326be66ae0b723a0fd7294960.gz/SHA256E-s1008671376--5e811fa69b43e01035bb8f3461b56da633dfc3b326be66ae0b723a0fd7294960.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "k2/5v/SHA256E-s1014392851--9a9656efc203d301db4f4473be49da3b4281ee8de47668aa2902080829913e6f.gz/SHA256E-s1014392851--9a9656efc203d301db4f4473be49da3b4281ee8de47668aa2902080829913e6f.gz";
      r2 = "M5/m8/SHA256E-s1006853332--af41cb8aebdeae51bcc274a13c371b770f0174b854623070bc7f1883a091c8d5.gz/SHA256E-s1006853332--af41cb8aebdeae51bcc274a13c371b770f0174b854623070bc7f1883a091c8d5.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0089";
    typeHla = true;
    capture = TwistV2HR;
  }
