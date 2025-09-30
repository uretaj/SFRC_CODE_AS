with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B2";
      class = "normals";
      pdx = false;
      r1 = "J6/wq/SHA256E-s3834892277--797b86047810aae7db87f21d00d6dbebbaed87591e8665d051746c70e2904f23.gz/SHA256E-s3834892277--797b86047810aae7db87f21d00d6dbebbaed87591e8665d051746c70e2904f23.gz";
      r2 = "j0/71/SHA256E-s3987624596--c2c2a21252b9256c74de1c6e9cf0111c2ea3b685e9799cd9908d2e6555597158.gz/SHA256E-s3987624596--c2c2a21252b9256c74de1c6e9cf0111c2ea3b685e9799cd9908d2e6555597158.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "99/K3/SHA256E-s25541445058--454ec1af358ee7b33735c74428722a14199036dc6d6e25e593b7b1a3a5b12ef7.gz/SHA256E-s25541445058--454ec1af358ee7b33735c74428722a14199036dc6d6e25e593b7b1a3a5b12ef7.gz";
      r2 = "m7/v1/SHA256E-s26534838833--2d0529b0fe2ec0b1aff872efa7181ec80a4b8e7f9fbb8f3a46af7f1db53d9da8.gz/SHA256E-s26534838833--2d0529b0fe2ec0b1aff872efa7181ec80a4b8e7f9fbb8f3a46af7f1db53d9da8.gz";
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
    capture = CREv2;
    predictNeoantigens = false;
    name = "SFRC01098";
  }
