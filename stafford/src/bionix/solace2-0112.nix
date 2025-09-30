with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "wV/GJ/SHA256E-s1670222967--c04df0fea4f3fda67d5cad60edf5d37d46cc0ca27e1d8faae732790f9dc5d525.gz/SHA256E-s1670222967--c04df0fea4f3fda67d5cad60edf5d37d46cc0ca27e1d8faae732790f9dc5d525.gz";
      r2 = "vp/3J/SHA256E-s1672350682--3d2c5b649dd5091b421abd784cbf590cf92308df5613102d6ffdda1ca7ed9da8.gz/SHA256E-s1672350682--3d2c5b649dd5091b421abd784cbf590cf92308df5613102d6ffdda1ca7ed9da8.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "3z/J2/SHA256E-s1736671967--4ff298005de2ba3447a93478af0d06ec39f4df32a185389e4562bdb07b4d72b5.gz/SHA256E-s1736671967--4ff298005de2ba3447a93478af0d06ec39f4df32a185389e4562bdb07b4d72b5.gz";
      r2 = "xz/Vx/SHA256E-s1742916472--9214ec1ccf7d368c41f0fc660f17041dce9f9af5ba7c9d3df534c9351391c7f1.gz/SHA256E-s1742916472--9214ec1ccf7d368c41f0fc660f17041dce9f9af5ba7c9d3df534c9351391c7f1.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "0k/k3/SHA256E-s1735697907--9cdfb2d7ca126d41506dfae564a76386eda754dbf24e53f8bb93de477e79eb7c.gz/SHA256E-s1735697907--9cdfb2d7ca126d41506dfae564a76386eda754dbf24e53f8bb93de477e79eb7c.gz";
      r2 = "vV/20/SHA256E-s1744392143--19f0ff32a3b54f2cc037ad1f753403f254091ec041016a59f17b96ec85f307e0.gz/SHA256E-s1744392143--19f0ff32a3b54f2cc037ad1f753403f254091ec041016a59f17b96ec85f307e0.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "5m/85/SHA256E-s1757552357--8533088d7f879dfaac2655962182c0a0f07cbcc2dd6c0fcb56fea869bdf3784b.gz/SHA256E-s1757552357--8533088d7f879dfaac2655962182c0a0f07cbcc2dd6c0fcb56fea869bdf3784b.gz";
      r2 = "00/zk/SHA256E-s1764721626--bf25a2d0fdc415e4c7abb38139c3ddbe807cd0ed3f5e675a122da05329bb72cf.gz/SHA256E-s1764721626--bf25a2d0fdc415e4c7abb38139c3ddbe807cd0ed3f5e675a122da05329bb72cf.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "Mx/m8/SHA256E-s1798936789--4155c80796ba80640196d920fa21e800db8065a1cdb5edbf560ea7963b5d3ee6.gz/SHA256E-s1798936789--4155c80796ba80640196d920fa21e800db8065a1cdb5edbf560ea7963b5d3ee6.gz";
      r2 = "m0/g0/SHA256E-s1807594909--c30ac8343ada17738811acd8ea8b68016f6785c77698880e217995d963767afb.gz/SHA256E-s1807594909--c30ac8343ada17738811acd8ea8b68016f6785c77698880e217995d963767afb.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "Vj/3x/SHA256E-s1706967270--1271a77f3d2a27845d2a095051e83407f23ab849e1ecf8a8ad3cea94a184361f.gz/SHA256E-s1706967270--1271a77f3d2a27845d2a095051e83407f23ab849e1ecf8a8ad3cea94a184361f.gz";
      r2 = "QK/V5/SHA256E-s1709625091--c37587d6e470cd4aae2d33129e697f27c8b7ddd80007985b08a8789eebd30df6.gz/SHA256E-s1709625091--c37587d6e470cd4aae2d33129e697f27c8b7ddd80007985b08a8789eebd30df6.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "xP/70/SHA256E-s1784056824--b37850ba448d3f243ad08dfb88fc3a82a1ee9b573383de3b672b734da92dfaa7.gz/SHA256E-s1784056824--b37850ba448d3f243ad08dfb88fc3a82a1ee9b573383de3b672b734da92dfaa7.gz";
      r2 = "26/g4/SHA256E-s1791729788--12afae1c2e4106049e572ce3ae1b8db25ec77be4f69b59c19ca22e140b3e16c7.gz/SHA256E-s1791729788--12afae1c2e4106049e572ce3ae1b8db25ec77be4f69b59c19ca22e140b3e16c7.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "1k/v1/SHA256E-s1676896975--f0415ab3ba49515dbcab1e14a8f0fc3d4752a6ce38d3036a3788dd6f9b95c60a.gz/SHA256E-s1676896975--f0415ab3ba49515dbcab1e14a8f0fc3d4752a6ce38d3036a3788dd6f9b95c60a.gz";
      r2 = "4K/07/SHA256E-s1677499704--93824c4c7a8c25785b1f08b38c8aec523f29dc70804a3ff5e79873e8bf8bed88.gz/SHA256E-s1677499704--93824c4c7a8c25785b1f08b38c8aec523f29dc70804a3ff5e79873e8bf8bed88.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "WQ/5f/SHA256E-s801628630--e49b4ac2c292c1a5175c70d87364c7c0e4bce269f3e1c4396a9428947555264d.gz/SHA256E-s801628630--e49b4ac2c292c1a5175c70d87364c7c0e4bce269f3e1c4396a9428947555264d.gz";
      r2 = "J8/6Q/SHA256E-s805972376--37d79d670b637d62dfccbfa93d94cb23d2b0b1175f50865df0206553ad5e5ff1.gz/SHA256E-s805972376--37d79d670b637d62dfccbfa93d94cb23d2b0b1175f50865df0206553ad5e5ff1.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "5k/Vp/SHA256E-s811205004--b80ccefb4a26155d04212d2c3582b3eb5361ea0e99ce1029f924a7fb683ea033.gz/SHA256E-s811205004--b80ccefb4a26155d04212d2c3582b3eb5361ea0e99ce1029f924a7fb683ea033.gz";
      r2 = "K0/wX/SHA256E-s814296322--81c6be2815c81be428128a7239caa628fe5ddad40718fb307a75ab1c29b776d9.gz/SHA256E-s814296322--81c6be2815c81be428128a7239caa628fe5ddad40718fb307a75ab1c29b776d9.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "83/Fw/SHA256E-s809999408--3c5c2198611fb4114318eede22606b6904a9516eedb9c650d825b83301a91349.gz/SHA256E-s809999408--3c5c2198611fb4114318eede22606b6904a9516eedb9c650d825b83301a91349.gz";
      r2 = "jm/Kw/SHA256E-s809488356--a150e87025a413f4b7563dc770e636ef0f72fab35b648f0cb8538457235b4d10.gz/SHA256E-s809488356--a150e87025a413f4b7563dc770e636ef0f72fab35b648f0cb8538457235b4d10.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0112";
    typeHla = true;
    capture = TwistV2HR;
  }
