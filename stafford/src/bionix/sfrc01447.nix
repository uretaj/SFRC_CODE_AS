with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2A";
      class = "tumours";
      pdx = false;
      r1 = "1F/zj/SHA256E-s16810697800--b0436cd499c832a64d7aa3176908b70cd000cb5bf833cd9a0d7a546bde250b55.gz/SHA256E-s16810697800--b0436cd499c832a64d7aa3176908b70cd000cb5bf833cd9a0d7a546bde250b55.gz";
      r2 = "Qj/9q/SHA256E-s18171600997--d3d62484ef4302e418d9b75e45533622822d96a5e68a5274bd33d885b1805b65.gz/SHA256E-s18171600997--d3d62484ef4302e418d9b75e45533622822d96a5e68a5274bd33d885b1805b65.gz";
    }
    {
      site = "1H";
      class = "tumours";
      pdx = false;
      r1 = "0x/g5/SHA256E-s8855267470--827a4adbd399f182b3af13ed75396d19d373c82b47484da9aca34c906d3f7b37.gz/SHA256E-s8855267470--827a4adbd399f182b3af13ed75396d19d373c82b47484da9aca34c906d3f7b37.gz";
      r2 = "P4/6J/SHA256E-s9062537368--c0b5162d1636b03917c8137e8cfbb5f7d210bbcb97935453cdd4193b76201f6a.gz/SHA256E-s9062537368--c0b5162d1636b03917c8137e8cfbb5f7d210bbcb97935453cdd4193b76201f6a.gz";
    }
    {
      site = "1H";
      class = "tumours";
      pdx = false;
      r1 = "mw/2x/SHA256E-s5822969102--469f48b41313b7e59adefea680cc433cb1204b935abced0da0be5567621ff284.gz/SHA256E-s5822969102--469f48b41313b7e59adefea680cc433cb1204b935abced0da0be5567621ff284.gz";
      r2 = "kx/2J/SHA256E-s5903022772--6989be97f93cbfab03a3e278aee567ceb1633c8f27fe02bdce29957c43a0bab3.gz/SHA256E-s5903022772--6989be97f93cbfab03a3e278aee567ceb1633c8f27fe02bdce29957c43a0bab3.gz";
    }
    {
      site = "B";
      class = "tumours";
      pdx = false;
      r1 = "Z8/V2/SHA256E-s14854390791--53c66a80ad39b88f80dfbec09bf02eb7a7361c8a830ab2e7d732812b5469c582.gz/SHA256E-s14854390791--53c66a80ad39b88f80dfbec09bf02eb7a7361c8a830ab2e7d732812b5469c582.gz";
      r2 = "8X/fJ/SHA256E-s15436138964--54966473930fe88a62314b861ff38120db98c4d552934175bda747344e25e7b3.gz/SHA256E-s15436138964--54966473930fe88a62314b861ff38120db98c4d552934175bda747344e25e7b3.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "82/Vk/SHA256E-s3778117487--b955cc7a3ba7013cd4326db522d3ad68c8dd91d33926c7c743269a5cd35bc299.gz/SHA256E-s3778117487--b955cc7a3ba7013cd4326db522d3ad68c8dd91d33926c7c743269a5cd35bc299.gz";
      r2 = "Zw/vK/SHA256E-s4033394678--aa59ed4f4c0f3c38d818b6cd884704850967d62c273c6dc1fb6d3a5b7fb24edd.gz/SHA256E-s4033394678--aa59ed4f4c0f3c38d818b6cd884704850967d62c273c6dc1fb6d3a5b7fb24edd.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare, Ratana, Rae 04.03.2023\nBROCA for FFPE Block 2A\n\nRC Meeting 16.02.2023\nDiscussed WES report: \nBRCA1 seen in 2nd brain met--strengthens theory of olap not crossing blood-brain barrier. High Sig3. somatic RAF1 - only seen in this tumour, not in 1st brain met or primary. Unsure of relevance, double check with Damien.\n\nClare's Meeting 03.11.2022\nDo URGENT WES on FFPE Block 2A (2nd brain met)(super interesting case). \n\nRC Meeting 21.10.2022/Clare, Ratana, Mandy, Rachael 22.10.2022\nPredicted pathogenic BRCA1 variant appears in brain met. Maybe try a different PARPi if possible; could have developed because the drug wasn't getting into the brain.\n\nClare to check if talazoparib can cross the blood-brain barrier.\n\nMandy to get Damien to issue a report.\n\nClare's meeting 02.12.2021\nBlock 1H and B: BROCA on both blocks, and WES \nRAD51D case, very important. Kas to review when ready. \n\nClare's meeting 21.10.2021\nBlock B: Send for BROCA only (both blocks, even though first one is probably not good), looking for reversion. Find ETA on first block. \nBriony to get blood, but not urgent. Updated letters. \n\nBroca meeting with Clare 27.09.2021\nGet Warren to recall a block from 2019 debulking, post adjuvant therapy, the one they did RAD51 testing, and a block from the more recent surgery 30.07.2021. Do BROCA on both block, this will not change clinical management, it is for research only. \nBriony/Reece to add de ID portal letter";
      d_case_summary = "recurrent/ metastatic plat sensitive HGSOC, BG of germline RAD51D mutation";
      date_consented = "2021-08-04";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC";
      case_details = "?? Stage III/IV high-grade serous ovarian cancer with brain metastases \n\n?? Post six cycles of carboplatin and paclitaxel \"neoadjuvant\" chemotherapy. \n\n2019-04: FCC panel: Germline RAD51D mutation detected. \n\nHistopath on ascites and peritoneal nodules:\nIHC positive: PAX8, P53, BerBp4, CA125, CK7, ER (weak focal), E-cadherin, CK5/6 (focal)\nIHC negative: WT-1, ATP, Caltretinin, CK20, Ca19.9, CD117, SOX10, Gatta3, Napsin A\n\n2019-09: Debulking surgery. Tissue fixed and blocked (FFPE Block 1H)\nShows high-grade serous carcinoma in the left ovary with extensive response to neoadjuvant chemotherapy, extending onto the ovarian surface. No lymphovascular invasion. Right intraovarian high-grade serous carcinoma with no extension onto the ovarian surface and no lymphovascular invasion. \n\n2019-11: Maintenance olaparib.\n\n2021-07: Recurrent disease with R cerebellar metastasis. \nIncomplete resection, tissue fixed and blocked (FFPE block B)\nIHC positive: P16, PAX8, P53. Strong staining for WT1 in tumour cells. ER 50%.  \nIHC negative: CDX2 and TTF1\n\n2021-09: FFPE Block B (R cerebellar tumour from 2021 resection) received.\n\n2021-11: FFPE Block 1H (L tube and ovary from 2019 debulking) received.\n\n2022-01: New R) frontal lobe lesion with residual nodularity to the right cerebellar area \n\n2022-03: Blood B1 received\n\n2022-06: DNA from Blocks B and 1H sent for BROCA\n1H: Germline RAD51D\nB: Germline RAD51D, somatic BRCA1 - BRCA1 in metastasis but not in primary tumour. Potential that PARPi is not crossing blood-brain barrier.\n\n2022-08: Recurrence of R) cerebellar area of enhancement, punctate enhancement to anterior L) medial frontal area, ?new metastatic disease. Tissue fixed and blocked (Block 2A)\n\nDNA from Blocks B, 1H and Blood B1 sent for WES.\nBRCA1 in metastasis but not in primary tumour. Potential that PARPi is not crossing blood-brain barrier.\n\n2022-10: Sections from FFPE Block 2A (right suboccipital tumour from 2022 recurrence) received.\n\n2022-11: 2A DNA sent for WES\n---------------------------------------------------------------------------\nStage III/IV high-grade serous ovarian cancer.\n 1.1. Post six cycles of carboplatin and paclitaxel \"neoadjuvant\" chemotherapy.\n 1.2. Debulking surgery under Dr Michael Bunting on 20 September showing high-grade serous carcinoma in the left ovary with extensive response to neoadjuvant chemotherapy, extending onto the ovarian surface. No lymphovascular invasion. Right intraovarian high-grade serous carcinoma with no extension onto the ovarian surface and no lymphovascular invasion.\n 1.3. Germline RAD51D mutation.\n 1.4. Maintenance olaparib via compassionate access program commenced on 2 November 2019.\n 1.5. recurrent disease with R cerebellar solitary lesion 28 July 2021. Incomplete resection 30/07. Awaiting PORT with cavity boost. No other disease on current CT CAP 29 July 2021.";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "BRCA1";
      fcc_report = "SFRC01447_FCCPanel_05Jun2019_Redacted.pdf";
      portal_letter = "SFRC01447_ARCPortalReport_06Sep2021.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "Block requested from RHH by Warren 25/8/21, received 14/9/21\nBlock from 2019 episode requested by Warren from Hobart Pathology, received 2/11/21\n20/09/2022: Aug 2022 sample requested from Hobart pathology by Devindee\n13/10/2022: Aug 2022 slides received.";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_germline_mutations = "RAD51D mutation";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01447";
  }
