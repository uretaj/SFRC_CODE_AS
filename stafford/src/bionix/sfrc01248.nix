with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Qj/89/SHA256E-s4150741707--732443d9be6ccadf532865e5adc0dd446ef0871437e4dcdd101f484e7f897ca4.gz/SHA256E-s4150741707--732443d9be6ccadf532865e5adc0dd446ef0871437e4dcdd101f484e7f897ca4.gz";
      r2 = "5V/W9/SHA256E-s4219778651--98f6911d89d12347fdcc03e204b973e03a89e9b3c0c635da539fab97f09d3ec0.gz/SHA256E-s4219778651--98f6911d89d12347fdcc03e204b973e03a89e9b3c0c635da539fab97f09d3ec0.gz";
    }
    {
      site = "1F";
      class = "tumours";
      pdx = false;
      r1 = "40/8z/SHA256E-s8443309399--9101152ef25900850a259f3308796ad1ddd0a0299c6d2da0900a6ee188d32f9f.gz/SHA256E-s8443309399--9101152ef25900850a259f3308796ad1ddd0a0299c6d2da0900a6ee188d32f9f.gz";
      r2 = "Qg/p8/SHA256E-s8475390531--0a6901a1767a2c5dbc56a75c36994c05605c2e3313ccd9de4c59f478e468bd0b.gz/SHA256E-s8475390531--0a6901a1767a2c5dbc56a75c36994c05605c2e3313ccd9de4c59f478e468bd0b.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 30.03.2023\nDiscussed WES report again to compare to new cervical adenocarcinoma cases. \n -Germline: MSH6 (likley benign)\n -Somatic: OLIG2, BRCA1, PTPRK, TP53 x3\n -Mutational Signatures 1 & 3\n -Deletions: HLA-A (homozygous) and loss of \n  Chromosome 19.\n-Do HPV testing.  \n\nRC Meeting 29.10.2020\nPatient is deceased. Discussed WES report (see analysis summary).\nCould this be a never-responder - add to Gen's cases for nanostring \n\nMeeting notes 21.05.2020\nCheck PDX (IB) with Sil. Possibly try S1 mince transplant.\n\nMeeting note 27.02.2020\nMake OCT from Snap Frozen pieces (S1 and S2) to try again, looking for tumour.";
      date_of_death = "10/2020";
      d_case_summary = "Small cell carcinoma cervix\n- SOD: Retrocrural, retroperitoneal, posterior mediastinal lymph nodes, Cervix. ?L fifth rib\n- Diagnosed at 26 weeks pregnant October 2019 - limited stage at this time \n- C1 Carbo/etop 31/10-3/11 with MRI 5/12 complete resolution of mass and LAN\n- C2/W1 Carbo/Etop 23/12/19\n- Delays with C2W2 14/1/20\n- Declined further chemotherapy until admission with pain crisis\n- C2D1 Carbo/Etop 27/2/20 - D2 refused\n- C3 20-22/3/20 without GCSF\n- Delayed PET (23/4/20) - Response in primary - Low vol infrarenal PALN positivity (? reactive given response in pelvic disease). CT brain - normal.\n- Admission for C4/C5 treatment combined with EBRT - large field\n- HDR brachytherapy - in patient admissions for spinal/GA 19th, 22nd and 26th June 2020.\n- Aug 2020 CT showed recurrent disease\nC1 Atezo given 22/9/20\ndec 2/10/20\n";
      date_consented = "2019-11-08";
      tumour_type = "Gynae NET";
      tumour_details = "high grade neuroendocrine carcinoma small cell type of cervix";
      case_details = "33F\n\n2019-10: Dx Small cell carcinoma of the cervix\nSurgery: removal of ?cervical fibroid (Block 1F)\nIHC positive: p16, synaptophysin, CD56, vimentin (focal)\nIHC negative: chromogranin, CK AE1/3, EMA, S-100, LCA, CD99, CAM5.2, desmin, myogenin\nKi67: 90%\n\n2019-10 - 2020-06: Chemotherapy: Carbo/Etop\n\n2019-12: Blood B1 received. Fresh tissue S1 & S2 received\n\n2020-06: Pelvic RT and brachytherapy \n\n2020-09: DNA from B1 and Block 1J sent for WES\n\n2020-10: Deceased.\n---------------------------------------------------------------------------\nSmall cell ca cervix (limited stage)\nParametrial / iliac LN involvement / No PALN / CXR clear\nnon-compliant with chemotherapy\nSyx of disease significantly improved since recommencing chemo\n\n";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2019 SCNEC tissue requested from RWH on 2408/2020 by Josh for Clare - urgent\n\n2019 SCNEC tissue block 1F (slides) received 26/08/2020 by Josh";
      mp_subgroup_sfrcp4_new_id = "Rapid Progressor";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01248";
    capture = CREv2;
    predictNeoantigens = true;
  }
