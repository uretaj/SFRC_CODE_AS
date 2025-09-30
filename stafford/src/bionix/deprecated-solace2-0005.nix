with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "KF/8z/SHA256E-s4544175527--88227f25b1eb37a746a1a01ca988c079da3b967aa3ca2578fc6a869b20ef45c4.gz/SHA256E-s4544175527--88227f25b1eb37a746a1a01ca988c079da3b967aa3ca2578fc6a869b20ef45c4.gz";
      r2 = "QQ/3z/SHA256E-s4395526705--49a28f76ac873866e3890bbb33f40faf6baa3fc0fef679be784737648188b23f.gz/SHA256E-s4395526705--49a28f76ac873866e3890bbb33f40faf6baa3fc0fef679be784737648188b23f.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "0P/j5/SHA256E-s1714544512--62a43d8f6d701d84f5ae3d7de7fef3622f244c147c6f99727ee188c9a18bca29.gz/SHA256E-s1714544512--62a43d8f6d701d84f5ae3d7de7fef3622f244c147c6f99727ee188c9a18bca29.gz";
      r2 = "64/V8/SHA256E-s1824005820--792ce862d2140aab67e96433bc4df5042b5fd1d07d7703e34b8152890daadfbf.gz/SHA256E-s1824005820--792ce862d2140aab67e96433bc4df5042b5fd1d07d7703e34b8152890daadfbf.gz";
    }

    {
      site = "1Q";
      class = "tumours";
      pdx = false;
      r1 = "Q9/XP/SHA256E-s15235655508--cbbe677069d22a1226bb90ff854411ec601086bc100a1ec65f3a1e192e38a0d1.gz/SHA256E-s15235655508--cbbe677069d22a1226bb90ff854411ec601086bc100a1ec65f3a1e192e38a0d1.gz";
      r2 = "86/Q2/SHA256E-s13990899254--6a9ac17ae36d0508910074aedab88f571189a6df64825d11ecfb50be50f609b2.gz/SHA256E-s13990899254--6a9ac17ae36d0508910074aedab88f571189a6df64825d11ecfb50be50f609b2.gz";
    }

    {
      site = "1Q";
      class = "tumours";
      pdx = false;
      r1 = "Pk/F4/SHA256E-s6553690397--4634fd35da108068b3a74a04c0064109a499b6bd21a7e766cf81922c918779f4.gz/SHA256E-s6553690397--4634fd35da108068b3a74a04c0064109a499b6bd21a7e766cf81922c918779f4.gz";
      r2 = "vx/W4/SHA256E-s6731502974--9aa1fcc3c8bf94b223790417032c84bc580c21e860ec9dd01387e015253a5948.gz/SHA256E-s6731502974--9aa1fcc3c8bf94b223790417032c84bc580c21e860ec9dd01387e015253a5948.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = true;
    name = "SOL2_0005";
  }
