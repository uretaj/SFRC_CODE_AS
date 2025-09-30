with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Pw/4m/SHA256E-s48995552493--5f4b8482a820eac4df6214055f49fab772c052cc55d5a2a39264f62638be174d.gz/SHA256E-s48995552493--5f4b8482a820eac4df6214055f49fab772c052cc55d5a2a39264f62638be174d.gz";
      r2 = "PV/vZ/SHA256E-s52065709048--115d509b38c83ebb3ee3aae608580002b21ab1bccad47c053017fba4ffa00d93.gz/SHA256E-s52065709048--115d509b38c83ebb3ee3aae608580002b21ab1bccad47c053017fba4ffa00d93.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "1W/Gv/SHA256E-s88723536985--069ac3968bdd254ebc0461bb5133ae2c141f5c7330bf12e417c0c622c4fb2301.gz/SHA256E-s88723536985--069ac3968bdd254ebc0461bb5133ae2c141f5c7330bf12e417c0c622c4fb2301.gz";
      r2 = "V3/F6/SHA256E-s91287600807--a07b9c0f726ad356cf56c8ae4514d61e18a4bdd637c6c29917e259325a7767cd.gz/SHA256E-s91287600807--a07b9c0f726ad356cf56c8ae4514d61e18a4bdd637c6c29917e259325a7767cd.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "zZ/zg/SHA256E-s5856803970--d8949b6a77621463d1e6a665dff46676280cdf4bd0f8382bec0a14252448ff94.gz/SHA256E-s5856803970--d8949b6a77621463d1e6a665dff46676280cdf4bd0f8382bec0a14252448ff94.gz";
      r2 = "4w/09/SHA256E-s5869294835--0ff13b6503011fed711f9e9e9e88fe95b39f3cd4ce9a0b3ca3efb69fe17772b0.gz/SHA256E-s5869294835--0ff13b6503011fed711f9e9e9e88fe95b39f3cd4ce9a0b3ca3efb69fe17772b0.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare, Ratana, Rae 03.04.2023\nBROCA for Fresh Tissue S1\n\nRC Meeting 29.09.2022\nDiscussed Grimmond WGS report.\nPARPi resistance mechanisms? \nBrain met still has the RAD51C mutation and no other clear PARPi mechanisms of resistance, so might be that the Olaparib is unable to get through blood-brain barrier.  \nBut keep patient on PARPi to treat other areas. \nCCND2 is platinum resistance mechanism - better to try taxol or doxorubicin? \nShould confirm with Damien whether this plan sounds good.\nSFRC data just came through, looks consistent. \n\nClare Meeting 19.09.2022\nReviewed block 1.2 from 2019 surgery. Very tiny amounts of tumour. Need to discuss the new WGS report next week, don't wait for SFRC data. Looking for PARPi resistance mechanism.\n\nClare's Meeting 05.08.2022\nRatana to do WGS (DNA and RNA) on S1 tissue. \nBaseline (2019) block has been recalled, awaiting arrival.\nLeave S1 FFPE for now.";
      date_of_death = "12/2022";
      d_case_summary = "Met HGS fallopian tube cancer";
      date_consented = "2022-07-01";
      tumour_type = "HGS Fallopian tube";
      tumour_details = "HGS FT, Brain mets";
      case_details = "72F\n\n2019-03: Initial diagnosis of FIGO Stage IVB HG serous adenocarcinoma of fallopian tube, also lung/para aortic lymph node (PALN) involvement.\n-Histopath on biopsy of pelvic mass\n -IHC positive: CK7, PAX8, P53, P16, WT1, ER \n  (moderate 2+), PR (weak 1+)\n -IHC negative: CK20, GATA3, D240, TTF1, Napsin A, \n  Calretinin, cytokeratin HMWCK34BE12, CK5/6, p40 \n  (focal staining in tumour cells present of uncertain. \n  significance)\n\n2019-04 - 2019-09: Carboplatin/Paclitaxel x6\n-C1-4: Neoadjuvant, C5-6 post op\n-Bevacizumab given in C1 only\n-Taxol withheld C2, 50% C3, withheld C4 - 6\n\n2019-04: Familial cancer panel report: No pathogenic BRCA1/2 detected.\n\n2019-07: Surgery: BSO, subracolic omentectomy, optimal debulk. Tissue fixed and blocked (Block 1.2)\nBRCA Tissue testing on tumour DNA: No pathogenic BRCA1/2 detected.\n\n2021-02: Recurrence of adenocarcinoma of fallopian tube, platinum sensitive. On surveillance. \n\n2022-05: Diagnosis of metastatic brain adenocarcinoma.\n\n2022-07: Blood B1 received. Left temporal brain tumour (S1) received in lab\n-Awaiting pathology results of CA125 and ER IHC.\n\n2022-08: S1 & B1 DNA sent for WGS. FFPE Block 1.2 (pelvic mass, 2019 surgery) received. ";
      brca_report = "SFRC01614_SomaticBRCAPanel_13Feb2020_Redacted.pdf";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "BRCA negative";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "25/07/2022: 2019 sample requested from PeterMac pathology by Devindee. \n26/08/2022: 2019 sample slides received from PeterMac pathology by Devindee. ";
      patient_germline_mutations = "BRCA WT, RAD51C";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01614";
  }
