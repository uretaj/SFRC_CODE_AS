with import ./milton-slurm.nix {
  overlays = [(_: super: with super; {xHLA = def xHLA {mem = 60;};})];
}; let
  samples = [
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "JP/VX/SHA256E-s20206883381--7c8ffa9f6ef5d4dd75c38c3ba949cee53a4a7ce3fddaac52b24ad1438c09f4f0.gz/SHA256E-s20206883381--7c8ffa9f6ef5d4dd75c38c3ba949cee53a4a7ce3fddaac52b24ad1438c09f4f0.gz";
      r2 = "7m/zz/SHA256E-s20844059239--def4bc5e033dc928820ca93f267a6303f6960acba7da60e0ab85cbf946b1f66f.gz/SHA256E-s20844059239--def4bc5e033dc928820ca93f267a6303f6960acba7da60e0ab85cbf946b1f66f.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Jq/59/SHA256E-s5765445005--f2ae0fae47832019bbb903f528b3111c9027db68f909d0574b568f7c672dd108.gz/SHA256E-s5765445005--f2ae0fae47832019bbb903f528b3111c9027db68f909d0574b568f7c672dd108.gz";
      r2 = "Q9/Pq/SHA256E-s6070469666--8c1e91af572761ed68be710a50ca8cfd81d240417c21a0394a4a583695af1a80.gz/SHA256E-s6070469666--8c1e91af572761ed68be710a50ca8cfd81d240417c21a0394a4a583695af1a80.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Meeting with Clare 16.12.2021\nBlock 1A: extract DNA, send for WES";
      date_consented = "2018-07-17";
      tumour_type = "Gynae cancer other";
      tumour_details = "Squamous cell carcinoma of the vulva  Doing as expected - well";
      case_details = "48 years old  female \nSquamous cell carcinoma of the vulva, grade 2, of the right labia minor.\nSurgically excised with clear margins.\n\n2018-06: Right groin 2 nodes (core biopsy positive for SCC) \nBlock 1A recalled, entire sample tumour purity 50%, sent for WES\n\n2018-07: Blood B1 received \n\nTreated with concurrent chemo-RT (cisplatin): 11/7/18 - 21/8/18\n\nPET done on 7/1/2019 Shows complete metabolic response. Incidental finding was ??polyp in descending colon. Colonoscopy done in Dandenong.and the bowel were clear (this was after the PET).\n\n";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "2018 block received by Warren from Melbourne Path 26/11/21";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01099";
  }
