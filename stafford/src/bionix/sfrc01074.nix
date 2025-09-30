with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1.13";
      class = "tumours";
      pdx = false;
      r1 = "m8/wk/SHA256E-s13396033003--0de923469143c385166f2a0a9eff31820a5bd6944ba5bd11bfd5bbd1f7692e7d.gz/SHA256E-s13396033003--0de923469143c385166f2a0a9eff31820a5bd6944ba5bd11bfd5bbd1f7692e7d.gz";
      r2 = "VM/g3/SHA256E-s13754923234--4e122d2f7113b257014697d18d60a47cd9ae796343ffbd7bf03d54d36ecd20ba.gz/SHA256E-s13754923234--4e122d2f7113b257014697d18d60a47cd9ae796343ffbd7bf03d54d36ecd20ba.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "qQ/KF/SHA256E-s4319889316--22b75c3a6591911c747c170e3c0af2d4e3c784e60b15bde30c51bad2ed16177c.gz/SHA256E-s4319889316--22b75c3a6591911c747c170e3c0af2d4e3c784e60b15bde30c51bad2ed16177c.gz";
      r2 = "GV/3q/SHA256E-s4605787108--51fa935dccd28b0833fe9dd72a5f2bc569bef2ae1907a679b1b68b9612883ec0.gz/SHA256E-s4605787108--51fa935dccd28b0833fe9dd72a5f2bc569bef2ae1907a679b1b68b9612883ec0.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare's meeting 2021.08.26\nSFRC01074_1.13: Send for BROCA and WES \n\n16.03.2020 Redcap meeting Clare/Amandine\nGet Briony to chase up path report with Clare, recall an original block and send for Broca.\nUpdate: can't find a block and there is no PDX, so couldn't send anything for BROCA Aug 2020.";
      myriad_report = "SFRC01074_MyriadResult_5Jan22_Redacted.pdf";
      date_consented = "2018-03-29";
      tumour_type = "HGS Fallopian tube";
      tumour_details = "HGS FT in 2010, 6cm confined to FT, BRIP1 mutant; benign parathyroid lesions";
      case_details = "June-2010: Right fallopian tube serous cancer (58 years old), omentectomy  and salpingo-\t\t\toophorectomy (surgery) (FFPE Block review here) \n\nJuly-Nov 2010:Carboplatin/Taxol \n\nJune 2015: Parathyroid adenoma (surgery) \n\nDec 2015:Discuss to get FCC to know BRCA status:  \nResults: BRIP1 pathogenic , RAD51 unknown pathogenicity \n\n ";
      pre_analysis_mutations = "BRIP1 mutant; super responder (8 years no recurrence for high grade)\n\n-BRIP1 (NM_032043.2) pathogenic\n\n- RAD51C (NM_058216.2) unknown pathogenicity ";
      myriad_submission = "Yes";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "Myriad HRD Positive (BRCA neg) score 66";
      fcc_report = "SFRC01074_FCC_panel_05092017_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2010 Tissue containing serous adenocarcinoma requested from Melbourne Health via email on 16/03/2020 by Josh\n\n2010 Tissue containing serous adenocarcinoma requested from Melbourne Pathology via fax on 23/03/2020 by Josh (unclear path lab)\n\n2010 block requested from PMCC by Warren on 16/7/21, received 4/8/21";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01074";
  }
