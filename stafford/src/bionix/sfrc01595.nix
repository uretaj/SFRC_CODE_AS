with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1O";
      class = "tumours";
      pdx = false;
      r1 = "Gj/Z3/SHA256E-s17959697855--a3dd4ee3f783cbc02b48a2e367fefe7452a35727eac8b01ac6ea517455d76cf0.gz/SHA256E-s17959697855--a3dd4ee3f783cbc02b48a2e367fefe7452a35727eac8b01ac6ea517455d76cf0.gz";
      r2 = "fQ/0P/SHA256E-s18827705550--8da184b9dce1c6544c46ab4c143f34132e6cab19d3f4ea8af9566fb3cd46eb34.gz/SHA256E-s18827705550--8da184b9dce1c6544c46ab4c143f34132e6cab19d3f4ea8af9566fb3cd46eb34.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "0x/M4/SHA256E-s4790534331--92d8d2099f770cf17a849ac5cf57da06010c88658a43712e1275254bc1fd771c.gz/SHA256E-s4790534331--92d8d2099f770cf17a849ac5cf57da06010c88658a43712e1275254bc1fd771c.gz";
      r2 = "6q/Kj/SHA256E-s4832816897--685fcb24167898a49db9ab1189b7fc02c5c89a0e19f74708fee5680553d7c46a.gz/SHA256E-s4832816897--685fcb24167898a49db9ab1189b7fc02c5c89a0e19f74708fee5680553d7c46a.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 16.02.2023\nDIscussed WES report:\nTo report: Somatic PTEN, PIK3CA and TAPISTRY eligibility, high Sig6, MSI-hi (Score of 14.96%).\nDiscussion: Check if MLH1 methylation testing has been done in the clinic. \n\nClare Meeting 19.09.2022\nDo WES on Block 1O.";
      d_case_summary = "FIGO Stage IIIc2 Clear Cell Carcinoma of the Endometrium";
      tumour_type = "Clear cell gynae other";
      tumour_details = "High grade endometrial mixed carcinoma (80% clear cell, 20% low grade with mucinous differentiation)";
      case_details = "50F\n\n2022-05: Surgery - Hysterectomy, BSO. Block 1O fixed and blocked\nHigh grade component:\nIHC positive: HNF-1 beta, Racemase, Napsin-A, ER (2+, 60%)\nIHC negative: p16\np53 wild type\n\nLow grade component: \nIHC positive: ER (2+, 80%)\nIHC negative: p16, vimentin, CEA\n\ndMMR: Loss of staining for MLH1 & PMS2. Intact expression for MSH2 & MSH6\n\n2022-07: Blood B1 received\n\n2022-11: 1O and B1 DNA sent for WES";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "14/08/2022: 2022 sample requested from melbourne pathology by Devindee. \n01/09/2022: May 2022 sample slides received from Melbourne Pathology by Devindee.";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01595";
    capture = CREv2;
  }
