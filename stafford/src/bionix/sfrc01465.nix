with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {samtool.sort = def samtools.sort {walltime = "48:00:00";};})
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Kq/j6/SHA256E-s27833544118--a023f5c5de9b8b710a2532d69a2884f03c57d4e3250c08e7c441f99e9283132b.gz/SHA256E-s27833544118--a023f5c5de9b8b710a2532d69a2884f03c57d4e3250c08e7c441f99e9283132b.gz";
      r2 = "F1/0m/SHA256E-s29023367831--0f520f0026f06a50791ca2df6b2d3d8570edde3e6c0005be31bc462d3e39757b.gz/SHA256E-s29023367831--0f520f0026f06a50791ca2df6b2d3d8570edde3e6c0005be31bc462d3e39757b.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "27/2K/SHA256E-s20116697417--fffb55491172eebfa057986a8d925a55cd33f9db0d1517fcc83642ba74e913e2.gz/SHA256E-s20116697417--fffb55491172eebfa057986a8d925a55cd33f9db0d1517fcc83642ba74e913e2.gz";
      r2 = "f4/mP/SHA256E-s21717044947--c8ed8a9b3b50d6d3eb362b05327b585d1acef261ad663dce842eb2bbedcf7d4c.gz/SHA256E-s21717044947--c8ed8a9b3b50d6d3eb362b05327b585d1acef261ad663dce842eb2bbedcf7d4c.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "MJ/Q5/SHA256E-s125485457510--09921b7022cf2040c322764a08efb6b9f8d6d3d5f93e6c23229117f4e595dbe4.gz/SHA256E-s125485457510--09921b7022cf2040c322764a08efb6b9f8d6d3d5f93e6c23229117f4e595dbe4.gz";
      r2 = "zG/fW/SHA256E-s130403160359--aa3cd75d18edeb72b33333a257ba8d63633827418aa59b126448a78878b6f9ac.gz/SHA256E-s130403160359--aa3cd75d18edeb72b33333a257ba8d63633827418aa59b126448a78878b6f9ac.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "2q/vZ/SHA256E-s6365178478--19f9263857aab74a9eecbe1b6dafdfccc46d88cd35028b53273e88caf3e641f3.gz/SHA256E-s6365178478--19f9263857aab74a9eecbe1b6dafdfccc46d88cd35028b53273e88caf3e641f3.gz";
      r2 = "6K/9m/SHA256E-s6218759769--7211abf47c17acfdedfe3874459d30d323dacd6dc051bf189b8368a26ec299f9.gz/SHA256E-s6218759769--7211abf47c17acfdedfe3874459d30d323dacd6dc051bf189b8368a26ec299f9.gz";
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
    name = "SFRC01465";
  }
