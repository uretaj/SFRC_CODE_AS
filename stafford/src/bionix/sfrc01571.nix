with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "02/7k/SHA256E-s36026572549--e07acb274ff79b44821369858eded7e47db4d20c8f486f1ceef9fdaf3167def5.gz/SHA256E-s36026572549--e07acb274ff79b44821369858eded7e47db4d20c8f486f1ceef9fdaf3167def5.gz";
      r2 = "Qp/0M/SHA256E-s39291319387--ff8b0f2f3278e7c7be2fb3b2db086791d05e1701c62135cd48125efd60144b04.gz/SHA256E-s39291319387--ff8b0f2f3278e7c7be2fb3b2db086791d05e1701c62135cd48125efd60144b04.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "6Z/4Z/SHA256E-s85430685331--8343f874239f9b4c77628e5a2045d7a65ce68621280e0607fcd04739ffceab50.gz/SHA256E-s85430685331--8343f874239f9b4c77628e5a2045d7a65ce68621280e0607fcd04739ffceab50.gz";
      r2 = "Wq/8f/SHA256E-s91713817920--940472150929e607d8e777c9b003a2616f06dfd9ca714ad02c64e25e880de808.gz/SHA256E-s91713817920--940472150929e607d8e777c9b003a2616f06dfd9ca714ad02c64e25e880de808.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "mp/wv/SHA256E-s5139198578--9bd9db3a0dda1a01c89586e499e5d6a1d8c0da560a8d75e902cb816205777a56.gz/SHA256E-s5139198578--9bd9db3a0dda1a01c89586e499e5d6a1d8c0da560a8d75e902cb816205777a56.gz";
      r2 = "04/M9/SHA256E-s5041547473--d5aa9b33c15d03a94624d70ca1f4710b5ebea5131b9017cea1fadb6a889dcfe4.gz/SHA256E-s5041547473--d5aa9b33c15d03a94624d70ca1f4710b5ebea5131b9017cea1fadb6a889dcfe4.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "LGSOC";
      meeting_discussions_follow_up = "RC meeting 13.10.2022\nDiscussed WGS report.\nLooking for more of the biological rationale for why RAF-MEKi therapy is likely to work. Any scientific experiment that needs to be done? \nPatient has progressed in Sydney, would like to give her access to the Beigene trial. \n\nHave tried 2 different ways for PDX (waiting).\nOnly have a mince vial, this DNA. No snap frozen or FFPE. \nNovel drivers - this PAK2 might be really important (along with ARGHEF7).\nHave more LGSOC cell lines (this cell line did not grow). \n\n** The email from Joep should be enough to try to get onto the trial.  \n\nFund raising for cobimetinib/trametinib or other MEKi  \n\nClare's Meeting 30.05.2022\nRatana to extract DNA and RNA from S1, send for WGS.";
      date_of_death = "12/2022";
      d_case_summary = "48yo female with Low Grade Serous Ovarian Cancer no recorded treatment yet.\n\n    - history of abdominal pain and bloating early in 2020, pelvic mass on CT scan \n    - debulking surgery on 6 July 2020; tumour in L ovary with nodular involvement, with extensive peritoneal involvement. \n    - Immunohistochemistry: p53  wild type/p16  (patchy)/PAX8 /ER  (2-3  90%)/PR  (<5%).\n    - 1st line adjuvant treatment with carboplatin and paclitaxel August - Dec 2020 \n       - recurrent disease late Dec '20 PV discharge, found to have a tear in the vaginal wall, with recurrent disease in the biopsy\n    - 2nd line therapy with Femara AI hormonal therapy in early 2021 - has continued\n       - Bilateral ureteric stents - still in situ";
      date_consented = "2022-04-18";
      tumour_type = "LGSOC";
      tumour_details = "LGSOC";
      case_details = "48yo woman\n\n2012: Ovarian cyst removed.\n\n2017: Surgery: abdominoplasty\n\n2020-06: Diagnosed LGSOC following pelvic mass found on CT scan following abdominal pain and bloating. Surgery: debulking, discovery of tumour arising in L ovary with nodular involvement and extensive peritoneal involvement.\nIHC positive: ER (2-3+ 90%), PR (<5%), PAX8, p16 (patchy)\np53: wild type\n\n2020-08 - 2020-12: 1st line adjuvant treatment with carboplatin and paclitaxel\n\n2020-12: developed recurrent disease almost immediately following treatment. \nHistopath on 'anterior peritoneal lesion'\nIHC positive: p53 (non-aberrant wild type), p16 (patchy), PAX8, ER 2-3+ 90%, PR 1+ <5%\nHistopath on 'vaginal edge'\nIHC Positive - p53 (non aberrant wild type), p16 (patchy), PAX8, ER 2-3+ 90%, PR 1+ <5%\n\n\n2021: 2nd line therapy with Femara AI hormonal therapy\n\n2021-02: Laprascopy with biopsy--FFPE only.\n\nMolecular testing Genomics for Life: KRAS, BRAF, NRAS, PIK3CA, PTEN, AKT negative. g/sBRCA1/2 WT. Has gRUNX1 mutation. Somatic heterozygous gene deletion in FUBP1, ARID1A and JAK1 genes. A likely somatic variant was identified in the CDH10 c.934G>A; p.(Asp312Asn), NRXN1 c.3596C>A;\np.(Ala1199Asp) and MEN1 c.624C>A; p.(Asn208Lys) genes in the tumour.\nA probable germline variant is present in the KMT2D c.5125C>T; p.(Arg1709Cys) and FGFR4 c.1162G>A; p.(Gly388Arg) genes in the tumour.\nARID1A gene deletion is associated with neutral gene expression as opposed to low expression so this may be heterozygous gene deletion, not homozygous.\nMutation Sig 3 - but no reference to HRDetect or Chord analysis so don't know if HRD or HRP\nNo mention of the RUNX1 mutation in the Genomics for Life report\n\nRecommendations: WES on recent FFPE laparoscopic biopsy in order to clarify the molecular profiling or WGS with fresh tissue\n\n2022-05: Core biopsy from R pelvic side wall/retroperitoneal nodule fresh tissue received (S1) and Blood B1 received.";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01571";
  }
