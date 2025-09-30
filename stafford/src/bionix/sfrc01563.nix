with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "2z/PF/SHA256E-s5514695701--87b00b3261aa986d1a3fd28a206111a609624e2f96fa74b07e926fd710bef0cb.gz/SHA256E-s5514695701--87b00b3261aa986d1a3fd28a206111a609624e2f96fa74b07e926fd710bef0cb.gz";
      r2 = "qJ/7F/SHA256E-s5551665569--b794b434838b026c54a1005a51bc85eabda2e841f3bbd1e3b69398435b8d2d0a.gz/SHA256E-s5551665569--b794b434838b026c54a1005a51bc85eabda2e841f3bbd1e3b69398435b8d2d0a.gz";
    }
    {
      site = "1I";
      class = "tumours";
      pdx = false;
      r1 = "Wk/08/SHA256E-s16531033402--867ba9f220bb116d989407f57d826753985ab7a00bb7f360ee554d8f4309bfb5.gz/SHA256E-s16531033402--867ba9f220bb116d989407f57d826753985ab7a00bb7f360ee554d8f4309bfb5.gz";
      r2 = "6V/xp/SHA256E-s16514758439--5228473310455d112d5bf54bbb907c66a20f4b0022a2d99ba86f6f9acb8edf17.gz/SHA256E-s16514758439--5228473310455d112d5bf54bbb907c66a20f4b0022a2d99ba86f6f9acb8edf17.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 23.02.2023\nDiscussed WES report for Block 1I\nSomatic GATA3\nCN plot was okay\nHolly to look into the ARHGEF7.\nSETD1B mutation may have significance if together with HRD mutations, but not found here. \n\nClare, Ratana, Rachael, Mandy 01.10.2022\nMandy to contact patient's oncologist to tell them that we cannot do WES without blood as getting blood has been impossible. WES on block 1I if/when blood arrives.\n\nClare's Meeting 30.05.2022\nWES on FFPE block 1I.";
      blood_recall_history = "Suspended \n\n30 Aug22 - DNA\n05Sep22 - DNA message left\n08Sep22 - DNA message left\n15Sep22 -  DNA message left \n\nUnable to contact patient email to oncologist 16Sep22 invited patient to contact us if interested in giving blood";
      date_of_death = "05/2023";
      d_case_summary = "LGSOC -  advanced low grade serous ovarian carcinoma - ow grade papillary serous adenocarcinoma.";
      date_consented = "2022-03-02";
      tumour_type = "LGSOC";
      tumour_details = "LGSOC";
      case_details = "34yo woman\n\n2021-02: Diagnosed low grade papillary serous adenocarcinoma following ascitic drain and peritoneal biopsy. \nIHC positive: ER & PR (strong), WT1, PAX8\np53: wild type \n\n2021-03: Diagnosed LGSOC Stage 3C following debulking procedure (total hysterectomy, bilateral salpingo-oopherectomy and resection of omentum, appendix, splenic hilum tissue and pouch of Douglas tissue). \nHistopath: R ovarian low grade serous carcinoma. Involvement of both ovaries, fallopian tubes, uterus, peritoneum (including appendix, splenic hilum and pouch of Douglas) and omentum. \nTissue from uterine nodule fixed and blocked (Block 1I)\n\n2021-07: Treatment: adjuvant carboplatin/paclitaxel. \n\n2021-08: Commenced maintenance letrozole\n\n2021-11: Ovary sent for TSO500--GATA6 mutations found. No BRAF or MAP kinase pathway mutation was detected. \n\n2022-01: Radiological and biochemical progression: increases in peritoneal metastases in the pelvis and left infra-colic gutter and mild enlargement of several small bilateral pleural metastases, significant interval increase in left lower abdominal wall intra-muscular metastases. \nTreatment: Rotation to medroxyprogesterone \n\n2022-02: ARC portal summary of recommendations: Whole genome (fresh tissue) or whole exome sequencing (existing FFPE sample) may help \nidentify genomic aberrations leading to MAP-kinase pathway activation (and subsequent therapies) that are not \ncovered by the TSO-500 panel\n\n2022-03: Re-staging planned.\n\n2022-05: FFPE block 1I received (no blood yet)";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "GATA 6";
      portal_letter = "SFRC01563_ARCPortal_25Feb2022_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "06/04/2022: March 2021 sample requested from Clinpath pathology by Devindee. \n06/05/2022: 2021 sample block received from Clinpath pathology by Devindee. ";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01563";
    capture = CREv2;
  }
