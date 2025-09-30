with import ./milton-slurm.nix {}; let
  samples = [
    {
      prefix = "grimmond/s3/batch8/L2000153_S10";
      suffix = "_001";
      site = "B1";
      class = "normals";
      sha256-1 = "ab8652aaa15dd9e8250da68dcf293a4cf23d3856fe0d564aa78afdd8b1f36cf9";
      sha256-2 = "67667adf70ff880561c8633a081b69a8d9ab6ca8334dbdce14ef41e39174f9a4";
    }
    {
      prefix = "grimmond/s3/batch8/L2000152_S9";
      suffix = "_001";
      site = "S1";
      class = "tumours";
      sha256-1 = "6d1cf981d5b7ce0f74313faa241bbd9e6e70823fb85dbd49f39ab5c3a245dbe7";
      sha256-2 = "b3dd36cccf638ef69d8c4d516c819ad5f9e0a23949c6542645bf495c9ae57956";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "endometrial other";
      meeting_discussions_follow_up = "RC Meeting notes 09.07.2020\nTwo primaries case (breast cancer 2016). Patient is on Pembro (self funding) \nMSH2 and PMS2 protein loss - likely methylation as basis of MMR instability, perhaps driving the epigenetic and DNA repair instability \nMatt sending reference of ARID1A potentiating MMR 10.1038/s41591-018-0012-z \n\n28.01.2020\nAmandine to collect DNA from PeterMac from Victoria.\n\nEmail from Clare 21.01.2020\n01260 needs urgent WGS and apparently we have tumor DNA is that right?\nBut not blood. Clare to organise blood collection and organise WGS asap.\n";
      date_of_death = "10/2020";
      d_case_summary = "Ca uterus 1a G2 May 19. Ca breast 2016 Peritoneal disease Lung Mets Biopsy of umbilicle nodule for WGS\nBiopsy of umbilical nodules in Dec 2019 shows undifferentiated carcinoma in keeping with previous endometrial cancer, PAX8  and GATA3 neg, ER  90%, PR  80%. Also showed MSH2 and PMS2 loss suggestive of mismatch repair deficiency. Awaiting FCC clinic.\nLung Mets\nBiopsy umbilicle nodule for WGS. Deceased 09/10/2020.";
      tumour_type = "Endometrial cancer (other)";
      tumour_details = "endometrioid endometrial carcinoma 2019  Breast Ca IDC 2016";
      case_details = "WGS clinical notes \n\"Ca uterus 1a G2 May 19. Had TAHBSO + SLND.\n\nCT CAP Nov 2019 showed multiple sites of metastatic disease including lung nodules, pleural effusion, ascites, omental deposits, and hepatic mets\n\nBx in Dec 2019 shoed undifferentiated carcinoma in keeping with prev endometrial Ca\n\nReceived 2 cycles of Carboplatin/paclitaxel but ceased due to neuropathy\n\nCurrently managed on carbo/gem/bev\n\nCa breast 2016 Peritoneal disease Lung Mets Biopsy of  umbilicle nodule for WGS\n";
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
    name = "SFRC01260";
  }
