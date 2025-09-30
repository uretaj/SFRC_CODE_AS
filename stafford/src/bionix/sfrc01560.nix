with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1AG";
      class = "tumours";
      pdx = false;
      r1 = "3X/vZ/SHA256E-s9837408181--45028537ceedaabc6d4b6e83ddb2b72943c1cc3a51c7637eb7480be6b0030b06.gz/SHA256E-s9837408181--45028537ceedaabc6d4b6e83ddb2b72943c1cc3a51c7637eb7480be6b0030b06.gz";
      r2 = "Pm/wV/SHA256E-s10142352975--7ce951e860273a94319c8c490fb465fd2b5b8bb7ce537d0cae7c5fb63d87a1cc.gz/SHA256E-s10142352975--7ce951e860273a94319c8c490fb465fd2b5b8bb7ce537d0cae7c5fb63d87a1cc.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "k6/P3/SHA256E-s4521978155--11a82c48290b5148a0bbb92997ff3894ea5ebaf57721603a77ae9bd74e076a9a.gz/SHA256E-s4521978155--11a82c48290b5148a0bbb92997ff3894ea5ebaf57721603a77ae9bd74e076a9a.gz";
      r2 = "qV/Gx/SHA256E-s4601099644--913bbf850172834c2b5e83f6f716a3682628d90cdee86f436fb8c42cdd8f14f7.gz/SHA256E-s4601099644--913bbf850172834c2b5e83f6f716a3682628d90cdee86f436fb8c42cdd8f14f7.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 13.04.2023\nDiscussed WES report\n-LOH everywhere! \n-Many frameshift mutations - in keeping with Lynch Syndrome (germline MLH1) \n-PIK3CA - 10% (low HF)  and BRCA2 - 9% (low AF), although NOT the same variants seen in TSO500 report.\n-gMLH1, sFUBP1, PPP2R1A, ARID1A same variants seen in TSO500 report.\n\nClare, Ratana, Rae 03.04.2023\nBROCA on FFPE Block 1AG\n\nClare's Meeting 17.11.2022\nDNA from FFPE block 1AG failed WES pre-capture QC. Re-extract DNA and re-submit for WES. \nMoST TSO500 report: found MLH1 mutation. Would like to see this in WES for clear cell project. \n\nClare, Rachael, Ratana 30.09.2022\nGet ARC portal letter (emailed Lokman Pang 06.10.2022). Still awaiting blood, Mandy trying to organise. Send Block 1AG for WES when blood arrives.\n\nClare's meeting 19.05.2022\nPlan: do WES on FFPE block 1AG. Mandy organising blood. ";
      blood_recall_history = "12July22 - DNA\n25Jul22 - Email response. Did not remember consenting. Info pack sent, discussed program again and happy to still be involved.\n09Aug - Follow up email sent\n18 Aug22 - Follow up call\n18Aug22 - Called Path DNA\n22Aug22 - Called Path DNA\n23Aug22 - Called Path, will called back later this afternoon.\n30Aug22 - Called Path, hung up on me. \n30Aug22 - Called patient DNA\n05Sep22 - Email received suggesting other path clinics \n06Sep22 - Called other clinics, DNA x4\n06Sep22 - Called patient DNA\n06Sept22 - Text to patient  \n08Sep22 -  Call to patient. Expected date of blood draw 19th Sep\n15Sep22 - Tested pos COVID will rebook in a few weeks time";
      d_case_summary = "Clear cell ovarian cancer\nMLH1 mutation";
      date_consented = "2022-03-30";
      tumour_type = "Clear cell ovary";
      tumour_details = "Clear cell ovarian cancer";
      case_details = "2017-07: Dx Stage 1A clear cell ovarian cancer. MLH1 mutation\nSurgery: TAHBSO + omental biopsies (FFPE Block 1AG) \nIHC positive: p53 (patchy heterogenous staining),  NapsinA (zones of positive staining)\nIHC negative: ER, PR, WT1, p40\n*dMMR: Loss of MLH1 and PMS2, patchy preserved MSH2 and MSH6\n\n2018-10: Recurrent clear cell ovarian cancer \n\n2018-11: Resection of abdominal wall mass and peritoneal biopsies\nIHC positive: CK7, PAX8\nIHC negative: CK20, CDX2\n\n2018-12: RT to abdomen\n\n2019-10: MoST Molecular Tumour Board Report\n-High TMB\n-Microsatellite instability\n-BRCA2 N1784fs*7\n-MLH1 W597*\n-PIK3CA C420R\n-ARID1A D315fs*85 \n-PPP2R1A R182W\n\n2021-11: Treatment: Tremelimumab and Durvalumab (2 years)\n\n2022-04: Block 1AG received\n\n2022-10: Blood B1 received\n\n2022-12: DNA from FFPE Block 1AG and B1 sent for WES";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      portal_letter = "SFRC01560_ARCPortal_21April22_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "06/04/2022: Aug 2017 sample requested from SSWP pathology by Devindee.\n22/04/2022: Aug 2017 block received from SSWP pathology by Devindee. ";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01560";
    capture = CREv2;
  }
