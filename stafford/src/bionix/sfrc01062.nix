with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1F";
      class = "tumours";
      pdx = false;
      r1 = "P1/ZQ/SHA256E-s3419661739--146b4bbbf7c06ad9efcfac1e12aa75275b480cf53af41fa158690290e9492628.gz/SHA256E-s3419661739--146b4bbbf7c06ad9efcfac1e12aa75275b480cf53af41fa158690290e9492628.gz";
      r2 = "FM/6f/SHA256E-s3658343250--93d8ecd887d7d8500c92e53f0f0c1a1c53e421ce71eaef4ea0cbce278346747f.gz/SHA256E-s3658343250--93d8ecd887d7d8500c92e53f0f0c1a1c53e421ce71eaef4ea0cbce278346747f.gz";
    }
    {
      site = "B1";
      class = "normals";
      r1 = "w5/g1/SHA256E-s2997628006--43ba068d93a458d5f0398385dcda8c8f47873745ddb4fc3ba0084ddd55228842.gz/SHA256E-s2997628006--43ba068d93a458d5f0398385dcda8c8f47873745ddb4fc3ba0084ddd55228842.gz";
      r2 = "0q/Q0/SHA256E-s3184093514--141def9394666e075933cc107326141326e15f9278f34613b4901d000813c438.gz/SHA256E-s3184093514--141def9394666e075933cc107326141326e15f9278f34613b4901d000813c438.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Meeting notes 07.06.2019\nKristy to incorporate SFRC01062_1.3 into Multiple Primary set";
      d_case_summary = "Carcinoid history:\nRight upper lobe lung cancer\n- diagnosed May 2019\n- stage IIIA mixed adenocarcinoma/large-cell neuroendocrine tumour, low grade\n- thorascopic right upper lobe lobectomy - May 2019\n- adjuvant chemotherapy with cisplatin / etoposide x 6 cycles - completed July 2019";
      date_consented = "2017-11-23";
      tumour_type = "Other NET";
      tumour_details = "3 primaries - breast ca, thyroid papillary, carcinoid gastro-oeophageal junction + significant FHx";
      case_details = "Gastro-Oesophageal- Melb Path\nLab no: 120330-16T \nCollected: 01Aug2016 \nRequested: 30May19 (Briony)\n\n\n";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "Ductal Carcinoma NST- PMCC Path\nLab no: 17P3314\nCollected: 17May17\nRequested: 03Jun19 (Briony)\n\nReceived 16/08/2020 by Josh";
      mp_subgroup_sfrcp4_new_id = "3 or more primary";
      patient_germline_mutations = "MUTYH/ATM?";
    };
    aligner = "minimap2";
    inherit samples;
    predictNeoantigens = true;
    name = "SFRC01062";
    capture = CREv2;
  }
