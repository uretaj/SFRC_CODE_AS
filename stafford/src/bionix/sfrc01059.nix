with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Wq/71/SHA256E-s47030736911--cf99f04d05117a6246b7af2c987f2ece835c5e3871b7db1cafac818f637f64a4.gz/SHA256E-s47030736911--cf99f04d05117a6246b7af2c987f2ece835c5e3871b7db1cafac818f637f64a4.gz";
      r2 = "13/F2/SHA256E-s49746221494--8cfa3cf1eff071abfbeafd064c935c13e1fcb16c00af93f65ed99fb882feee41.gz/SHA256E-s49746221494--8cfa3cf1eff071abfbeafd064c935c13e1fcb16c00af93f65ed99fb882feee41.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "g0/v5/SHA256E-s5195851283--c40e6f184d0e71efd13e41fbba64aabf0d4cebf3e420b49c50547b2df89e18ce.gz/SHA256E-s5195851283--c40e6f184d0e71efd13e41fbba64aabf0d4cebf3e420b49c50547b2df89e18ce.gz";
      r2 = "pj/6w/SHA256E-s5294307486--e1af7bd4fe04756bace68f0a5219fa9c519a84158892ddf51377209b73b46853.gz/SHA256E-s5294307486--e1af7bd4fe04756bace68f0a5219fa9c519a84158892ddf51377209b73b46853.gz";
    }
    {
      site = "S1";
      class = "tumours";
      r1 = "q2/k9/SHA256E-s88790851273--2dbd1346595a86e3bcb4b755ee002aacb2c5a9089d5b399a0ed52ff95c77bf27.gz";
      r2 = "1q/Gf/SHA256E-s93160737192--7add05ede12f779f66fdf7ebaa117340b849267028abd21a3188606cc570e01e.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "enrolled in iPREDICT";
      genomes100_tumour_types = "cervical";
      date_of_death = "2/2018";
      date_consented = "2017-10-31";
      tumour_type = "Cervical adenocarcinoma";
      tumour_details = "Adenocarcinoma cervix";
      case_details = "36 yo adeno carcinoma of the cervix, never responder, Diagnosed Aug 2017, died Feb 2018.\nWGS showed cMYC integration into HPV, p53 mutation, loss of HLA";
      pre_analysis_mutations = "STK11 and SETD2 (iPREDICT)";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "Cervical Biopsy - Monash Health Path\nAccession no: 170016391\nCollected: 9-Aug-17\nRecalled 21-Oct-19\nReceived whole specimen (block A) 25-Oct-19";
      mp_subgroup_sfrcp4_new_id = "Rapid Progressor";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01059";
    predictNeoantigens = true;
  }
