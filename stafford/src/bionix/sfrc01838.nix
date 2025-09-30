with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1.17";
      class = "tumours";
      pdx = false;
      r1 = "V7/Pg/SHA256E-s1366700375--221c1f898edc2f17e87783c1263d284e42de8bbd8e6c31cba42cc92274f45600.gz/SHA256E-s1366700375--221c1f898edc2f17e87783c1263d284e42de8bbd8e6c31cba42cc92274f45600.gz";
      r2 = "pg/3f/SHA256E-s1379493424--7e9d1578175aaec7cbcf060b491430908f6d0dddfc99a6e9738ab1e3bd88ad61.gz/SHA256E-s1379493424--7e9d1578175aaec7cbcf060b491430908f6d0dddfc99a6e9738ab1e3bd88ad61.gz";
    }
    {
      site = "1.17";
      class = "tumours";
      pdx = false;
      r1 = "4m/v2/SHA256E-s1340683349--5ec70c81827cd843d6adb58ea9c170eae332ce065d5e78529a38613e2b64a332.gz/SHA256E-s1340683349--5ec70c81827cd843d6adb58ea9c170eae332ce065d5e78529a38613e2b64a332.gz";
      r2 = "Z5/km/SHA256E-s1353675932--19ee4ef49cceed25dfe70c814ab8f481a68c06d5ebcbe181b9b6ddf0fd2dc19c.gz/SHA256E-s1353675932--19ee4ef49cceed25dfe70c814ab8f481a68c06d5ebcbe181b9b6ddf0fd2dc19c.gz";
    }
    {
      site = "1.17";
      class = "tumours";
      pdx = false;
      r1 = "1J/Q9/SHA256E-s1453158972--3e58adbbcd18090830cba3ef340b9c0cfe0ff58f481660e5543bcfb51ae9998d.gz/SHA256E-s1453158972--3e58adbbcd18090830cba3ef340b9c0cfe0ff58f481660e5543bcfb51ae9998d.gz";
      r2 = "04/mf/SHA256E-s1469780589--4dac88009db2e11525e8c751ae12b72cbe01eb3b74a3e30c3df20bf38072902a.gz/SHA256E-s1469780589--4dac88009db2e11525e8c751ae12b72cbe01eb3b74a3e30c3df20bf38072902a.gz";
    }
    {
      site = "1.17";
      class = "tumours";
      pdx = false;
      r1 = "8w/FQ/SHA256E-s2202197103--f1afed15849ca921836b9e991fbd37ab3501fe7cf0604e6460270b2042731ead.gz/SHA256E-s2202197103--f1afed15849ca921836b9e991fbd37ab3501fe7cf0604e6460270b2042731ead.gz";
      r2 = "21/Jf/SHA256E-s2223751100--2922f5349c33eeb25c0ef06b18713f73e4182fd22501e2f67aab1e3305904b7f.gz/SHA256E-s2223751100--2922f5349c33eeb25c0ef06b18713f73e4182fd22501e2f67aab1e3305904b7f.gz";
    }
    {
      site = "1.17";
      class = "tumours";
      pdx = false;
      r1 = "Vv/wf/SHA256E-s2194498164--fe441801e34c3918ff0282c1fd9c8ae28c28f1537eaab077c22310802f37b500.gz/SHA256E-s2194498164--fe441801e34c3918ff0282c1fd9c8ae28c28f1537eaab077c22310802f37b500.gz";
      r2 = "51/gJ/SHA256E-s2215982295--4dfc78231939f4b7203f518ad0743a6a53d556df3c9990ab0a8be04ae854b7bf.gz/SHA256E-s2215982295--4dfc78231939f4b7203f518ad0743a6a53d556df3c9990ab0a8be04ae854b7bf.gz";
    }
    {
      site = "1.17";
      class = "tumours";
      pdx = false;
      r1 = "m6/Zf/SHA256E-s2349175744--1d6f5016881ef06643c23d27f336c2bea2ab415ae86cf0db44da1c0f031331d6.gz/SHA256E-s2349175744--1d6f5016881ef06643c23d27f336c2bea2ab415ae86cf0db44da1c0f031331d6.gz";
      r2 = "2z/0m/SHA256E-s2376595945--ee47a6ef6172bf2a10be2333912cd5453f877fbbeef7e98e26c30f9111b2dd03.gz/SHA256E-s2376595945--ee47a6ef6172bf2a10be2333912cd5453f877fbbeef7e98e26c30f9111b2dd03.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "jf/89/SHA256E-s1114938867--53130afb8e6dd6cec9ba927ffde7f35fd70b259c441458aeab51cf20f6ff4fd8.gz/SHA256E-s1114938867--53130afb8e6dd6cec9ba927ffde7f35fd70b259c441458aeab51cf20f6ff4fd8.gz";
      r2 = "96/FQ/SHA256E-s1148768297--b078fa907b15c99f1625f015fef99ad1a8e298932cf3cd5c98b0472beaea31cb.gz/SHA256E-s1148768297--b078fa907b15c99f1625f015fef99ad1a8e298932cf3cd5c98b0472beaea31cb.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "kM/3x/SHA256E-s1136916981--323ae1c21abfbb9dd26f3dbd196d285c02951e03dfdf54a3a6d041cb1f1ba567.gz/SHA256E-s1136916981--323ae1c21abfbb9dd26f3dbd196d285c02951e03dfdf54a3a6d041cb1f1ba567.gz";
      r2 = "g6/2g/SHA256E-s1171741812--601e4b0d2d33030fdca29173036b6ce099902795fc57044ba4d48c6c5caff367.gz/SHA256E-s1171741812--601e4b0d2d33030fdca29173036b6ce099902795fc57044ba4d48c6c5caff367.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "qP/7x/SHA256E-s1304308536--34c03b77cf87f0ed022cf7ce1ba1074d0f855b4cbd0c0ec792492e2997513bad.gz/SHA256E-s1304308536--34c03b77cf87f0ed022cf7ce1ba1074d0f855b4cbd0c0ec792492e2997513bad.gz";
      r2 = "P6/G2/SHA256E-s1349992044--2da73ef36db4d75428f3243a4f00b58e72aed8ed5b720b646031eefff2dc8a2a.gz/SHA256E-s1349992044--2da73ef36db4d75428f3243a4f00b58e72aed8ed5b720b646031eefff2dc8a2a.gz";
    }
    {
      site = "1.17";
      class = "tumours";
      pdx = false;
      r1 = "0m/vm/SHA256E-s388752357--f2ddfa0cc62f89ff863fe235fc1d3b279f8dae3daed48c66c2cfa5eea5a779f2.gz/SHA256E-s388752357--f2ddfa0cc62f89ff863fe235fc1d3b279f8dae3daed48c66c2cfa5eea5a779f2.gz";
      r2 = "PX/Gg/SHA256E-s390014640--d2518d9efaaa1b3165704f9b740db31282d3cc6ca607b11f8b54fbaa21337c53.gz/SHA256E-s390014640--d2518d9efaaa1b3165704f9b740db31282d3cc6ca607b11f8b54fbaa21337c53.gz";
    }
    {
      site = "1.17";
      class = "tumours";
      pdx = false;
      r1 = "kf/J5/SHA256E-s326269684--7f50f80eae29762b34d2145759c8c07edd0b10bea2284834ec00396fa0d0b0b6.gz/SHA256E-s326269684--7f50f80eae29762b34d2145759c8c07edd0b10bea2284834ec00396fa0d0b0b6.gz";
      r2 = "Fv/WG/SHA256E-s326927049--f0ab1c37cb048d0f6679271df0d76aee318fff2e5524e391fa014919fafa9614.gz/SHA256E-s326927049--f0ab1c37cb048d0f6679271df0d76aee318fff2e5524e391fa014919fafa9614.gz";
    }
    {
      site = "1.17";
      class = "tumours";
      pdx = false;
      r1 = "7Z/K1/SHA256E-s386926974--df24de54bb5a32215f6f544ccc01d3b70fe8ac7699965ff26796087bc5906e86.gz/SHA256E-s386926974--df24de54bb5a32215f6f544ccc01d3b70fe8ac7699965ff26796087bc5906e86.gz";
      r2 = "qW/X8/SHA256E-s389448544--4ebe48fd79499de9a179ff046fec7a7964b18f1ae7ec823aa5e28aa5693bd917.gz/SHA256E-s389448544--4ebe48fd79499de9a179ff046fec7a7964b18f1ae7ec823aa5e28aa5693bd917.gz";
    }
    {
      site = "1.17";
      class = "tumours";
      pdx = false;
      r1 = "7x/1F/SHA256E-s433165554--a2ab0a6987e5ea2a3e742332dc32d1d79c5b533cb05068c6ae7ade97280c4d7b.gz/SHA256E-s433165554--a2ab0a6987e5ea2a3e742332dc32d1d79c5b533cb05068c6ae7ade97280c4d7b.gz";
      r2 = "PK/Zf/SHA256E-s437920531--67d555f750b9530566b809805257f95590aedec17a68884a345c200944160088.gz/SHA256E-s437920531--67d555f750b9530566b809805257f95590aedec17a68884a345c200944160088.gz";
    }
    {
      site = "1.17";
      class = "tumours";
      pdx = false;
      r1 = "VV/VQ/SHA256E-s730727991--1487549d8e42e4fafe517a4854e448f62fd82e75496262ff2f3f84d3432065be.gz/SHA256E-s730727991--1487549d8e42e4fafe517a4854e448f62fd82e75496262ff2f3f84d3432065be.gz";
      r2 = "xG/QQ/SHA256E-s737704130--65211752f67f7526e9deaa2854162ede36f2461beaebea713b4603558ffd555c.gz/SHA256E-s737704130--65211752f67f7526e9deaa2854162ede36f2461beaebea713b4603558ffd555c.gz";
    }
    {
      site = "1.17";
      class = "tumours";
      pdx = false;
      r1 = "2Z/zv/SHA256E-s673822224--2abc996ca60aa655284625437755ce295634100a6528366b5835dc7ab6580d67.gz/SHA256E-s673822224--2abc996ca60aa655284625437755ce295634100a6528366b5835dc7ab6580d67.gz";
      r2 = "58/0p/SHA256E-s675552787--0c92fb5370839fa3d6486e1afbebb22eee220c95b712a04f5af58d7d3ef99653.gz/SHA256E-s675552787--0c92fb5370839fa3d6486e1afbebb22eee220c95b712a04f5af58d7d3ef99653.gz";
    }
    {
      site = "1.17";
      class = "tumours";
      pdx = false;
      r1 = "4j/VF/SHA256E-s487120946--3773370bd007f33cc2392adc723856855947214d1a21a08a4e7ab44b5bb29a15.gz/SHA256E-s487120946--3773370bd007f33cc2392adc723856855947214d1a21a08a4e7ab44b5bb29a15.gz";
      r2 = "86/Z2/SHA256E-s486269873--6ea51346d59a5e97cf3d7e098d55d508f51c81df639ad97585a638f85612db99.gz/SHA256E-s486269873--6ea51346d59a5e97cf3d7e098d55d508f51c81df639ad97585a638f85612db99.gz";
    }
    {
      site = "1.17";
      class = "tumours";
      pdx = false;
      r1 = "0J/f7/SHA256E-s646515562--05b32dcea3a641467fdd785bda24e67daa837ed41a0b17a1955053e2a139138c.gz/SHA256E-s646515562--05b32dcea3a641467fdd785bda24e67daa837ed41a0b17a1955053e2a139138c.gz";
      r2 = "kP/v5/SHA256E-s649676276--a29f924b5dcd49afa9a06dae6c698bb826f51f8a508449e38d67e7a796bcc55d.gz/SHA256E-s649676276--a29f924b5dcd49afa9a06dae6c698bb826f51f8a508449e38d67e7a796bcc55d.gz";
    }
    {
      site = "1.17";
      class = "tumours";
      pdx = false;
      r1 = "z2/p8/SHA256E-s557107139--55c119a28a4799100412ffc4d89b7731743f35567b27c0fdb5c833b0f0d33fac.gz/SHA256E-s557107139--55c119a28a4799100412ffc4d89b7731743f35567b27c0fdb5c833b0f0d33fac.gz";
      r2 = "1M/g3/SHA256E-s561774918--70a9f59d25142f1c560a57336e401e188ffd1c5ed4de0ee97c694e7a847b5462.gz/SHA256E-s561774918--70a9f59d25142f1c560a57336e401e188ffd1c5ed4de0ee97c694e7a847b5462.gz";
    }
    {
      site = "1.17";
      class = "tumours";
      pdx = false;
      r1 = "PX/k6/SHA256E-s1088025767--e325f564388d0602287f7835df50f37b8da9c7b9627d89c7a23e370aba9642b4.gz/SHA256E-s1088025767--e325f564388d0602287f7835df50f37b8da9c7b9627d89c7a23e370aba9642b4.gz";
      r2 = "m4/MG/SHA256E-s1092795195--890c67de062dc7fb8fb876e46effed96fcb73f355ae3768941cbcaeaee6da24b.gz/SHA256E-s1092795195--890c67de062dc7fb8fb876e46effed96fcb73f355ae3768941cbcaeaee6da24b.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 11.4.24:\nCIC - involved in BRAF pathway, truncating variants are pathogenic. \nSDHA germline variants - many variants within a few residues of each other. Looks strange; potentially not calling correct variant. AF <50% in blood. Matt and Justin to look at raw reads. Discuss in next meeting.\nSDHA review (Matt and Justin) - twist specific artefact based on current evidence.\n\nSample meeting with Clare 16.11.2023\nPlan on FFPE block 1.17 : WES ";
      d_case_summary = "Stage 1C1 Ovarian mucinous (expansile pattern) carcinoma of right ovary";
      date_consented = "2023-10-02";
      tumour_type = "Ovarian Cancer other (including mixed)";
      tumour_details = "Stage 1C1 Ovarian mucinous (expansile pattern) carcinoma of right ovary";
      case_details = "Patient history \n\n27 years old female \n\n2023-05\tDiagnosis, biopsy, curetting, FFPE block 1.17 received  \n\n2023-08\trecurrence, surgery \n\n2023-10\tBlood B1 received ";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "5Oct23: 29May23 sample tissue requested from Austin Pathology by Haris\n22Oct23: 29May23 sample tissue received from Austin Pathology by Haris";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01838";
  }
