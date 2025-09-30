with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "FG/z0/SHA256E-s48681424153--544b8d966457f89814da55a2bafb198c0ba1d60240d32f2c8170011ab223eff3.gz/SHA256E-s48681424153--544b8d966457f89814da55a2bafb198c0ba1d60240d32f2c8170011ab223eff3.gz";
      r2 = "gq/Xf/SHA256E-s50613304156--92e0abbf3d838553e34864501b2fe8a9592f5a863b7d7c5b0c210b6b925fd80f.gz/SHA256E-s50613304156--92e0abbf3d838553e34864501b2fe8a9592f5a863b7d7c5b0c210b6b925fd80f.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "Q0/GM/SHA256E-s96300537331--9dd3809ef10a140876acd6700251b3b153de4d748f5a728a931befad1f10d1e1.gz/SHA256E-s96300537331--9dd3809ef10a140876acd6700251b3b153de4d748f5a728a931befad1f10d1e1.gz";
      r2 = "9W/v1/SHA256E-s101164099000--1cab06bec4a6b95ff230327b4fb8b983edc731c920364e5066fd5faa8be3abb8.gz/SHA256E-s101164099000--1cab06bec4a6b95ff230327b4fb8b983edc731c920364e5066fd5faa8be3abb8.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "HGSOC";
      meeting_discussions_follow_up = "BROCA meeting with Clare 04.11.2021\nSens S1 for BROCA\n\nRC Meeting 16.09.2021\nDiscussed WGS report.\nPatient screened for Ignite trial. Cyclin E IHC 2-3+ in 70% tumour cells. \nCCNE1 not amplified \nSFRC analysis: BRCA1 didn't come through (is a rearrangement) \nMYC amplified, but only 5 copies. Not to be reported (is not actionable). \nMatt thinks pattern of LOH suggests a BRCA1 effect somewhere in tumour history, but not HR deficient  \n\n\nClare's meeting 28.07.2021\nPatient consented to Ignite yesterday. H Score that Ignite uses? \n\n26.07.2021\nS1 FFPE block submitted for Cyclin E IHC, urgent. Still need WGS for treatment direction later.\n\nClare's meeting 2021.07.01\nPlan: Ask Gayanie to review better OCT sections (not folded) - if nothing better, get another section cut and H&E for Gayanie review.  Then microdissection for WGS ";
      date_of_death = "11/2021";
      d_case_summary = "HGSOC (PPC).\nFirst referral, no previous surgery. Post 2 lines of chemo. For WGS.";
      date_consented = "2021-06-15";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC / primary peritoneal carcinoma (PPC)";
      case_details = "Female in her 60s. \nDiagnosed with Primary Peritoneal Carcinoma 21 Sept 2020 \nLeft pleural effusion and pulmonary embolism 15 Oct 2020 \nLap biopsy on the right side of the abdomen - consistent with HGS - PPC Treated with carboplatin/paclitaxel, \nPD in peritoneum and omentum Commenced caelyx \nradical debulking procedure on 17/6/2021 HGS carcinoma involving most surfaces - Site of primary tumour favoured to be left tube/ovary \n\n Immunostaining: PAX8, WT1, ER positive\nnull type mutations staining for P53";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01419";
  }
