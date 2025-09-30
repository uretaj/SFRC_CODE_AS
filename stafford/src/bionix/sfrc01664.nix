with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "71/q7/SHA256E-s760889397--457840a910540c78ecb97c1d64f0275b2c9ea775a37f8c62e392ded096bc22b8.gz/SHA256E-s760889397--457840a910540c78ecb97c1d64f0275b2c9ea775a37f8c62e392ded096bc22b8.gz";
      r2 = "Kw/GJ/SHA256E-s759247582--54aea3bc402618d8b6b6f9b71f12a8185e9c6ed82963cad2152deb3e57f37ea3.gz/SHA256E-s759247582--54aea3bc402618d8b6b6f9b71f12a8185e9c6ed82963cad2152deb3e57f37ea3.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Jw/mq/SHA256E-s766830368--58ec3a20d7ef6aa01ba7b24995f316e64112b982569c1dd79f084ac73204d97a.gz/SHA256E-s766830368--58ec3a20d7ef6aa01ba7b24995f316e64112b982569c1dd79f084ac73204d97a.gz";
      r2 = "F5/WV/SHA256E-s769589244--d4baaae884a60a87e4201bb2ba145daa47f59561fa72d7da22ff8bc3c8a0e83f.gz/SHA256E-s769589244--d4baaae884a60a87e4201bb2ba145daa47f59561fa72d7da22ff8bc3c8a0e83f.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "85/VF/SHA256E-s762159788--ad03de4a669062b99f86f3f93d3545304d6c5510b9458090978f2afcf6721903.gz/SHA256E-s762159788--ad03de4a669062b99f86f3f93d3545304d6c5510b9458090978f2afcf6721903.gz";
      r2 = "k4/m4/SHA256E-s762867652--921cca252e6eb3ee79f1a511320df56f4859a90f45b1b714482b35c8c33e7181.gz/SHA256E-s762867652--921cca252e6eb3ee79f1a511320df56f4859a90f45b1b714482b35c8c33e7181.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "w0/56/SHA256E-s804253740--421840fa6478cd056ca171a72dc290ed490c7c3e1cf032e850db1586d894b0c8.gz/SHA256E-s804253740--421840fa6478cd056ca171a72dc290ed490c7c3e1cf032e850db1586d894b0c8.gz";
      r2 = "F5/7Q/SHA256E-s809622841--1ecbe789f87f3db2b9e1eb95a5c58782ae100d7be7733e30fcf4791904ed21e4.gz/SHA256E-s809622841--1ecbe789f87f3db2b9e1eb95a5c58782ae100d7be7733e30fcf4791904ed21e4.gz";
    }
    {
      site = "1E";
      class = "tumours";
      pdx = false;
      r1 = "0m/4V/SHA256E-s1197881047--faccb2914662b41030d80d7004e1356daf5e23d95832d7370400684b4058dc63.gz/SHA256E-s1197881047--faccb2914662b41030d80d7004e1356daf5e23d95832d7370400684b4058dc63.gz";
      r2 = "P1/FW/SHA256E-s1217362635--aaf45d7ce67d2da460a79fecfe8b49f8890277a4d7cfba64f5671c0db768de7d.gz/SHA256E-s1217362635--aaf45d7ce67d2da460a79fecfe8b49f8890277a4d7cfba64f5671c0db768de7d.gz";
    }
    {
      site = "1E";
      class = "tumours";
      pdx = false;
      r1 = "pP/J3/SHA256E-s1196225185--34d5595a23feb6053710e190fa872548027d1500c1e0b1232a7812d7ad202d91.gz/SHA256E-s1196225185--34d5595a23feb6053710e190fa872548027d1500c1e0b1232a7812d7ad202d91.gz";
      r2 = "7x/x4/SHA256E-s1215395930--c92f754b0f66fd528e15550b2aa293ddb95526db0895076ae1083a8c7773a03b.gz/SHA256E-s1215395930--c92f754b0f66fd528e15550b2aa293ddb95526db0895076ae1083a8c7773a03b.gz";
    }
    {
      site = "1E";
      class = "tumours";
      pdx = false;
      r1 = "fk/5k/SHA256E-s1279277884--c0549702d791472c642f2cfc60ec6c8d7d3af12bd724bc1b73f81b1058b9dfb5.gz/SHA256E-s1279277884--c0549702d791472c642f2cfc60ec6c8d7d3af12bd724bc1b73f81b1058b9dfb5.gz";
      r2 = "qm/3K/SHA256E-s1300931316--5f774279f032916f48882fd31e0a5a015c2d3f4af83fe1214de03047ffe7ad8a.gz/SHA256E-s1300931316--5f774279f032916f48882fd31e0a5a015c2d3f4af83fe1214de03047ffe7ad8a.gz";
    }
    {
      site = "1E";
      class = "tumours";
      pdx = false;
      r1 = "Pv/1f/SHA256E-s413381271--49ad7b4ddb6160901e57fde4663c543b7ba8b9074fe4a1f778deab079f22dd4d.gz/SHA256E-s413381271--49ad7b4ddb6160901e57fde4663c543b7ba8b9074fe4a1f778deab079f22dd4d.gz";
      r2 = "p0/W1/SHA256E-s416672810--3b372dfe492da48af1d25bdde86d73c55020437743fa82eee6ec66bc952e0c0b.gz/SHA256E-s416672810--3b372dfe492da48af1d25bdde86d73c55020437743fa82eee6ec66bc952e0c0b.gz";
    }
    {
      site = "1E";
      class = "tumours";
      pdx = false;
      r1 = "JG/FK/SHA256E-s315498911--0ba6d3e4aa3336ddf8f68d8f1013408ebcbb1db72987c21d8a17efde063e8e1d.gz/SHA256E-s315498911--0ba6d3e4aa3336ddf8f68d8f1013408ebcbb1db72987c21d8a17efde063e8e1d.gz";
      r2 = "mm/64/SHA256E-s316491511--c8f8fd295f1789a0c3c40dcbc59655c0e089aa18d6488eaed340b1cbdf446ea0.gz/SHA256E-s316491511--c8f8fd295f1789a0c3c40dcbc59655c0e089aa18d6488eaed340b1cbdf446ea0.gz";
    }
    {
      site = "1E";
      class = "tumours";
      pdx = false;
      r1 = "X2/vp/SHA256E-s408878954--e72d50070da5b1c40c4cd7ce42136ab927779bb54b85d36fa4c28ce65dcf81fa.gz/SHA256E-s408878954--e72d50070da5b1c40c4cd7ce42136ab927779bb54b85d36fa4c28ce65dcf81fa.gz";
      r2 = "ZW/zZ/SHA256E-s413241433--db6f8951915e468c516ada8fd6026276b37b164d80156af4c1a1e0f149017fec.gz/SHA256E-s413241433--db6f8951915e468c516ada8fd6026276b37b164d80156af4c1a1e0f149017fec.gz";
    }
    {
      site = "1E";
      class = "tumours";
      pdx = false;
      r1 = "8F/mQ/SHA256E-s341357322--a39affe9ca926f739672affde5962542689d49572015f4bac58fdda1d403a06e.gz/SHA256E-s341357322--a39affe9ca926f739672affde5962542689d49572015f4bac58fdda1d403a06e.gz";
      r2 = "JM/88/SHA256E-s346300873--a32d5586ca6e0dcf3813549a4b365dd9edaaa3ecb959705898f84c761a46956c.gz/SHA256E-s346300873--a32d5586ca6e0dcf3813549a4b365dd9edaaa3ecb959705898f84c761a46956c.gz";
    }
    {
      site = "1E";
      class = "tumours";
      pdx = false;
      r1 = "m2/mF/SHA256E-s635509617--68d85cb8a9c088c87277b35828a7f86b4ec3589f7761ad80c140bb205926f701.gz/SHA256E-s635509617--68d85cb8a9c088c87277b35828a7f86b4ec3589f7761ad80c140bb205926f701.gz";
      r2 = "vp/Vf/SHA256E-s642385802--e5e7972d013c2c84c68601f00550f3d55cadba38b686840b8a56ca6d86aa6062.gz/SHA256E-s642385802--e5e7972d013c2c84c68601f00550f3d55cadba38b686840b8a56ca6d86aa6062.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 11.4.24 (Block 1E):\nLooks HRD because of the ATRX. Possibility of PARPi + Temozolomide? \n\nRC meeting 02.02.2023\nDiscussed TSO500 report.\n(report has been issued to clinician) \nNothing to add. \n\nClare's Meeting 30.11.2022\nSend block 1.1 for TSO500. The good block is from 2013.\nWES on primary block 1E - make DNA and store when blood arrives.\nPrimary block also for ProCan.";
      blood_recall_history = "Patient contacted (Briony's email to Rae) 17.08.2023";
      d_case_summary = "Recurrent metastatic Stage IV uterine leiomyosarcoma : ER 70% positive, PR negative \nFor HRD testing please.";
      date_consented = "2022-09-15";
      tumour_type = "uLMS";
      tumour_details = "uLMS, ER 70% positive, PR negative";
      case_details = "70F\n\n2013: Dx high grade uterine sarcoma\nSurgery: Hysterectomy. Blocks 1E.\nIHC positive: CD10\nIHC negative: caldesmon, panCK, desmin, CD45\nFeatures consistent with endometrial stromal origin rather than smooth muscle\n\n2022-03: Recurrence of uLMS. Metastases: Large lung mass, several smaller pulmonary nodules. Lesion in the sternum is suspicious for bone metastasis\nBiopsy: left lower lobe (Block 1.1)\nIHC positive: Desmin\nIHC negative: SMA, SOX10, S-100\n\n2022-04: Commenced Anastrazole\n\n2022-05: Completion of palliative radiotherapy in lung.\n\n2022-11: FFPE Block 1E (uterine sarcoma) and sections from FFPE Block 1.1 (lung biopsy) received.\n---------------------------------------------------------------------------\n70-year-old woman with metastatic uterine leiomyosarcoma (uLMS) \no\tHysterectomy and adjuvant radiotherapy 2013 for a high grade uterine sarcoma, reported as ER 70% positive PR negative (report not available)\no\tDeveloped cough, wheeze winter 2021, investigated with CT, PET, bronchoscopy\no\tPET 21/3/22: metabolically active large LLL lung mass. Metastatic nodule in RUL lobe. Other small pulmonary nodules below PET resolution. Solitary FDG avid lesion in sternum suspicious for bone metastasis. \no\tBronch biopsy 23/3/2022: Tumour comprised of spindle shaped cells in fascicles, pleomorphism, scattered mitoses. Immunohistochemistry positive for desmin, negative for SMA, SOX10, S-100. Features favour leiomyosarcoma based on history. \no\tCommenced Anastrozole April 2022\no\tPalliative radiotherapy 10 fractions to LLL completed 25/5/22\no\tPast Med Hx: T2DM, HTN, Glaucoma, Diverticular disease. ECOG 1, no significant family hx\no\tReferred to the ARC Portal for molecular testing including HRD testing\n";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      portal_letter = "SFRC01664_Letter_10Apr2024_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "17/10/2022: 2013 sample requested from Australian Clinical labs by Devindee. \n17/10/2022: 2022 sample requested from Austin pathology by Devindee.\n04/11/2022: 2013 block received.\n08/11/2022: 2022 slides received.";
    };
    inherit samples;
    name = "SFRC01664";
    capture = TwistV2HR;
  }
