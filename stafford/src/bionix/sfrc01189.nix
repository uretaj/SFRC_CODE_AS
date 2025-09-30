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
      r1 = "2K/6z/SHA256E-s40401225359--2987c267c7a3d268cc8ddf55efc2cfac5a1fc43715c45c9fbe7fb495dadfa816.gz/SHA256E-s40401225359--2987c267c7a3d268cc8ddf55efc2cfac5a1fc43715c45c9fbe7fb495dadfa816.gz";
      r2 = "60/Wg/SHA256E-s43184752561--7e38501863cc15f317813d9316a756e7dcf507e5bc17d7a19ab83a6b76df4d11.gz/SHA256E-s43184752561--7e38501863cc15f317813d9316a756e7dcf507e5bc17d7a19ab83a6b76df4d11.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "gm/17/SHA256E-s80694222759--a0ae7a83aab97498d58465a7e336db5f2a75541a67fcd9ba87c49cdfd4590471.gz/SHA256E-s80694222759--a0ae7a83aab97498d58465a7e336db5f2a75541a67fcd9ba87c49cdfd4590471.gz";
      r2 = "1f/52/SHA256E-s86315370547--eba3c9fa21a16b0818003102c1192814446acadff4b969393fb7cc9ed99944c6.gz/SHA256E-s86315370547--eba3c9fa21a16b0818003102c1192814446acadff4b969393fb7cc9ed99944c6.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "cervical";
      meeting_discussions_follow_up = "Meeting notes 2019.11.28\nWGS notes: Potentially a never-responder, mutation profile matches cervical cancer, 30 yo female in NZ, previous cervical cancer (hysterectomy) and melanoma (2017), with ovarian tumour identified in Jan 2019.  On carbo/etoposide until June and has been progressing since then. \n\nSend OCT block for MYC IHC (send as batch with Gen's samples) - other markers that would be present in mucinous cancers that we can check? \nDamien to issue report \nNeeds the CAR-T cell therapy trial at Petermac \n\nMeeting notes 2019.09.27\nAmandine to extract DNA from these sections before sending to Kym for WGS with blood. \n\nMeeting notes 2019.08.22 \nNo tumour in FFPE sample so block whole piece of Snap Frozen into OCT and do another H&E to check if there is any tumour\n\nMeeting notes 2019.07.25\nClare emailing Kylie to check if she will take this case to extract DNA etc, needs to have WGS organised by us.";
      date_of_death = "09/2020";
      d_case_summary = "Ovarian mucinous carcinoma, with high-grade neuroendocrine element.\n6 cycles Carboplatin and etoposide. Rapid recurrence and progression of disease with GaTATE PET positive disease 2 months post treatment completion.";
      date_consented = "2019-05-14";
      tumour_type = "Cervical adenocarcinoma";
      tumour_details = "Ovarian mucinous carcinoma with high grade neuroendocrine carcinoma arising within   WGS confirmed this is Cervical (might not be adeno though)";
      case_details = "WGS clinical notes \n\"Met mucinous ca ovary w HG non-small cell neuroendocrine elements.  Carbo/Etoposide x 6 completed 17/06/19. Bx abdo wall lesion 18/07/19: met HG NET. Uncertain therapeutic implications of NET in mucinous tumour vs de novo NET. Resistance to Carbo / Etop noted. ImmunoRx could be considered. Considering paying. Will we get any result Joep?  Is there adequate tissue?\n";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "2 primary";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    predictNeoantigens = true;
    name = "SFRC01189";
  }
