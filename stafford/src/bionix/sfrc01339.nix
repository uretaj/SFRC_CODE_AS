with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        facets.reporting.preprocess = def facets.reporting.preprocess {
          preSeg = 20;
          segCrit = 120;
          widPerHet = 200;
        };
      })
  ];
}; let
  samples = [
    {
      site = "1.3";
      class = "tumours";
      pdx = false;
      r1 = "Qx/vV/SHA256E-s5379781512--c5e41e1adc7afaf9be63272045151f2104ef8982a3bf37a15bf4c83636f5d941.gz/SHA256E-s5379781512--c5e41e1adc7afaf9be63272045151f2104ef8982a3bf37a15bf4c83636f5d941.gz";
      r2 = "Zz/fP/SHA256E-s5359406355--b8f07352e9faa5204920229eac134dc4109d4d7df61ac417bd3523fc1592d301.gz/SHA256E-s5359406355--b8f07352e9faa5204920229eac134dc4109d4d7df61ac417bd3523fc1592d301.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "V7/p3/SHA256E-s2483554423--7e9146d9a4f0c1a0c313108c191172f6f64a9338954c0ae36f51e76346c55ac6.gz/SHA256E-s2483554423--7e9146d9a4f0c1a0c313108c191172f6f64a9338954c0ae36f51e76346c55ac6.gz";
      r2 = "mJ/59/SHA256E-s2467142772--8bace1a7506dd50b0a427fb6c41de67c35d6f68b2896bc38e552e2ce8ccd1c7e.gz/SHA256E-s2467142772--8bace1a7506dd50b0a427fb6c41de67c35d6f68b2896bc38e552e2ce8ccd1c7e.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 2021.04.29\nDiscussed WES report again.\nrerun with small change in copy number parameters.  No longer genome doubling. \nCopy number calls agree with mutation calls. \nSTK11 mutations previously marked as deleted, no longer deleted.  LOH instead. \nPurity readjusted to 0.7 \nGNAS - reportable, but not actionable. \nMUC16 = CA125. MUC16 is deleted, so may affect CA125 readings (if done for patient). \nPatient has relapsed - clinician keen to see results. \n\nRC Meeting 2021.03.04\nDiscussed WES report (In Analysis DNA). Need updated report.\n\n2021.01.28\nHave block 1.3. Asked Gayanie if this mucinous was GAS (is not). Dissect glands to do WES.";
      d_case_summary = "recurrent cervical mucinous adenocarcinoma";
      tumour_type = "Cervical other";
      tumour_details = "mucinous adenocarcinoma of cervix";
      case_details = "45-yr old female with recurrent adeno-mucinous ca cervix; for WGS. \nHas tissue at Petermac from recent de-bulking all FFPE - for WES";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2020 Adenocarcinoma block routinely recalled via email from PMCC on 22/10/2020 by Josh\n2020 Adenocarcinoma block received by Warren 11/1/21";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01339";
    capture = CREv2;
  }
