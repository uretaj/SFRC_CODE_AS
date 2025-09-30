with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {samtools.sort = def samtools.sort {walltime = "48:00:00";};})
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "pf/1j/SHA256E-s51620940862--41e9243b35a828ae4255bc963ea762f1756ec4c4fcc33fea5c3412c22cc7fef6.gz/SHA256E-s51620940862--41e9243b35a828ae4255bc963ea762f1756ec4c4fcc33fea5c3412c22cc7fef6.gz";
      r2 = "3f/mZ/SHA256E-s55592433952--6f14ceb80f48a4640b12d3e6fcecd82c673c53bc6051a7eaa2c99f11adc3f41c.gz/SHA256E-s55592433952--6f14ceb80f48a4640b12d3e6fcecd82c673c53bc6051a7eaa2c99f11adc3f41c.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "JV/QM/SHA256E-s6572542905--3e1be527ee59b89ea34e4659be80417b103f4ce59f6b69d77d8c4328cbd8fc5c.gz/SHA256E-s6572542905--3e1be527ee59b89ea34e4659be80417b103f4ce59f6b69d77d8c4328cbd8fc5c.gz";
      r2 = "3k/Qj/SHA256E-s6550637007--19466c9622470e9b1d7eb8fe9bf15056295946a05fdd0cdde01ca0e8faf4a7c8.gz/SHA256E-s6550637007--19466c9622470e9b1d7eb8fe9bf15056295946a05fdd0cdde01ca0e8faf4a7c8.gz";
    }
    {
      site = "S1-20913_25315_org1_100fresh";
      class = "tumours";
      pdx = true;
      r1 = "0G/Wx/SHA256E-s5744867602--a58c230e950aa159b82cce0d3447dd30f8c5021fb4d7725b36d7c2e2b94aedcf.gz/SHA256E-s5744867602--a58c230e950aa159b82cce0d3447dd30f8c5021fb4d7725b36d7c2e2b94aedcf.gz";
      r2 = "wM/3W/SHA256E-s5992974732--6894dc730c46155e70bcdf838cd37df98e38edfd3a8fa6803cc2b0292d5e821e.gz/SHA256E-s5992974732--6894dc730c46155e70bcdf838cd37df98e38edfd3a8fa6803cc2b0292d5e821e.gz";
    }
    {
      site = "S1-20913_25315_org1_100frozen";
      class = "tumours";
      pdx = true;
      r1 = "Kz/5K/SHA256E-s6010461205--fdd2705ac2ddcd4577abc6eeddfd22d8ea28cc68c7e0107d02b2b612af56b96d.gz/SHA256E-s6010461205--fdd2705ac2ddcd4577abc6eeddfd22d8ea28cc68c7e0107d02b2b612af56b96d.gz";
      r2 = "x9/9Q/SHA256E-s6373269398--0da791f729501360ccb679b6addf07e02fc5f20c54c1c24f39ccfa6867b9f3a9.gz/SHA256E-s6373269398--0da791f729501360ccb679b6addf07e02fc5f20c54c1c24f39ccfa6867b9f3a9.gz";
    }
    {
      site = "S1-20913_25315_org1_5fresh";
      class = "tumours";
      pdx = true;
      r1 = "7Z/kV/SHA256E-s6777492353--2ae4f071c942e668414d9a494b00766dd47b80c670c7a8194c236255aa1625a2.gz/SHA256E-s6777492353--2ae4f071c942e668414d9a494b00766dd47b80c670c7a8194c236255aa1625a2.gz";
      r2 = "v4/Fj/SHA256E-s7123142012--23ac86e29a571b03b79404d635d5406424afdde888817fafe9cee6a840344b15.gz/SHA256E-s7123142012--23ac86e29a571b03b79404d635d5406424afdde888817fafe9cee6a840344b15.gz";
    }
    {
      site = "S1-20913_25315_org1_5frozen";
      class = "tumours";
      pdx = true;
      r1 = "PV/J3/SHA256E-s5114483522--8a9d165d3661afe508bd04f4e498ad4b1d680233087c0bb923494ad699ad28fe.gz/SHA256E-s5114483522--8a9d165d3661afe508bd04f4e498ad4b1d680233087c0bb923494ad699ad28fe.gz";
      r2 = "KW/Z2/SHA256E-s5259497915--5754aafe3345bb6e2b58c3bef98264db1acf70f5bdef7798a29935bc200c7854.gz/SHA256E-s5259497915--5754aafe3345bb6e2b58c3bef98264db1acf70f5bdef7798a29935bc200c7854.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "HGSEC";
      meeting_discussions_follow_up = "RC meeting 08.09.2022\nDiscussed BROCA results.\nThis case potentially mixed endometrioid and serous. Gayanie to review PDX.\n\nBROCA meeting with Clare 04.11.2021\nSend both PDX and Fresh tissue for BROCA\n\nRC Meeting 2021.08.05\nDiscussed WGS report.\nColorectal panel performed 2015 found KRAS Exon 2: c.35G>A: p.Gly12Asp (G12D) on sample from 29-11-2012  \nSample for WGS collected 14-05-2021. KRAS c.38G>A:exon2:p.G13D \nThe two KRAS mutations are independent events. It is c.37T>G that can be ambiguous in alignment. \n\nClare's notes from Variant Meeting:  \nPIK3CA not good enough (need a second mutation for TAPISTRY trial)  \nKRAS mutation - good enough for the Beigene trial confirmed at the meeting if she progresses \nP53 with LOH  \nFOXA2 mutation c/w endometrial cancer  \nRearrangement in RB1 - not actionable \nAll consistent with endometrial cancer \nNo underlying cause of predisposition for multiple cancers found on her WGS \nData from Grimmond lab not available yet. Need to revisit when available. \n\n\nClare's meeting 2021.07.29\nSFRC01410_1F, Kristy will send block for WES\n\nClare's meeting 2021.06.03\nOrganise WGS\n\nHistopath does not mention serous. But is p53. MDM says endometrioid and serous. Is Grade 3 carcinoma with p53 positivity. Chemo now with Terry Hayes (country). Need more treatment notes from Angela. ";
      date_of_death = "11/2021";
      d_case_summary = "3 primary malignancies: \n1. High grade carcinoma of endometrium, at least part of which is EAC, favoured grade 3 (MMR proficient) but possibility of minor high grade serous component - diagnosed 16/3/2021\n2. Metastatic rectal adenocarcinoma - initial diagnosis 2013\n3. Breast cancer - diagnosed 1997";
      tumour_type = "HGSEC";
      tumour_details = "Multiple primary: high grade endometrial cancer with some serous component, metastatic rectal adenocarcinoma, breast cancer";
      case_details = "73F\n\n2020-11: Colorectal panel:\nKRAS mutated: Exon 2: c.35G>A, Gly12Asp (G12D). NRAS and BRAF not performed. \n\n2021-03: \n-----------------------------------------------------------------------\nFemale in her 70s. 3 primary malignancies:  \n\n03/2021 High grade carcinoma of endometrium, at least part of which is EAC, favoured grade 3 (MMR proficient) but possibility of minor high grade serous component  \n\n2019-Lobectomy \n\n2015- Lung metastases, treated with chemotherapy initially and RUL lobectomy and L VATS 2019  \n\n2013 Metastatic rectal adenocarcinoma - initial diagnosis (neoadj chemoRT  followed by AP resection and stoma) KRAS mutated \n\nBreast cancer - diagnosed 1997, - R mastectomy and R axillary dissection followed by adj chemotherapy - No adj radiotherapy/endocrine therapy. ";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2019 lung block received from Australian Clinical Labs by Warren 2/7/21";
      mp_subgroup_sfrcp4_new_id = "3 or more primary";
      patient_alive = "No";
    };
    inherit samples;
    name = "SFRC01410";
    predictNeoantigens = false;
    capture = TWISTv2;
  }
