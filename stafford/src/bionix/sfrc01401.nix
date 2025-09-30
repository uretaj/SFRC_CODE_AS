with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        facets.reporting.preprocess = def facets.reporting.preprocess {
          mem = 50;
        };
      })
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "8K/mK/SHA256E-s10769563098--bb77030d5d549c46fb8d5479c0c7aeca1565b1761e42c2066d262cebfaf467f5.gz/SHA256E-s10769563098--bb77030d5d549c46fb8d5479c0c7aeca1565b1761e42c2066d262cebfaf467f5.gz";
      r2 = "zm/30/SHA256E-s11832661311--2a6b93eedacdad8267510e8bf9d6502aeabc2be32b72954214db1fddae2dba42.gz/SHA256E-s11832661311--2a6b93eedacdad8267510e8bf9d6502aeabc2be32b72954214db1fddae2dba42.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "xW/ww/SHA256E-s11087705660--074f973b649bf479ac2697d4a3c08b2bf77f5beb3c5d8a557b44a47f7a9f80ac.gz/SHA256E-s11087705660--074f973b649bf479ac2697d4a3c08b2bf77f5beb3c5d8a557b44a47f7a9f80ac.gz";
      r2 = "VW/M1/SHA256E-s12168925665--2669330e78846498edda58f8085072516ff7f7b9643dbc2d70f8e19de4a3a7f4.gz/SHA256E-s12168925665--2669330e78846498edda58f8085072516ff7f7b9643dbc2d70f8e19de4a3a7f4.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "fP/k9/SHA256E-s10914614906--d42c843dd9c916160d11849e0c98550e2a0528aa2876390ed5d2ec5e9ea2e452.gz/SHA256E-s10914614906--d42c843dd9c916160d11849e0c98550e2a0528aa2876390ed5d2ec5e9ea2e452.gz";
      r2 = "zx/MG/SHA256E-s11966149894--14f86b47d9fc3644265d30495e5c6c021c20b3d3a0f13580f732981eca5715ad.gz/SHA256E-s11966149894--14f86b47d9fc3644265d30495e5c6c021c20b3d3a0f13580f732981eca5715ad.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "ww/FJ/SHA256E-s11111890293--4bc7b5e7ab437b2eb8b6d4ec615cc978316ccd7a51527cd0cf8b42bfde031ea2.gz/SHA256E-s11111890293--4bc7b5e7ab437b2eb8b6d4ec615cc978316ccd7a51527cd0cf8b42bfde031ea2.gz";
      r2 = "wK/XX/SHA256E-s12219222662--11b4368a9b61f6b7bba8251cc85fe5421b84eef5a61e77c35a67bce6e9d6d344.gz/SHA256E-s12219222662--11b4368a9b61f6b7bba8251cc85fe5421b84eef5a61e77c35a67bce6e9d6d344.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "Xx/2x/SHA256E-s23453264357--448ae66a85ca6d5fb8e497a2379f9b59b1f0868150a557263f43485588aafda2.gz/SHA256E-s23453264357--448ae66a85ca6d5fb8e497a2379f9b59b1f0868150a557263f43485588aafda2.gz";
      r2 = "VJ/vg/SHA256E-s24959433402--191afedb82eda32488e00ac5d82b61bb50022f337476af4daaaf566937842593.gz/SHA256E-s24959433402--191afedb82eda32488e00ac5d82b61bb50022f337476af4daaaf566937842593.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "W1/V5/SHA256E-s24552430354--0648a4d697463d9fd80f1bc9ccaf829aa4b22d3afa69df767c0d80360e97b836.gz/SHA256E-s24552430354--0648a4d697463d9fd80f1bc9ccaf829aa4b22d3afa69df767c0d80360e97b836.gz";
      r2 = "5M/Z2/SHA256E-s26098661639--b13451025cbd5a086236116e8a699843b9af6b21de2ee5efadeb570827ec4fe9.gz/SHA256E-s26098661639--b13451025cbd5a086236116e8a699843b9af6b21de2ee5efadeb570827ec4fe9.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "G5/P1/SHA256E-s23919706821--aae4101f48d620435f4fbd75a49fe6738852f1aca696efb22f313f2c0e5ea1d9.gz/SHA256E-s23919706821--aae4101f48d620435f4fbd75a49fe6738852f1aca696efb22f313f2c0e5ea1d9.gz";
      r2 = "WW/12/SHA256E-s25381591707--c1a3bee11bd56249c4b2c8fe4a911e7cb6046f2880702aac0aef3e6fc0f8607b.gz/SHA256E-s25381591707--c1a3bee11bd56249c4b2c8fe4a911e7cb6046f2880702aac0aef3e6fc0f8607b.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "Q9/MP/SHA256E-s24471062128--cbf56f75309ecde4a1f14e33c8ac0599955a4099c5785b4ba4dcdb9bd867486c.gz/SHA256E-s24471062128--cbf56f75309ecde4a1f14e33c8ac0599955a4099c5785b4ba4dcdb9bd867486c.gz";
      r2 = "5G/jP/SHA256E-s26078707843--35d0b0e1b4e4f9e56a86bbe1bb135e08dd8ae4899ad1e1e4cb718e014d2182aa.gz/SHA256E-s26078707843--35d0b0e1b4e4f9e56a86bbe1bb135e08dd8ae4899ad1e1e4cb718e014d2182aa.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "gq/P2/SHA256E-s1436097038--72f6a1a388fb41575c7760b74e532781183946dae68166d9a9c32b2f4db915bf.gz/SHA256E-s1436097038--72f6a1a388fb41575c7760b74e532781183946dae68166d9a9c32b2f4db915bf.gz";
      r2 = "PG/Xv/SHA256E-s1412981905--1b806c7f2ba00bb587a228655370a1da3b6dee7a34b68af1a62d22610452e34d.gz/SHA256E-s1412981905--1b806c7f2ba00bb587a228655370a1da3b6dee7a34b68af1a62d22610452e34d.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "gq/9m/SHA256E-s1320652536--a6876a39292df6487a68ab400e20659ff1db9d7a245c87a6f1d2c2a7bd39aa19.gz/SHA256E-s1320652536--a6876a39292df6487a68ab400e20659ff1db9d7a245c87a6f1d2c2a7bd39aa19.gz";
      r2 = "Gw/v7/SHA256E-s1297279341--517dd98923e7e65894ed852a5ece0f829e279e5d6e342c8829cc962425505698.gz/SHA256E-s1297279341--517dd98923e7e65894ed852a5ece0f829e279e5d6e342c8829cc962425505698.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "4j/fq/SHA256E-s1331412144--0ab946e6a77adfd51d50f85fc30b98dc33d55c078f952884a09f97036c071919.gz/SHA256E-s1331412144--0ab946e6a77adfd51d50f85fc30b98dc33d55c078f952884a09f97036c071919.gz";
      r2 = "9P/pX/SHA256E-s1302622935--0db4e293d318ed3c8ec09a878df8e625a4855a7131111f0ebb56d8c938409f04.gz/SHA256E-s1302622935--0db4e293d318ed3c8ec09a878df8e625a4855a7131111f0ebb56d8c938409f04.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "WF/g1/SHA256E-s1326243670--446901fb7d4bdce75afb860daa7cfdcb89ce9c66e27c814fddfb9c71269f8be5.gz/SHA256E-s1326243670--446901fb7d4bdce75afb860daa7cfdcb89ce9c66e27c814fddfb9c71269f8be5.gz";
      r2 = "KV/JJ/SHA256E-s1307338220--f441095c850404d4f5429e6b80eea222a0de277ae27adbaa9d629d7b411c9056.gz/SHA256E-s1307338220--f441095c850404d4f5429e6b80eea222a0de277ae27adbaa9d629d7b411c9056.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "endometrial other";
      meeting_discussions_follow_up = "Update: This case is high grade stromal sarcoma of uterus\n\nRC Meeting 22.07.2021\nDiscussed WGS report.\nQuery Endometrial carcinosarcoma, HGSEC. Holly suggested Mullerian adenosarcoma. Like carcinosarcoma but the epithelial portion is benign.  Dicer mutations are quite common in this tumour type (at least in one study) and were not seen in the uterine carcinosarcoma cases studied. FBXW7, KRAS, NRAS and KMT2D mutations. \nOne paper found 23/248 endometrial carcinomas to have DICER mutations - again very rare in UCS (1/56) \nGayanie to do another path review. \n\nAt MDM, path review said this is uLMS, not endometrial carcinoma. Still would like Gayanie's new review. \n\nClare's Meeting 06.05.2021\nPlan: send for WGS on the Patten trust \nGayanie mentioned has a new diagnosis. Was high grade ESS, but it is uLMS (spindle cell)";
      d_case_summary = "28F with bleeding post D";
      tumour_type = "Endometrial cancer (other)";
      tumour_details = "high grade stromal sarcoma of uterus";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01401";
  }
