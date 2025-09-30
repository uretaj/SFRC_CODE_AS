with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "qf/2W/SHA256E-s17087951782--f116e99c38674709e102b84c8a1e39d45d03149197cbf7759b1143813b384939.gz/SHA256E-s17087951782--f116e99c38674709e102b84c8a1e39d45d03149197cbf7759b1143813b384939.gz";
      r2 = "5m/fF/SHA256E-s17659910767--bc3ee36a063ed66b1071f60ca27d129ffc990899343519d9ac4aa65fd3a58a75.gz/SHA256E-s17659910767--bc3ee36a063ed66b1071f60ca27d129ffc990899343519d9ac4aa65fd3a58a75.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "fj/M4/SHA256E-s6116472134--cc53a0d25d39166087458ce89209ed1c90d7b9b2158e300adc8eee5bd0ef540f.gz/SHA256E-s6116472134--cc53a0d25d39166087458ce89209ed1c90d7b9b2158e300adc8eee5bd0ef540f.gz";
      r2 = "3p/qk/SHA256E-s6470945246--edb00611bfb0e35db196d396546acff026f33b8fa11ebf4e0753d8a36fb86b56.gz/SHA256E-s6470945246--edb00611bfb0e35db196d396546acff026f33b8fa11ebf4e0753d8a36fb86b56.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "BROCA meeting 21.01.2022\norganise Broca on the same sample as WES\n\nClare's meeting 2021.09.10\nGayanie's reviewed block from initial surgery (20979803) and confirmed diagnosis of HGSEC. Organise WES\n\nClare's meeting 2021.08.12\nWarren to recall a block from earlier surgery, get Gayanie to identified if really is HGSEC";
      d_case_summary = "Metastatic endometrial serous adenocarcinoma dx Dec 2020\nER/PR pos, pMMR, HER2 neg\n21/4/2021 Clinical: FIGO Stage IVB (cT4, cM1)\n\nTreatment summary:\nC1 21/1/2021: commenced carboplatin AUC5/paclitaxel\nFinal C6 27/5/2021 carboplatin paclitaxel";
      date_consented = "2021-07-13";
      tumour_type = "HGSEC";
      tumour_details = "HGSEC (query just HGEC?)";
      case_details = "Patient clinical detail and history: \nMetastatic endometrial serous adenocarcinoma dx Dec 2020 \nER/PR, P16, PAX8, vimentin, MSH2, MSH6, MLH1 and PMS2 positive \nP53 (null phenotype), Naspin, pMMR, HER2 neg \n21/4/2021 Clinical: FIGO Stage IVB (cT4, cM1) \n28/07/2021: surgery ( tissue received) \nTreatment summary: \nC1 21/1/2021: commenced carboplatin AUC5/paclitaxel \nFinal C6 27/5/2021 carboplatin paclitaxel \nIf tumour purity good for WGS and PDX \nFCC for Ovarian Panel: No pathogenic variants detected. ";
      brca_report = "SFRC01443_OvarianPanel_13Jul21_Redacted.pdf";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "2020 block requested from RWH by Warren 15/08/21, received 31/8/21";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01434";
    capture = CREv2;
  }
