with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A1";
      class = "tumours";
      prefix = "fastqs/pmcc/ccp/SFRC01161-A1_S6";
      suffix = "_001";
      hash1 = "1577e1e6a9d63bc981929c039836972d129e17844bb988e7aa8a294756935d9a2ce422f9f8d2794cd7f702d22efef63f3647f7ba0ec826e36f185e7336530ab0";
      hash2 = "367b45e660f5d0cc4282b9eb06a15571ee0e7a3d72a08538e6494ab7f75caf28b6313d0155e6091dbe66e92d3dc4b70c408532394f898c75b7e23e0eb1b41e8d";
    }
    {
      site = "B1";
      class = "normals";
      prefix = "fastqs/pmcc/ccp/SFRC01161-B1_S5";
      suffix = "_001";
      hash1 = "8b24461e89bd255b3d343110bb2437b53908b799ad1a20f8998d38c92aea64d88b658e0b589efc1946b5b346837d35d6f781379d80fbe192dbdea5299979fb43";
      hash2 = "8857e96e3d00e8c9fcc5afc6e6cfc8f2253ad53e107207f38ae84b209225b116e26811a9d5a8cea6b61e7411f1560bff2ac81d3addb9aff27c57a7a70fb671ec";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "clear cell";
      meeting_discussions_follow_up = "RC Meeting notes 17.02.2022\nPatient is doing well after chemoradiation. Wondering whether there are any germline mutations (WGS data) that could have contributed to her platinum sensitivity?\nSome potential reasons for the platinum sensitivity: \nGermline FANCC (but likely benign, not to go to Paul) \n- Somatic AFDN, WNK2 \nMight be radiation sensitive (rather than just the platinum).\n\nMeeting with Clare 12.11.2021\nAsk Justin if we could rerun the CCP data through  the new WES pipeline. If not we could organise TSO500 or WES. This case could be for Inger's paper on Clear cell of cervix.\n \nRC Meeting notes 2020.07.09\nPatient is not progressing, would get tissue if there was a recurrence. We don't have resources to pursue right now given low purity of this sample and it has failed WGS twice.\n\nMeeting notes 2020.05.21\nWGS failed for the second time.\nThaw some mince for more mouse transplants - IB and SC. Holly to block SF tissue for review by Gayanie and then send for WES.\n\nMeeting notes 2020.01.23\nGo ahead with WGS.\n\nMeeting notes 12.12.2019\nCCP analysis shows  no damaging somatic mutations, Clare has emailed surgeons to check patient stage. \n\nMeeting notes 2019.11.28\nClare to contact Clinician to ask if it is still worth going ahead with WGS. \n\nMeeting notes 2019.10.24\nFrom Briony- re. SFRC01161 who's sample was one of the four OCT to fail WGS QC. I was asked to check with Trisha to see if she held tissue for this patient at RWH, and no she does not. \n\nMeeting notes 2019.09.19\nDNA extraction from OCT slides failed on fresh tissue.\nOrganise CCP on block A1, Justin to analyse\n\nMeeting notes 2019.08.15\nClare is sending image of H&E from OCT block to Kym to check if adequate for WGS \nH&E from FFPE block is not the same sample (a month earlier) - may do WES on this (wait until after RC discussion) \nDiscuss further in next RC meeting with Tony \nClare has emailed for prognosis - if poor will do WGS now, if ok will do WGS upon progression ";
      d_case_summary = "26 year-old woman who was diagnosed with a clear cell carcinoma of the cervix in March of this year. Imaging including an MRI and PET identified a 3.8 cm primary, that extended to the upper vagina. At EUA and sentinel lymph node biopsy on 3rd April, lymph nodes and washings were found to be negative. definitive chemorradiation, with weekly Cisplatin. FIGO stage IIA adenocarcinoma of cervix, node negative. Treated with concurrent chemoradiotherapy, which was completed on 1 July 2019.";
      date_consented = "2019-04-03";
      tumour_type = "Clear cell cervix";
      tumour_details = "Clear Cell Cancer of the Cervix";
      case_details = "WGS clinical notes \nFIGO stage IIA adenocarcinoma of cervix, node negative. Treated with concurrent chemoradiotherapy, which was completed on 1 July 2019. Path 19/03/19: clear cell ca. \n\nClear cell ca cervix stage IIA Dx March 2019\nPath 19/03/19: clear cell ca\nMRI 21/03/19: 3.8cm primary, extends to upper vagina\nPET 28/03/19: cervical mass, no nodal / parametrial extension\nEUA / SLN 03/04/19: tumour extends to upper vagina, LN / washings neg\nPre Rx egg collection / oophorectomy for storage\nConcurrent Chemo RTx (cisplatin ) plus brachytherapy\n- Last cisplatin given 18/06/19\n- Brachy last fraction 05/07/19";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "Fresh tissue received 8-Apr-19\nUterine/Cervix biopsy - for snap frozen, FFPE and PDX\n\nCervix biopsy- RWH Pathology\nID:  19972462HISTG\nSample Date: 19Mar19\nRequested: 25Jun19 (Briony)";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01161";
    capture = CCPv2;
    predictNeoantigens = false;
  }
