with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B3";
      class = "normals";
      pdx = false;
      r1 = "99/jK/SHA256E-s45475048302--46b9215096d41e4f945a9834f2ae90dff2099cfae5c12d0699690ca01a1be7de.gz/SHA256E-s45475048302--46b9215096d41e4f945a9834f2ae90dff2099cfae5c12d0699690ca01a1be7de.gz";
      r2 = "v2/q0/SHA256E-s47896350117--86f53c2559a723481aa8a54c1c6ebfc156d12f07268a3b7dacda6f7a2cf942a0.gz/SHA256E-s47896350117--86f53c2559a723481aa8a54c1c6ebfc156d12f07268a3b7dacda6f7a2cf942a0.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "Ww/f1/SHA256E-s81336471756--c9d6cefc45997b273f751f21915137d8c1e7f0e45f428ed056a52607e238710c.gz/SHA256E-s81336471756--c9d6cefc45997b273f751f21915137d8c1e7f0e45f428ed056a52607e238710c.gz";
      r2 = "Wf/0M/SHA256E-s87887709440--7c52e28c60b64523ad87db195b84947d75beea9ff5af8c97db3e75d800488810.gz/SHA256E-s87887709440--7c52e28c60b64523ad87db195b84947d75beea9ff5af8c97db3e75d800488810.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 02.02.2023\nDiscussed WGS report (Grimmond and SFRC).\nDamien's Variant Meeting notes: \nTP53 LoF with CNN LOH \n**RAD51B rearrangement**\nMut sig 3 dominant (42%), HRDetect and CHORD proficient \nSean says, HR Detect and CHORD unreliable in RAD51B \nDiscussion: \nMight be Myriad positive, looks HRD \nRAD51B is the plausible driver for HRD. Uncommon, but plausible.\nTo do methylation on multiple samples (need to do S2 DNA from SF) and earlier \nRNA for S2 \nKeep eye out for PDX\nhttps://www.nature.com/articles/s41523-021-00339-0 \nRAD51B IHC? Kas and Franziska to look at.\n\nClare's Meeting 22.12.2022\nDiscussed HER2 negative result. S2 DNA submitted for WGS in November, results pending.\n\nClare's Meeting 02.11.2022\nSubmit S1 FFPE for HER2.\nSubmit S2 for WGS (Marion Patten), we might end up with a PDX.\nAsk Matt if WGS is necessary (help with HRD question). Patient is progressing. Clarifying HRD or dMMR \n\n**Matt's reply: There is enough support for PRDM1 RAS JAK MYCN type signalling to make me think the yield on this would be relative low. \n\nWe don't have a driver. \n\nIf ruling out signature 3 is worthwhile then do WGS. I don't think WES has any real diagnostic value in this case. \n\nDouble check the HER2 as that could be the driver for those amplifications and diagnostic. \n\nWES meeting 21.04.2022\nDo methylation assays (BRCA1 and RAD51C)\n\nMeeting with Clare 18.11.2021\nExtract DNA from OCT and submit for WES with deep sequencing.\n\n27.03.2020 RedCap Meeting\nto do WES on blocks once H&E is reviewed by Gayanie on the omental tumour (path review on blocks).\nBriony is to contact Orla to follow up where the case is at.\nLet Holly know about this case for her project. \nOrla to chase up BRCA report from Allocate.\nOrganise BROCA";
      d_case_summary = "2016: Stage 3 carcinosarcoma of ovary treated with primary surgery w/ residual pelvic disease then carbo/taxel   bev\n2018: recurrence treated surgically. Path - sarcoma w/ areas HG rhabdomyosarcoma. HR neg.\nwtBRCA";
      date_consented = "2018-07-17";
      tumour_type = "Ovarian Carcinosarcoma";
      tumour_details = "resected met FT carcinosarcoma, wtBRCA";
      case_details = "61 years old \n\n2016-02:\tinitial diagnosis: Stage 3 carcinosarcoma. TAHBSO, CCP panel: TP53 mutation detected, 50% serous carcinoma, 50% high grade sarcoma \n(Block 1T, ascites received, tumour purity 70%) \n\n2016-06:\tcompleted carbo/taxol, bev added at C2 \n\n2018-05:\trecurrence follow by resection, consented to ALLOCATE, gone for BRCA testing (Negative)(block 4D received, tumour purity 80%) \nIHC negative: ER, PR, AE1/3 \nIHC positive: vimentin \n\n2018-07:\tBlood B1 received\n\n2020-08: DNA from FFPE block 4D sent for BROCA: somatic TP53 c.775G>T p.D259Y\n\n2021-11:\tRecurrence. Surgery (fresh tissue S1 received15-20%) and blood B2 received \n\n2021-12: DNA from S1 and B2 sent for WES: \n-Somatic TP53 (c.775G>T, p.Asp259Tyr, 100%)\n-Amplification of JAK3 (x9) and PRDM1 (x11)\n-Signature 3\n\n2022-04: DNA from FFPE block 4D sent for methylation: no methylation of BRCA1 or RAD51C detected.\n\n2022-10: Blood B3 received. Peritoneal biopsy (Tissue S2) received. Potential recurrence.\n\n2022-11: S1 block sent for HER2 IHC: Negative.\n-----------------------------------------------------------------------\nHad chemo and surgery (carboplatin and paclitaxel)";
      pre_analysis_mutations = "FFC panel on sample from 02.2016\nTP53-NM000546.5:c775 G>T 79.5%\nMultiple regions of segmental gain throughout the genome\n\nBROCA on sample from 06-2018\nsomatic\tTP53, NM_000546, c.775G>T p.D259Y\n\nBRCA testing: negative\n";
      brca_report = "SFRC01098_BRCA_23May2016_Redacted.pdf";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Super Responder";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01098";
    predictNeoantigens = true;
  }
