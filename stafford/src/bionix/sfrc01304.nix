with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {samtools.sort = def samtools.sort {walltime = "48:00:00";};})
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "P8/Qz/SHA256E-s45888314278--5cf13205ddcc27743075fb044e5b0cdc629a8501ef409a3fa239cf1ef71fbac3.gz/SHA256E-s45888314278--5cf13205ddcc27743075fb044e5b0cdc629a8501ef409a3fa239cf1ef71fbac3.gz";
      r2 = "zf/v7/SHA256E-s50589197497--51ff98a04aca56733736044e9df29f07364dc6923ca51bb8d1110cf4377f2fea.gz/SHA256E-s50589197497--51ff98a04aca56733736044e9df29f07364dc6923ca51bb8d1110cf4377f2fea.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "K7/Fq/SHA256E-s102449426882--5305be8fc88d1947b3d7a006dcd0e686fea04ed20c76bf27c21bd8b607b511a3.gz/SHA256E-s102449426882--5305be8fc88d1947b3d7a006dcd0e686fea04ed20c76bf27c21bd8b607b511a3.gz";
      r2 = "99/9G/SHA256E-s111220085331--20d0351a0f7e92a437b5813cecfa09dbb6becd4c8468474aab668c45de31dc80.gz/SHA256E-s111220085331--20d0351a0f7e92a437b5813cecfa09dbb6becd4c8468474aab668c45de31dc80.gz";
    }
    {
      site = "S2";
      class = "rna";
      pdx = false;
      r1 = "1k/Wf/SHA256E-s5273850586--39b709c12ec78a27acca6caf93f3c5c3190239773e2e548a9271ef2c062465a0.gz/SHA256E-s5273850586--39b709c12ec78a27acca6caf93f3c5c3190239773e2e548a9271ef2c062465a0.gz";
      r2 = "4W/gG/SHA256E-s5361394583--af60680e53baab32ff19768373889132abfc008d2dd18e9024792c5b285129cf.gz/SHA256E-s5361394583--af60680e53baab32ff19768373889132abfc008d2dd18e9024792c5b285129cf.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "OCS";
      meeting_discussions_follow_up = "12.03.2021\nHave emails about WGS. Clare has asked Joep (?) for the germline findings. BROCA results found gMSH2, which wasn't on WGS   \nBut on new SFRC WGS report, found gMSH2 \n \nPlan: Patient on PARPi. WGS report out, but supplementary report \nSend email to Kas - is homozygous or heterozygous, is it definitive? (=Kas, Alex, Matt). IF they are happy, get Damien to issue new report so it can amended. So can issue report. \nKas in process of doing NGS.\n\n28.01.2021 Clare meeting\nHave Block 1.2, but want the 2006 block. Warren has said it has been discarded already.\n\nRC Meeting 10.12.2020\nSig 3 - AstraZeneca to give PARPi \nKas to check methylation  \nWaiting for PDX \n\nMeeting notes 08.10.2020\nHas been sent for WGS (30.9.20) and BROCA (6.10.20).\nPatient tissue grew nice organoids but cell line didn't have TP53 expression. \nLooking for signature 3, BRCA1/2, RAD51C/D and PALB2 mutations - will enable PARPi access \nClare trying to fast track the WGS.\n\nMeeting notes 13.08.2020\nClare has requested blood.\n\nMeeting notes 18.06.2020\nSubmit SF tissue (as it's >60%) for WGS. Hoping for a PDX. Put VIM on the mouse box!\n\nMeeting notes 04.06.2020\nHistology just arrived: p53, ARID1A positive. No sarcoma component - pure carcinoma. No CK stain. PAX8 says it is OCS because it was originally. 01264 is a similar case.\nLots of mince and frozen tissue, organoids growing. \nWaiting for Gayanie's review.";
      d_case_summary = "Ovarian carcinosarcoma diagnosed 14 years ago, St 2b/c, treated carbo/taxol; now 1st recurrence; BRCA1/2 germline WT. Likely to have signature 3 on WGS. Surgical specimen obtained from large resection specimen - adherent to bowel. Resected at St Vs private by Adam Pendlebury.\nFFPE block from 2006 tumour surgery has been discarded.";
      date_consented = "2020-05-22";
      tumour_type = "Ovarian Carcinosarcoma";
      tumour_details = "ovarian carcinosarcoma recurrence after 14 years. Tissue from Adam Pendlebury (surgery 21/5/2020)";
      case_details = "TAHBSO + omentumectomy in 2006, Dx carcinosarcoma. 6 x carboplatin/taxotere\n\nCT/PET in 2020 showed multiple peritoneal deposits\n\nL hemicolectomy and resection of all visible nodules, and Bx showed histology similar to HGSEC in 2006\n\n6 cycles of carboplatin/paclitaxel, completed Oct 2020";
      patient_information_complete = "Incomplete";
      fcc_report = "SFRC01304_FCC_Report_16Jul2019_Redacted.pdf";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2020 Ovarian Carcinosarcoma block routinely recalled from Austin Health via fax on 26102020 by Josh\nReceived by Warren 11/1/21\n--------------\n2006 carcinosarcoma block recalled from Melbourne Pathology via fax 2/2/21 by Warren";
      mp_subgroup_sfrcp4_new_id = "Super Responder";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01304";
    predictNeoantigens = true;
  }
