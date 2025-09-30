with import ./milton-slurm.nix {
  overlays = [(_: super: with super; {xHLA = def xHLA {mem = 30;};})];
}; let
  samples = [
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "8x/MJ/SHA256E-s31487137269--bd2e4d2c93bb8b010b4bf32026b556040f09a584787eb8cb2a360dab216a2d5c.gz/SHA256E-s31487137269--bd2e4d2c93bb8b010b4bf32026b556040f09a584787eb8cb2a360dab216a2d5c.gz";
      r2 = "gJ/pQ/SHA256E-s32210771097--7fb596e3cf073a1963c82aa540815ac65baa4e7297cd1e6e78fa487e717f3f5a.gz/SHA256E-s32210771097--7fb596e3cf073a1963c82aa540815ac65baa4e7297cd1e6e78fa487e717f3f5a.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "9W/4Z/SHA256E-s5574439466--b3d246a2f95c44da76003f93fb7a05006fe20f242eb8fc4e8c6149c64399e3ff.gz/SHA256E-s5574439466--b3d246a2f95c44da76003f93fb7a05006fe20f242eb8fc4e8c6149c64399e3ff.gz";
      r2 = "xj/9F/SHA256E-s5652451946--36fa948888093fe7d46d312bec3eb70a1aed52c448ee5a62191f38f23acb4e2d.gz/SHA256E-s5652451946--36fa948888093fe7d46d312bec3eb70a1aed52c448ee5a62191f38f23acb4e2d.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 07.09.2023\nDiscussed WES report for Block 1A\n-MW - there is an ARID1A mutation and CN of 1. \n-CS- TGFBR2 mutation - a FAK inhibitor? \n-HB- ZFHX3 linked to good immunotherapy responses - but just seen it's only 6% AF (although TP53 only 9% too) \n-ZFHX3 mutation as a protective biomarker for immune checkpoint blockade in non-small cell lung cancer \n-Report on ARID1A mutation; PARPi + IO (IMPARP-HRD trial) \n-Run this with Tony. \n\nClare's Meeting 23.03.2023\nDo WES on FFPE Block 1A (check HER2 status compared to IHC - HER2 2+ equivocal via IHC)";
      blood_recall_history = "07Feb2023: October 2022 sample requested from RCH by Monica ";
      urgency_details = "Patient relapse 6mo post diagnosis, we have not yet performed any analysis in that time (26Apr2023).";
      date_of_death = "11/2023";
      d_case_summary = "67 year old lady with FIGO Stage IIIC Cervical Adenocarcinoma (Gastric Type) who is due to start concurrent ChemoRT soon. At her RWH Gynae Onc MDM ON 18/10 it was recommended for consideration of referral to Stafford Fox.";
      date_consented = "2022-12-03";
      tumour_type = "Cervical adenocarcinoma";
      tumour_details = "Gastric-type endocervical adenocarcinoma";
      case_details = "68F\n\n2022-08: Dx Adenocarcinoma of the cervix, gastric type\nSurgery: Dialation and curretage (FFPE Block 1A)\nIHC positive: CK7, CK9, CK20 (patchy), CDX12, PAX8, p16 (patchy)\nIHC negative: ER, PR, Napsin A\np53: Null (mutation) staining \npMMR: Intact staining of MMR proteins\nHER2: Equivocal (Strong complete or basolateral staining in <30% cells, weak to moderate staining in >10% tumour cells)\n\n2022-10: Surgery: Laparotomy, RSO, bilateral sentinal LN biopsies\nNo IHC performed.\n\n2022-08: Chemotherapy: Cisplatin with concurrent radiation.\n\n2023-01: Blood B1 received.\n\n2023-02: Sections from FFPE Block 1A received.\n\n2023-04: Metastasis on small bowel and omentum. Adenocarcinoma consistent with cervical primary.\nSurgery: Laparotomy, bowel resection, omentectomy, ilesotomy formation. Fresh tissue S1 received; 10-20% purity in tiny areas.\nNo IHC performed.\n\n2023-05: Commenced chemotherapy: Carboplatin/Paclitaxel and pembrolizumab.\n\n2023-06: 1A and B1 DNA sent for WES\n1A slides sent for TSO500: TP53 variant detected";
      patient_information_complete = "Incomplete";
      case_urgent = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "07Feb2023: August 2022 sample requested from RCH by Monica \n17Feb2023: August 2022 sample received from RCH by Monica ";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01684";
  }
