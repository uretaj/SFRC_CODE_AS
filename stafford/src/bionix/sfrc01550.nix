with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "G5/Wf/SHA256E-s6850494584--82dc0bdd442213962c461742d48ffc8881eafd4e4ef42225ad3000cd4ae87a42.gz/SHA256E-s6850494584--82dc0bdd442213962c461742d48ffc8881eafd4e4ef42225ad3000cd4ae87a42.gz";
      r2 = "F3/Jv/SHA256E-s7223084184--0773b5b57073ed57bbae44cd1e36d15b60c21d49af3f81da6d824bcc9e44ffb3.gz/SHA256E-s7223084184--0773b5b57073ed57bbae44cd1e36d15b60c21d49af3f81da6d824bcc9e44ffb3.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Paul James Meeting 21.07.2023\nReasonable to report patient is undergoing IVF and may want to test for this. The risk is very low but this variant looks like it could be associated with increased risk of skin cancers. Not relevant for her clear cell. Occurs at a highly conserved AA.\n\nClare, Ratana, Rae 04.03.2023\nBROCA for FFPE Block 1F\n\nClare's Meeting 22.12.2022\nWES on germline DNA only. Have TSO500 results on the tumour block.\n\nRC Meeting 08.12.2022\nDiscussed TSO500 report. No trials for findings, but there is MoST CIRCUIT for OCCC.\nThe VUS of ERCC2 is not targetable (nucleotide excision repair pathway).\n\nClare's Meeting 03.11.2022\nSubmit Block 1F for urgent TSO500. To be discussed at Variant Meeting on 2nd Dec. \nPatient appointment 8th December.";
      d_case_summary = "30yo Dx 29 yo with clear cell adenocarcinoma of ovary\nHigh grade 140 mm FIGO 1Ci (intraop spill)\nIn setting of endometriosis with endometriotic cyst\nMMR intact\nNo other IHC done yet\nNo Chemo\n \nMainstreaming - Ov panel - no mutations\nBRCA1/2, BRIP1, PALB2, RAD51C/D EPCAM, MLH1, MSH2, MSH6, PMS2, p53";
      date_consented = "2022-05-02";
      tumour_type = "Clear cell ovary";
      tumour_details = "clear cell adenocarcinoma of ovary";
      case_details = "30F\n\n2021-12: Dx High grade 1Ci Ovarian clear cell adenocarcinoma. Ovarian cyst fixed and blocked (Block 1F)\n\nFamilial cancer panel report: No pathogenic variants detected. \n\npMMR\n\n2022-05: Blood B1 received.\n\n2022-10: Sections from Block 1F received.\n\n";
      patient_information_complete = "Incomplete";
      fcc_report = "SFRC01550_GeneticTest_07Dec21_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "05/10/2022: Dec 2021 sample requested from Melbourne Pathology by Devindee.\n14/10/2022: Dec 2021 sample slides received.";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01550";
  }
