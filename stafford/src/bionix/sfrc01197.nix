with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      prefix = "fastqs/pmcc/2020-02-20/SFRC01197-B1_S2";
      suffix = "_001";
      sha256-1 = "1d4fb49e53d77eb471c6919a7cdf7cd4af1804678fa06ef29fba3bd586f68319";
      sha256-2 = "c0381823949e3e3b9e0f5c3fc95373db4189ecb0018bc2a6edb095ffb469930a";
    }
    {
      site = "1H";
      class = "tumours";
      prefix = "fastqs/pmcc/2020-02-20/SFRC01197-1H_S1";
      suffix = "_001";
      sha256-1 = "cf5946da31503d4f86de5466cb09f1740c7c06d4fe1cc25cdfccb0edeab22b22";
      sha256-2 = "36861cf28c533c80c165858b022cfd0e23f74d3ea21610235546c56808831358";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Meeting notes 2020.03.05\nNeed someone to curate WES results to issue report to treating clinician.\n\nMeeting notes 2019.11.21\norganise WES, look for BRCA related, consider making RNA in the future but possibly use miRNeasy kit for nanostring . Only use 5 slides for DNA extraction for WES, save the rest for nanostring. ";
      date_of_death = "03/2020";
      date_consented = "2019-07-04";
      tumour_type = "Endometrial carcinosarcoma";
      tumour_details = "Carcinosarcoma with predominant sarcomatous component, rhabdoid differentiation.  Carcinomatous component: high grade serous";
      case_details = "Update 13aug19\nReferred June 2019 for consideration of palliative chemotherapy, for rapidly recurrent endometrial carcinosarcoma with 5 weeks abdominal pain and bloating. LOW, ECOG 2.\nBilateral swollen legs, recovered from more severe swelling of both legs, required in patient admission at Werribee Mercy and IV antibiotics, discharged with oral clindamycin.\nDecision to commence carboplatin, paclitaxel, germline testing in FCC, Stafford Fox for additional molecular testing (known HER2 negative).\nPeripheral neuropathy has worsened post 10% DR and prior dexamethasone Has stopped knigng, difficult writing with a pen, worsened in week 3\nWill require 50% dose reduction in paclitaxel.\nO/E bilateral SOA somewhat improved compared with last time\nHb 80 - will need two units red cell transfusion\nK+ 2.9\nConsented to FCC COV panel in clinic today - will drop paperwork to FCC\nWill need urgent K+ replacement in Day therapy and commence Slow K orally\nDiscussed with Luke in Day therapy - plan for Cross match today, for one unit blood today\nArrange transport for tomorrow or Thursday, for the other unit and for chemo with 50% DR of paclitaxel and full dose carboplatin\nReview in 3 weeks for C4, has pathology slip\n\nClare: patient deceased ";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "Omental Bx- RWH pathology\nAccession no: 19975457\nCollected 17-Jun-19\n________________ \nTAHBSO- RWH pathology\nAccession no: 18981123\nCollected 12-Dec-18\nREQUESTED 19-Sep-19 (EO)\nReceived 9-Oct-19\n  _________________ \nEndometrial Pipelle- RWH pathology\nAccession no: 18930561\nCollected 18-Oct-18";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01197";
  }
