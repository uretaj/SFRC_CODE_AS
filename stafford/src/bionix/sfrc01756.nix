with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1L";
      class = "tumours";
      pdx = false;
      r1 = "Jp/wV/SHA256E-s2401593798--09f1377e80affe69c9e7f85bb63ef25b76eb940431ed564897c4788e2fde823b.gz/SHA256E-s2401593798--09f1377e80affe69c9e7f85bb63ef25b76eb940431ed564897c4788e2fde823b.gz";
      r2 = "81/5z/SHA256E-s2435648689--be5bebf2b62d6a0b93cd090555990c4a7b213f0490ab10658117e5595615fcd7.gz/SHA256E-s2435648689--be5bebf2b62d6a0b93cd090555990c4a7b213f0490ab10658117e5595615fcd7.gz";
    }
    {
      site = "1L";
      class = "tumours";
      pdx = false;
      r1 = "40/w4/SHA256E-s2404424845--bec2df0efe24813808273f23d0449682cdb680cee8baf844571c65effb8ee481.gz/SHA256E-s2404424845--bec2df0efe24813808273f23d0449682cdb680cee8baf844571c65effb8ee481.gz";
      r2 = "6Q/KM/SHA256E-s2438679257--9990e9221fc36a0ca5eaccd4349c3f779f4f3ea1812ad5e89b8668a1cd3063a1.gz/SHA256E-s2438679257--9990e9221fc36a0ca5eaccd4349c3f779f4f3ea1812ad5e89b8668a1cd3063a1.gz";
    }
    {
      site = "1L";
      class = "tumours";
      pdx = false;
      r1 = "1M/KG/SHA256E-s2582578597--71470f3a1558f27f19f7938394ec80f71b8af4d547ecca749a174f2fb9059af6.gz/SHA256E-s2582578597--71470f3a1558f27f19f7938394ec80f71b8af4d547ecca749a174f2fb9059af6.gz";
      r2 = "xQ/3F/SHA256E-s2624376784--f1d594e054e48f064783b8ae2d936e6f883e88c50c33eb0515f26577c48793ea.gz/SHA256E-s2624376784--f1d594e054e48f064783b8ae2d936e6f883e88c50c33eb0515f26577c48793ea.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "xk/X2/SHA256E-s724585599--6ff450157fe544e535c0e9abb37043dabe117aabfae430311ae850b246c7be9b.gz/SHA256E-s724585599--6ff450157fe544e535c0e9abb37043dabe117aabfae430311ae850b246c7be9b.gz";
      r2 = "0z/M2/SHA256E-s721901194--13d37773a189589e630c7797d6f8dbe27065011f4e20ca93d2fcaa5bec684f71.gz/SHA256E-s721901194--13d37773a189589e630c7797d6f8dbe27065011f4e20ca93d2fcaa5bec684f71.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "m1/fm/SHA256E-s725863001--aafd0e09014974a39cd112d518240b24aa28f27d56f20dc01dc6205fb4ea42d1.gz/SHA256E-s725863001--aafd0e09014974a39cd112d518240b24aa28f27d56f20dc01dc6205fb4ea42d1.gz";
      r2 = "k2/zM/SHA256E-s727651584--d1be021b56cbc1f3c88e86dea6c58cbc6e5140e47f9e41b25f23c3c7c7b8adfd.gz/SHA256E-s727651584--d1be021b56cbc1f3c88e86dea6c58cbc6e5140e47f9e41b25f23c3c7c7b8adfd.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "0Q/V9/SHA256E-s725524457--ed79d5fefb593e476a55dfc1870acd2b0a5f6dd7240f5aafb864c84ec2e3d4f0.gz/SHA256E-s725524457--ed79d5fefb593e476a55dfc1870acd2b0a5f6dd7240f5aafb864c84ec2e3d4f0.gz";
      r2 = "KP/Z8/SHA256E-s725289179--af2db5effcca371a3573d20245faf66ea462500337d472587133055108362ad0.gz/SHA256E-s725289179--af2db5effcca371a3573d20245faf66ea462500337d472587133055108362ad0.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "53/W3/SHA256E-s750023040--06c1ac29924ca4a7de751c48824449bf835c74b4b7171dba3fcf8303201f88eb.gz/SHA256E-s750023040--06c1ac29924ca4a7de751c48824449bf835c74b4b7171dba3fcf8303201f88eb.gz";
      r2 = "JV/23/SHA256E-s754289274--1a9cd78b7f055e5a74d9ba5c51ed84c20ddabf9552b44ddef4d5a404a535115e.gz/SHA256E-s754289274--1a9cd78b7f055e5a74d9ba5c51ed84c20ddabf9552b44ddef4d5a404a535115e.gz";
    }
    {
      site = "1L";
      class = "tumours";
      pdx = false;
      r1 = "5k/2g/SHA256E-s1984364970--a8699b4e2dd1241ba97195c9142bb1b55d39ee4fcfbf4d6bcf6dc5e09cd83177.gz/SHA256E-s1984364970--a8699b4e2dd1241ba97195c9142bb1b55d39ee4fcfbf4d6bcf6dc5e09cd83177.gz";
      r2 = "x2/jM/SHA256E-s1993771618--59ad09e1710f2bc9d4626218f454fabb9eedce7392808c8abb566e18b13567cd.gz/SHA256E-s1993771618--59ad09e1710f2bc9d4626218f454fabb9eedce7392808c8abb566e18b13567cd.gz";
    }
    {
      site = "1L";
      class = "tumours";
      pdx = false;
      r1 = "kv/9W/SHA256E-s1990681899--9469885cd0ddca93b071f7dda32c77196ffb8d839815b3e23e9dbf2eac8588f4.gz/SHA256E-s1990681899--9469885cd0ddca93b071f7dda32c77196ffb8d839815b3e23e9dbf2eac8588f4.gz";
      r2 = "0p/0W/SHA256E-s1996044083--0a739f0539848feec0cba1fdef698da3beb991c6c62f0174c8026d73d74b0197.gz/SHA256E-s1996044083--0a739f0539848feec0cba1fdef698da3beb991c6c62f0174c8026d73d74b0197.gz";
    }
    {
      site = "1L";
      class = "tumours";
      pdx = false;
      r1 = "PM/wW/SHA256E-s1856110780--370fd7dad299e5cd8b1bca111bab8b7bfaf894ecb2d9f50bf17f2470d640dd1d.gz/SHA256E-s1856110780--370fd7dad299e5cd8b1bca111bab8b7bfaf894ecb2d9f50bf17f2470d640dd1d.gz";
      r2 = "Vm/w3/SHA256E-s1871761562--8e5baf84cf696d8d44b85a2ec9f67734dbf9dc36503d673aaf5ad90e631e3ab2.gz/SHA256E-s1871761562--8e5baf84cf696d8d44b85a2ec9f67734dbf9dc36503d673aaf5ad90e631e3ab2.gz";
    }
    {
      site = "1L";
      class = "tumours";
      pdx = false;
      r1 = "Vv/Pv/SHA256E-s1858568033--6cc1c5f5eb144a1ef50f2bdca0dabf52bef14962a699dbaa5140c5399b26d882.gz/SHA256E-s1858568033--6cc1c5f5eb144a1ef50f2bdca0dabf52bef14962a699dbaa5140c5399b26d882.gz";
      r2 = "7Z/7M/SHA256E-s1883798533--424060097edf69dbdff2758926c55581fd325821446ef972da859440c1412c57.gz/SHA256E-s1883798533--424060097edf69dbdff2758926c55581fd325821446ef972da859440c1412c57.gz";
    }
    {
      site = "1L";
      class = "tumours";
      pdx = false;
      r1 = "K8/9x/SHA256E-s2180608248--83b15a10f0dbefa86115478b0354040e64fe0dbd9ca569a5738c462498779f67.gz/SHA256E-s2180608248--83b15a10f0dbefa86115478b0354040e64fe0dbd9ca569a5738c462498779f67.gz";
      r2 = "7F/62/SHA256E-s2200321428--b6311de26cb2352d9b5191e1780b8239824021379ec6828e8e1bf6af81c1fac9.gz/SHA256E-s2200321428--b6311de26cb2352d9b5191e1780b8239824021379ec6828e8e1bf6af81c1fac9.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 11.4.24 (Block 1L):\nuLMS desert - doesn't have normal drivers \nAKT1  - potential driver/unsure of involvement. Possibly seen in one other uLMS case - Holly - 1311 and LOH in 1433.\n\nSample meeting with Clare 2023.06.15\nplan for FFPE block 1L: send for WES";
      date_of_death = "06/2023";
      d_case_summary = "uLMS met dx 07/21";
      date_consented = "2023-05-04";
      tumour_type = "uLMS";
      tumour_details = "uLMS";
      case_details = "76 years old female  \n\n2021-07: TAHBSO,  \nIHC positive: actin, caldesmon, desmin \nIHC negative: CD10, AE1/3, EMA, cyclin D1, \n\nER 2-3+ 80% /PR 1-2+ 30%, Ki67 up to 20% \n\nBRCA panel, no pathogenic variants detected \n\n2021-11: Anastrozole \n\n25/02/2022 - 2/03/2022:\tradiation ";
      brca_report = "SFRC01756_BRCAPanel_11Oct2021_Redacted.pdf";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "8May23: Jul21 Sample requested from RWH pathology by Monica\n23May23: Jul21 Sample received from RWH pathology by Monica";
      patient_alive = "No";
    };
    inherit samples;
    name = "SFRC01756";
    capture = TwistV2HR;
  }
