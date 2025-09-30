with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2AC";
      class = "tumours";
      pdx = false;
      r1 = "8j/41/SHA256E-s955270688--2c05682ba3c5eb6268ec90d9f27af99f3fcf9b96e89ebaade8568814a34d24e9.gz/SHA256E-s955270688--2c05682ba3c5eb6268ec90d9f27af99f3fcf9b96e89ebaade8568814a34d24e9.gz";
      r2 = "M7/5Z/SHA256E-s960571219--c92924ed4f695bb13b8f0d858211f6574b94d9c4176a57b8106b0cae9e6c37b1.gz/SHA256E-s960571219--c92924ed4f695bb13b8f0d858211f6574b94d9c4176a57b8106b0cae9e6c37b1.gz";
    }

    {
      site = "2AC";
      class = "tumours";
      pdx = false;
      r1 = "44/wJ/SHA256E-s988980522--9165fa6d75c8c50b06b97bb8afe48e34aa478f53daa8e96d713c7200c2b5f4ed.gz/SHA256E-s988980522--9165fa6d75c8c50b06b97bb8afe48e34aa478f53daa8e96d713c7200c2b5f4ed.gz";
      r2 = "3X/qP/SHA256E-s997099519--9bbd051fa55596b88a397c6754019d5879c1ffe9344f3f6342da8b8cc31c998a.gz/SHA256E-s997099519--9bbd051fa55596b88a397c6754019d5879c1ffe9344f3f6342da8b8cc31c998a.gz";
    }

    {
      site = "2AC";
      class = "tumours";
      pdx = false;
      r1 = "J4/0V/SHA256E-s982003705--d29930c78a6b83ec59b8d9b3a6cd4bb4d5226fa1973bb9f46e74a151a43ce4d4.gz/SHA256E-s982003705--d29930c78a6b83ec59b8d9b3a6cd4bb4d5226fa1973bb9f46e74a151a43ce4d4.gz";
      r2 = "f3/PZ/SHA256E-s991308934--efc5bf20237ddf97678a8a01548da24b4d8f23bdef048122cc7818ad9b6d5221.gz/SHA256E-s991308934--efc5bf20237ddf97678a8a01548da24b4d8f23bdef048122cc7818ad9b6d5221.gz";
    }

    {
      site = "2AC";
      class = "tumours";
      pdx = false;
      r1 = "4W/MM/SHA256E-s1000080113--243f1e62af2a247bff5b3409a021e61d32b883ae56d5bccc30e315fd579baa9d.gz/SHA256E-s1000080113--243f1e62af2a247bff5b3409a021e61d32b883ae56d5bccc30e315fd579baa9d.gz";
      r2 = "KW/M3/SHA256E-s1008546672--85bbacfe3d88bbbb53a19733e96cac6237dcd7ceb395162ef86b55d17e09875d.gz/SHA256E-s1008546672--85bbacfe3d88bbbb53a19733e96cac6237dcd7ceb395162ef86b55d17e09875d.gz";
    }

    {
      site = "2AC";
      class = "tumours";
      pdx = false;
      r1 = "K9/Mx/SHA256E-s1021713966--b4589b8523e16cc9cff8767f337c3bf658da66d97f5207145fefa75460578aaa.gz/SHA256E-s1021713966--b4589b8523e16cc9cff8767f337c3bf658da66d97f5207145fefa75460578aaa.gz";
      r2 = "xx/Gg/SHA256E-s1031116210--ebc68566ccb32235dc7c3c5208ec03c45f50fd01832bfdaaa94c410c811c1de3.gz/SHA256E-s1031116210--ebc68566ccb32235dc7c3c5208ec03c45f50fd01832bfdaaa94c410c811c1de3.gz";
    }

    {
      site = "2AC";
      class = "tumours";
      pdx = false;
      r1 = "Q7/5K/SHA256E-s953387049--f91f407d66a6520fc321b69468a9c72888b8c794e79bf0236d5372d6d205fdb7.gz/SHA256E-s953387049--f91f407d66a6520fc321b69468a9c72888b8c794e79bf0236d5372d6d205fdb7.gz";
      r2 = "xX/XZ/SHA256E-s958372528--5baa335a77cd6a7717801bc7b02e038ab34be43ff64c8d2f071d72a37caa8a50.gz/SHA256E-s958372528--5baa335a77cd6a7717801bc7b02e038ab34be43ff64c8d2f071d72a37caa8a50.gz";
    }

    {
      site = "2AC";
      class = "tumours";
      pdx = false;
      r1 = "0k/03/SHA256E-s1018153056--de69be70b880cb938d970983a6d395ed4c0a247118ca5c7eab9068d5489dac77.gz/SHA256E-s1018153056--de69be70b880cb938d970983a6d395ed4c0a247118ca5c7eab9068d5489dac77.gz";
      r2 = "Z8/pf/SHA256E-s1027293401--6d290523de66ed556c52cad3950bc0448c62c464576ac670ef9de9bb95353ef7.gz/SHA256E-s1027293401--6d290523de66ed556c52cad3950bc0448c62c464576ac670ef9de9bb95353ef7.gz";
    }

    {
      site = "2AC";
      class = "tumours";
      pdx = false;
      r1 = "3m/MF/SHA256E-s934789044--ddc15288baea8361345b81dcdd15d8223fc4c77c283153295b584768f074fadb.gz/SHA256E-s934789044--ddc15288baea8361345b81dcdd15d8223fc4c77c283153295b584768f074fadb.gz";
      r2 = "3P/wV/SHA256E-s938554653--7206e5d6a3e1e940310dc86284bcec548ee0e92381eb570d97412284a5efe342.gz/SHA256E-s938554653--7206e5d6a3e1e940310dc86284bcec548ee0e92381eb570d97412284a5efe342.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "63/9M/SHA256E-s1120494537--be16036c2271586bb32d3aa4278e852cb5007e18470ffdfd515caac50e4172f5.gz/SHA256E-s1120494537--be16036c2271586bb32d3aa4278e852cb5007e18470ffdfd515caac50e4172f5.gz";
      r2 = "pW/3m/SHA256E-s1123131998--466279947095b688f4725a3ab64e064ad86b6bf72832cb991285bdb7b04a03a7.gz/SHA256E-s1123131998--466279947095b688f4725a3ab64e064ad86b6bf72832cb991285bdb7b04a03a7.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "V3/K9/SHA256E-s1134245351--f803a1323b63c94a14309eab603141cfbf8b29e66fe60e23eecfa752136122d4.gz/SHA256E-s1134245351--f803a1323b63c94a14309eab603141cfbf8b29e66fe60e23eecfa752136122d4.gz";
      r2 = "Fk/Kv/SHA256E-s1135057178--819fe68790648a89b149f738d199215dc05a18258fa85ac496dafdeeab2526d6.gz/SHA256E-s1135057178--819fe68790648a89b149f738d199215dc05a18258fa85ac496dafdeeab2526d6.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "v5/jK/SHA256E-s1134596250--cda4b962090972776b07d92d27d7d521c64416eec6ca39965c5597cf2bf7aaae.gz/SHA256E-s1134596250--cda4b962090972776b07d92d27d7d521c64416eec6ca39965c5597cf2bf7aaae.gz";
      r2 = "92/Kg/SHA256E-s1130311846--6a2492a88ae2a0613d7684e5d1d68f5c050032f707416b9e427d0def9931a333.gz/SHA256E-s1130311846--6a2492a88ae2a0613d7684e5d1d68f5c050032f707416b9e427d0def9931a333.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0096";
    typeHla = true;
    capture = TwistV2HR;
  }
