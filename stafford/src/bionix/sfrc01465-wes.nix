with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1H";
      class = "tumours";
      pdx = false;
      r1 = "V9/qK/SHA256E-s22318397309--6a2256b9be62515e0c4a3aea180f442274d4cd6a88a6421846722929d9367a60.gz/SHA256E-s22318397309--6a2256b9be62515e0c4a3aea180f442274d4cd6a88a6421846722929d9367a60.gz";
      r2 = "72/gG/SHA256E-s22198683468--fac2b262790344b6298dd825ed556236cee6bb1889f3736c78aa95d348f91842.gz/SHA256E-s22198683468--fac2b262790344b6298dd825ed556236cee6bb1889f3736c78aa95d348f91842.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "fZ/8w/SHA256E-s4419809509--fcfa315baefc706cbe716182948d4f2c74d6aa32656c82987030bc5cb016f6f4.gz/SHA256E-s4419809509--fcfa315baefc706cbe716182948d4f2c74d6aa32656c82987030bc5cb016f6f4.gz";
      r2 = "zq/Z5/SHA256E-s4526710888--f91ddbd2bba115c23b671f8a679a77f9cf3b5842e491c1b67b72a2865a2f717b.gz/SHA256E-s4526710888--f91ddbd2bba115c23b671f8a679a77f9cf3b5842e491c1b67b72a2865a2f717b.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "HGSEC";
      meeting_discussions_follow_up = "RC Meeting 11.05.2023\nDiscussed patient WES report:\nCheck the TP53 variant. Patient could have tried Palbociclib and IO? \n\nClare, Ratana, Rae 04.03.2023\nBROCA for FFPE Block 1H and fresh tissue S1\n\nMeeting with Clare 24.02.2022\nDo WES on block 1H, PDX! Getting confirmed by Gayanie \n\nBROCA meeting with Clare 18.02.2022\nMandy to get a clinical follow up to know if the patient has gone through clinical trial. \nOrganise BROCA on fresh tissue S1\nHolly might be interested in getting some sequencing done on the diagnosis block for her project. \n\nRC meeting 16.12.2021\nDiscussed WGS report. Recall a block from 2019. Organise WES to check if other mutations are present before the sample that was sent for WGS.\n\nClare's meeting 2021.10.21\nFresh tissue S1 OCT: Send for WGS the SF tissue ";
      date_of_death = "01/2022";
      d_case_summary = "HGSEC";
      date_consented = "2021-09-24";
      tumour_type = "HGSEC";
      tumour_details = "HGSEC, HER2 amplified";
      case_details = "78 years old, metastatic HGSEC, FIGO grade 3 \n\nHer2 IHC 3+, SISH amplified \n\nGermline BRCA wt \n\nPotentially eligible for WEE1 trial \n\n2019-06: Initial diagnosis and surgery, Lap hyst BSO /pelvic LN (not resected). Polypoid lesion and underlying myometrium to serosal surface fixed and blocked (FFPE block 1H)\n\nIHC Positive: P53, ER and PR patchy, P16 and WT1, MLH1, PSM2, MSH2 and MSH6 (MMR proficient) \n\n2019-07 - 2019-11: Carboplatin / Paclitaxel x 4 -> Carboplatin x 2, Paclitaxel dropped due to PN \n\n2020-03 - 2020-11: Trastuzumab / Pertuzumab  \n\n2021-01 - 2021-06: DOXOrubicin liposomal \n\n2021-09: Occipital Biopsy (Fresh tissue S1 and blood B1 received) \nIHC Positive: CK7, PAX8 and P53 \nIHC Negative: CK20, ER, GATA3, ERG, Sox10 and CD34 \n\n2021-10: DNA sent for WGS\n\n2022-01: Deceased. Sections from FFPE Block 1H received.\n\n2022-03: DNA sent for WES";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2019 slides received by Devindee 07/01/2022.";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = false;
    name = "SFRC01465";
  }
