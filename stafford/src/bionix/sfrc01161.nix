with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "g1/5Z/SHA256E-s32180127938--57c81564da430c241c946b59ef8e4ccc971e8decbc8aca5f492c4aa5611c64f6.gz/SHA256E-s32180127938--57c81564da430c241c946b59ef8e4ccc971e8decbc8aca5f492c4aa5611c64f6.gz";
      r2 = "5V/zp/SHA256E-s34463797796--7ef7bb0589b6a48a936d2cd0c761fbf4ee7d8ef1a02ade4b21d1b940658a8a9d.gz/SHA256E-s34463797796--7ef7bb0589b6a48a936d2cd0c761fbf4ee7d8ef1a02ade4b21d1b940658a8a9d.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "2X/K3/SHA256E-s79408152789--63aa0cf5f51c814eda02420109fba4844450901c7ad0de8aa0c3e94db1fcbb32.gz/SHA256E-s79408152789--63aa0cf5f51c814eda02420109fba4844450901c7ad0de8aa0c3e94db1fcbb32.gz";
      r2 = "z0/13/SHA256E-s86910015646--279ad421cb7abb52e2bd113e442347b1baa104581cbc7a0a0758e07a81e8cdf3.gz/SHA256E-s86910015646--279ad421cb7abb52e2bd113e442347b1baa104581cbc7a0a0758e07a81e8cdf3.gz";
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
  }
