with import ./milton-slurm.nix {
  overlays = [(_: super: with super; {xHLA = def xHLA {mem = 30;};})];
}; let
  samples = [
    {
      site = "1H";
      class = "tumours";
      pdx = false;
      r1 = "k9/j7/SHA256E-s18254987153--3e1afde511a61738846a5b713dea4c2e9f11573738b8f654ec7b330a05b88baa.gz/SHA256E-s18254987153--3e1afde511a61738846a5b713dea4c2e9f11573738b8f654ec7b330a05b88baa.gz";
      r2 = "3G/zz/SHA256E-s18179767930--bc6c7fc5c10946e1db4c851dd510fecc7952d122d71afa3db587ac1ed1fe2575.gz/SHA256E-s18179767930--bc6c7fc5c10946e1db4c851dd510fecc7952d122d71afa3db587ac1ed1fe2575.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "jM/73/SHA256E-s5744793546--8ba049a3eff357e41233bffbdaedd0307ad40a846616eb327abd39d336609a13.gz/SHA256E-s5744793546--8ba049a3eff357e41233bffbdaedd0307ad40a846616eb327abd39d336609a13.gz";
      r2 = "WV/zP/SHA256E-s5833555861--d5f9d044eefe43f1143781dad73f7d3fefaa6b68390f26018510251e11325aa6.gz/SHA256E-s5833555861--d5f9d044eefe43f1143781dad73f7d3fefaa6b68390f26018510251e11325aa6.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC meeting 17.02.2022\nWES report discussion. Germline mutation: MSH6  to be checked with Paul James.\n\nClare's meeting 2021.10.21\nDo WES on 1H\n \nGen - \"1A Leiomyosarcoma of uterus resected April 2019.\" in de-identified case summary - is that the FIGO stage? \n\nFrom Letters, was diagnosed as Stage 1B. 1A from the Portal.  ";
      d_case_summary = "45 yo female with metastatic uterine leiomyosarcoma.\n1B Leiomyosarcoma of uterus resected April 2019. Recurrence in retroperitoneal lymph nodes October 2020.\nStarted on docetaxel gemcitabine 23/10/20 - ongoing.\nBloods organised for collection on 10 Dec 2020.";
      tumour_type = "uLMS";
      tumour_details = "metastatic uterine leiomyosarcoma";
      case_details = "45 yo female with metastatic uterine leiomyosarcoma. \n\n2018 Nov:\tHysteroscopy and Mirena \n\n2019 April:\t total hysterectomy and omentum biopsy. (block 1H received, 60% tumour purity) no IHC\n\n2020 October:  \tRecurrence in retroperitoneal lymph nodes \n\nStarted on docetaxel gemcitabine  \n\n2020 Dec\tBlood B1 received ";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "07/11/2022: 2019 block requested from Mater Pathology by Devindee for uLMS project.\n\n12/12/2022: 2019 block received.\n\n2019 block requested from Mater Pathology by Warren on 15/6/21, received 26/9/21";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01350";
  }
