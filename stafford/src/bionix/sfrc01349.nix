with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1.11";
      class = "tumours";
      pdx = false;
      r1 = "FX/fj/SHA256E-s8454735518--09f46b89b371ae0fe71f028e828692518fe406ebd7c35ba103470f5b0f0b19a6.gz/SHA256E-s8454735518--09f46b89b371ae0fe71f028e828692518fe406ebd7c35ba103470f5b0f0b19a6.gz";
      r2 = "9f/qq/SHA256E-s8493271999--5af01f28f952a8aaab3f46556f14a2b9d684df5093ff3540e40cdd2c09f788d7.gz/SHA256E-s8493271999--5af01f28f952a8aaab3f46556f14a2b9d684df5093ff3540e40cdd2c09f788d7.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "z8/Gq/SHA256E-s3342575580--ccf60db79c26aa6368eeac4ba6cce027cfb9c38bb10e028024d8f546c2b80f96.gz/SHA256E-s3342575580--ccf60db79c26aa6368eeac4ba6cce027cfb9c38bb10e028024d8f546c2b80f96.gz";
      r2 = "Vg/Zm/SHA256E-s3367177669--1d8cf02ae62f931d031ebf19bc29dbb717dfc842b818484f7a388999e6ffb06e.gz/SHA256E-s3367177669--1d8cf02ae62f931d031ebf19bc29dbb717dfc842b818484f7a388999e6ffb06e.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 08.07.2021\nDiscussed WES report. With such low tumour purity, can't say that TMB is 60 or there are 11 copies of EPAS.\nBut 3 germline NF1 mutations could be disruptive. Need to send accurate descriptions to Damien, to ask FCC to check.\n\nClare meeting 08.04.2021\nBlock 1.11 reviewed. Try 5 slides for DNA - send for WES (there is some concern about disease progression for patient).\n\nClare and Ratana 26.02.2021\nHave blood, no fresh tissue or surgeries planned. Need block from Nov 2020? Having treatment now.\nPlan: Get block, have it reviewed. WES when funding available (2022?). Get letters indicating prognosis";
      d_case_summary = "45-yo female diagnosed with Gestational Trophoblastic disease, specifically Epitheliod Trophoblastic tumour. To start C1D1 EMA-EP on Thursday 26 Nov 2020. Bloods for SFRCP to be collected on 25/11/20. email to Rachel 30/11/20 asking for path reports/clinical notes.";
      date_consented = "2020-11-24";
      tumour_type = "Other rare";
      tumour_details = "Gestational Trophoblastic Disease (GTD)  Epithelioid trophoblastic tumour (ETT)";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      other_tumour_type = "Gestational Trophoblastic Disease (GTD)";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "Nov 2020 block requested by Warren 26/2/21\nReceived 21/3/21 by Warren";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01349";
  }
