with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1.15";
      class = "tumours";
      pdx = false;
      r1 = "px/VW/SHA256E-s780958948--4e037d85d1f7207348f4564c3a206b37f0eae6da4f99eae0a6387c7b085eb43a.gz/SHA256E-s780958948--4e037d85d1f7207348f4564c3a206b37f0eae6da4f99eae0a6387c7b085eb43a.gz";
      r2 = "zX/vk/SHA256E-s781539033--900cc7a9ce1aa555288fb8e973a2fd5ec16bd7a50385cf9b20d00dc0b371058a.gz/SHA256E-s781539033--900cc7a9ce1aa555288fb8e973a2fd5ec16bd7a50385cf9b20d00dc0b371058a.gz";
    }
    {
      site = "1.15";
      class = "tumours";
      pdx = false;
      r1 = "6M/gp/SHA256E-s807884841--287bb791b70427b3240567609a9a318ff124ee230b4697d1342cf90983e42792.gz/SHA256E-s807884841--287bb791b70427b3240567609a9a318ff124ee230b4697d1342cf90983e42792.gz";
      r2 = "V7/Qx/SHA256E-s810482329--0fe1ef70107d157d352008525bb1c06f6247b06a0675946c8b6d56740ce687a8.gz/SHA256E-s810482329--0fe1ef70107d157d352008525bb1c06f6247b06a0675946c8b6d56740ce687a8.gz";
    }
    {
      site = "1.15";
      class = "tumours";
      pdx = false;
      r1 = "9X/Mf/SHA256E-s803435538--2121f568ef11efcaa870f13c2155cd212c119740119d293d6ef83407ca350a6a.gz/SHA256E-s803435538--2121f568ef11efcaa870f13c2155cd212c119740119d293d6ef83407ca350a6a.gz";
      r2 = "2q/p5/SHA256E-s807208930--40f6798872afa7f632a85d431c979a1a5df0f65f3f490be8dfc3158e2aebcc00.gz/SHA256E-s807208930--40f6798872afa7f632a85d431c979a1a5df0f65f3f490be8dfc3158e2aebcc00.gz";
    }
    {
      site = "1.15";
      class = "tumours";
      pdx = false;
      r1 = "vw/QK/SHA256E-s804358305--672b76dfb08f5b199a29765fd9c469fe3747b193741151368909280eb5c25683.gz/SHA256E-s804358305--672b76dfb08f5b199a29765fd9c469fe3747b193741151368909280eb5c25683.gz";
      r2 = "J9/1k/SHA256E-s807344359--04857a510d6bb6d80331926480f5081c4573ed4ce410848956c362d74ed22492.gz/SHA256E-s807344359--04857a510d6bb6d80331926480f5081c4573ed4ce410848956c362d74ed22492.gz";
    }
    {
      site = "1.15";
      class = "tumours";
      pdx = false;
      r1 = "P7/G4/SHA256E-s827134601--5e6f16ee521a1e61eafa89e232665ec83143b867263e5572277d199d1d3a57b5.gz/SHA256E-s827134601--5e6f16ee521a1e61eafa89e232665ec83143b867263e5572277d199d1d3a57b5.gz";
      r2 = "Qj/qp/SHA256E-s830752920--8786576a4579b9db9535e35800adfbf0f0193683534acc3064089f9b3b98bf7b.gz/SHA256E-s830752920--8786576a4579b9db9535e35800adfbf0f0193683534acc3064089f9b3b98bf7b.gz";
    }
    {
      site = "1.15";
      class = "tumours";
      pdx = false;
      r1 = "qK/27/SHA256E-s794678834--512f8a331371812cf851577fe034b0f330007080727978c0c81a97aac3754c5b.gz/SHA256E-s794678834--512f8a331371812cf851577fe034b0f330007080727978c0c81a97aac3754c5b.gz";
      r2 = "wj/zQ/SHA256E-s795027847--519cd64f38c57ebf6ed6610038210ccdaf17217c51bee0cd7873a45b6e91e198.gz/SHA256E-s795027847--519cd64f38c57ebf6ed6610038210ccdaf17217c51bee0cd7873a45b6e91e198.gz";
    }
    {
      site = "1.15";
      class = "tumours";
      pdx = false;
      r1 = "Jz/Q7/SHA256E-s826449858--eaf53b06e230377b579e2e8a3c9dbf919eabf1ec1da0b6cabad694b85970b427.gz/SHA256E-s826449858--eaf53b06e230377b579e2e8a3c9dbf919eabf1ec1da0b6cabad694b85970b427.gz";
      r2 = "2j/3v/SHA256E-s829632311--0f5d9dfd5ea928039aa5fb8f7426656be7ab25c32b15a7ed5c86ed42233aa138.gz/SHA256E-s829632311--0f5d9dfd5ea928039aa5fb8f7426656be7ab25c32b15a7ed5c86ed42233aa138.gz";
    }
    {
      site = "1.15";
      class = "tumours";
      pdx = false;
      r1 = "WJ/11/SHA256E-s781680871--faa74cb611451119111255ab8e7bd5125ba9667501c90bdbaf269896a8c3a7ad.gz/SHA256E-s781680871--faa74cb611451119111255ab8e7bd5125ba9667501c90bdbaf269896a8c3a7ad.gz";
      r2 = "X5/76/SHA256E-s781211043--84e4bbc99973097164c1e7ab328f5f7306a90083748485aa898a5280f5e4adf3.gz/SHA256E-s781211043--84e4bbc99973097164c1e7ab328f5f7306a90083748485aa898a5280f5e4adf3.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "W5/97/SHA256E-s2835344209--deddee2dee9d2213f9772fc748f1f99fc21ce825df7e1c01f994cda17e114d9d.gz/SHA256E-s2835344209--deddee2dee9d2213f9772fc748f1f99fc21ce825df7e1c01f994cda17e114d9d.gz";
      r2 = "v0/xV/SHA256E-s2946673142--21aa85d5a17269d14293aa2a08625a40f086fd1ac20f2e45ddfe67f8f8174e3b.gz/SHA256E-s2946673142--21aa85d5a17269d14293aa2a08625a40f086fd1ac20f2e45ddfe67f8f8174e3b.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "1z/QJ/SHA256E-s2703590836--939405567fe3c77a678b7422a446939001c2e5e6345bce9eb2fd09b6a387814b.gz/SHA256E-s2703590836--939405567fe3c77a678b7422a446939001c2e5e6345bce9eb2fd09b6a387814b.gz";
      r2 = "6k/Gm/SHA256E-s2797883747--e7879558a5741f2ca7ed682e5ca6f7802b251d8052049907ab4e628d7a2ce6ae.gz/SHA256E-s2797883747--e7879558a5741f2ca7ed682e5ca6f7802b251d8052049907ab4e628d7a2ce6ae.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "6P/9m/SHA256E-s2702791350--1efe0a4af8d8cf4b9860bf75c86a5f8ebc7088c527e5dd6b36a442e8b2193816.gz/SHA256E-s2702791350--1efe0a4af8d8cf4b9860bf75c86a5f8ebc7088c527e5dd6b36a442e8b2193816.gz";
      r2 = "Z6/K3/SHA256E-s2789940097--e9cf34c01d61fe4794296de8f9a81b18c8ccbb268a0e751fd0cbc4c31b5aadbd.gz/SHA256E-s2789940097--e9cf34c01d61fe4794296de8f9a81b18c8ccbb268a0e751fd0cbc4c31b5aadbd.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "48/jV/SHA256E-s2812097908--335719482515c79f3ad9ea39098aa8eb06d76a8ec9d68e4c74a989576784bff9.gz/SHA256E-s2812097908--335719482515c79f3ad9ea39098aa8eb06d76a8ec9d68e4c74a989576784bff9.gz";
      r2 = "ZK/XV/SHA256E-s2899858304--1de6a94b372fa4c3526f041786b3f3e309b516d2279a168d69a5bbb5e23d12be.gz/SHA256E-s2899858304--1de6a94b372fa4c3526f041786b3f3e309b516d2279a168d69a5bbb5e23d12be.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 29.2.24:\nBRCA2 in GCT would be unusual. Frameshift right at the end of the gene, no LoH. Not reportable. \n\nClare's meeting 2023.05.18\nPlan: Extract DNA on the recurrence FFPE block  1.15 as purity is higher and send for WES? yes \n\nClare's Meeting 20.04.2023\nReviewed FFPE Block 1.11\nSmall volume of tumour, 60% purity. Do WES on this block.\nHave received in the lab, block 1.15 (right ovary). Yet to be reviewed. ";
      d_case_summary = "38 year old female diagnosed with adult granulosa cell tumour (ovary) in 2014. Left Salpingoophorectomy in 2014. \nApril 2020, Inhibin Increase\nJuly 2021, Recurrence confirmed - Hysterectomy, Right Salpingoophorectomy - recurrence confirmed sigmoid mesentery, POD, pararectal region\nAugust 2021 - Commenced Letrozole\nOctober 2022 - Laparoscopy, resection of tumour - inoperable disease\nNovember 2022 - Commenced on Carbo/Taxol\nInoperable 2nd recurrence of adult granulosa cell tumour. Had Aromatase inhibitors after 1st recurrence. Now completed 3rd cycle of 6 x Carboplatin/Paclitaxel.";
      date_consented = "2023-01-23";
      tumour_type = "GCT (Granulosa Cell Tumour - including Sertoli Leydig Cell)";
      tumour_details = "GCT";
      case_details = "38 year old female  \n\n2014 initial diagnosis. Left Salpingoophorectomy \nIHC positive: Inhibin, very focal stain but strong positivity \n\n2021-05\tBiopsies and curetting \n\n2021-07\tRecurrence  - Hysterectomy, Right Salpingoophorectomy, FFPE Blocks 1.11 and 1.15 received \n\n2021-08 \tCommenced Letrozole \n\n2022-10\tresection and debulking of nodes, but had low volume of Inoperable disease \nER 70% positive, PR 70% positive \n\n2022-11\tCommenced on Carbo/Taxol \n\n2023-05\tBlood B1 received  \n\nArc recommendation: \n\n- Archival FFPE can be recalled for TSO500 or whole exome sequencing. If fresh tissue can be obtained, then Whole Genome Sequencing could be performed in a research setting \n\n- Consider referral to the MoST study if eligible. Also consider referral to RiSC study ";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      arc_enrol_date = "2023-02-07";
      portal_letter = "SFRC01715_ARCPortalLetter_15Feb2023_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "20Mar23: Jul 21 sample requested from Austin pathology by Monica\n29Mar23: Jul21 sample received from Austin pathology by Monica\n30Mar23: Jul21 sample (ovary blocks) requested from Austin by Monica\n15Apr23: Jul21 sample (ovary blocks) received from Austin by Monica";
    };
    inherit samples;
    name = "SFRC01715";
    capture = TwistV2HR;
  }
