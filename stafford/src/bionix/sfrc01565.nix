with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "AD";
      class = "tumours";
      pdx = false;
      r1 = "VM/gv/SHA256E-s19525732707--9fc4f7ed6c1868e7438e8017ec29bfc6fce2945235bb1460a45fa3869712f87f.gz/SHA256E-s19525732707--9fc4f7ed6c1868e7438e8017ec29bfc6fce2945235bb1460a45fa3869712f87f.gz";
      r2 = "jw/pM/SHA256E-s19490514180--9e7827ae7060280726cd4731834ce4484dae016ea206b907310e47ecd0610a24.gz/SHA256E-s19490514180--9e7827ae7060280726cd4731834ce4484dae016ea206b907310e47ecd0610a24.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "50/zV/SHA256E-s4953912569--a48ab77cfad2aeaed94a426be080dbeaf458f547aa5489e8077b6580102e7206.gz/SHA256E-s4953912569--a48ab77cfad2aeaed94a426be080dbeaf458f547aa5489e8077b6580102e7206.gz";
      r2 = "G5/0X/SHA256E-s5000772411--d6d3d58da60e2abe18cd63ce80beeae5fb071a608a25d4da427754f43bf6b52a.gz/SHA256E-s5000772411--d6d3d58da60e2abe18cd63ce80beeae5fb071a608a25d4da427754f43bf6b52a.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare, Ratana, Rae 03.04.2023\nBROCA on FFPE Block AD\n\nRC Meeting 03.02.2023\nDiscussed WES Report\n-All somatic variants seen in FoundationOne report with the exception of ZNF217 amplification.\n-ARC Portal recommendations: PARPi + IO\n-Nothing extra to do as nothing additional found to FoundationOne.\n\nClare's Meeting 30.05.2022\nDo WES on FFPE Block AD, hope to find more than the FoundationOne (add to Clear Cell project)";
      d_case_summary = "Clear cell ovarian carcinoma";
      date_consented = "2022-03-23";
      tumour_type = "Clear cell ovary";
      tumour_details = "clear cell ovarian carcinoma";
      case_details = "42F\n\n2022-01: Dx Stage 4 clear cell ovarian carcinoma\nSurgery: Peritoneal biopsy (Block AD)\nIHC positive: CK7, PAX8, PR, Ber-EP4, HNF1B, Napsin-A, Ca125 & AMACR (patchy positive staining)\nIHC negative: Calretinin, WT1, CK20, OR, Ca19.9, renal cell carcinoma antigen\nNo loss of staining for BAP1.\n\n2022: Commenced carboplatin/paclitaxel. PD after 1x cycle. Switched to carboplatin/gemcitabine, repsonding.\n\n2022-03: MoST FoundationOne sequencing panel: \nMS-stable, TMB low.\nMutations in ARID1A, ATM, FBXW7, PIK3R1, ZNF217\n\n2022-05: Block AD received. Blood B1 received.\n\n2022-09: Surgery: TAH/BSO?\nIHC positive: CAM5.2m PAX8, PR (moderate), AMACR (moderate), Napsin-A (focal).\nIHC negative: ER\np53: patchy mosaic pattern staining\npMMR: MLH-1, PMS-2, MSH-2, MSH-6 staining retained.\n\n2022-11: B1 and Block AD DNA sent for WES\n\n---------------------------------------------------------------------------\n08Apr2022- Offered WGS on Fresh tissue if obtained in the future, but no current plans/requirements for testing (as per ARC portal). ";
      pre_analysis_mutations = "Already had Foundation One sequencing done. known ARID1A and AMTmut.";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      portal_letter = "SFRC01565_ARCPletter_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "13/04/2022: Jan 2022 sample requested from DHM pathology by Devindee. \n06/05/2022: Jan 2022 sample block received from DHM pathology by Devindee.";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01565";
    capture = CREv2;
  }
