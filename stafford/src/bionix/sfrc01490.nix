with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "K4/F0/SHA256E-s51534739011--26032ce8ed97bdbe2baa552941d154f9e632e21fef1a6436cd1d3856b6b4b082.gz/SHA256E-s51534739011--26032ce8ed97bdbe2baa552941d154f9e632e21fef1a6436cd1d3856b6b4b082.gz";
      r2 = "VK/1K/SHA256E-s54108210807--ad60606de78920707b9bd1488775d22a2d90b5850db9370fd6adf7bbf79aedfb.gz/SHA256E-s54108210807--ad60606de78920707b9bd1488775d22a2d90b5850db9370fd6adf7bbf79aedfb.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "q6/W0/SHA256E-s98386678861--94d8b7a50431edae141ab94afe7ba0070d2cc112604c0168f7d406d8936c1857.gz/SHA256E-s98386678861--94d8b7a50431edae141ab94afe7ba0070d2cc112604c0168f7d406d8936c1857.gz";
      r2 = "9M/FM/SHA256E-s104560598280--cbc63e67c60b01b2287b4216be3a1c3384b2364a075b1bfbc520d914f322ff56.gz/SHA256E-s104560598280--cbc63e67c60b01b2287b4216be3a1c3384b2364a075b1bfbc520d914f322ff56.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "78/Wp/SHA256E-s6572465391--d41cf68603a0671dc33b0fc22d202c2d127ad2970afbc03436963170c58dfa29.gz/SHA256E-s6572465391--d41cf68603a0671dc33b0fc22d202c2d127ad2970afbc03436963170c58dfa29.gz";
      r2 = "X5/kG/SHA256E-s6528611574--110a7d4d16bbb0d810614597f1f96c9c26e9732ba9082e5cfc2ba95d179f5c2f.gz/SHA256E-s6528611574--110a7d4d16bbb0d810614597f1f96c9c26e9732ba9082e5cfc2ba95d179f5c2f.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "HGSOC";
      meeting_discussions_follow_up = "RC Meeting 31.03.2022\nDiscussed WGS report.\nTRIALS (from Damien: \nBRCA1 - PARPI trials \nTP53 - AMG650 \nNF1 - SHP2 inhibitor \n\nDiscussion: \nPotential model for Liz, but has both HRD and NF1 loss so maybe not? \nCould be a d11q case, but not sure. \nNF1 breakpoints x 4 - is a big gene. May be from the HRD-ness of rearranged genome. \nIs on PARPi maintenance now. \nPhospho-IHC could be done for the ERBB4 \n\nBroca meeting Clare/Amandine 04.03.2022\nSend S1 for BROCA. Kas to confirm that this case is BRCA1 delta 11q (written in Clare's clinical note but no record in Redcap)\nUpdate from Kas: It has an exon 10 mutation, but I haven't confirmed D11q expression as I need a PDX to do that.\nSo I consider this one to be part of the D11q project/cohort, but not actually confirmed to have high D11q expression.\n\nMeeting with Clare 24.02.2022\nFFPE block 1A and no name, hold on until we get the WGS back. Mandy to get EPIC note from Tuesday clinic meeting with Clare. Has finished chemo, starting PARPi now/soon. \n\nMeeting with Clare 16.12.2021\nS1: send for WGS";
      myriad_report = "SFRC01490_MyriadResult_02Dec2022_Redacted.pdf";
      d_case_summary = "HGSFTC \ngBRCA1/2 WT - Ovarian panel WT. Somatic panel Pending";
      date_consented = "2021-12-03";
      tumour_type = "HGS Fallopian tube";
      tumour_details = "HGS Fallopian tube";
      case_details = "female  71 years old \n\n2021-07\nDiagnosis, biopsy (FFPE Block 1A received)\nER 98%, PR 5%, \nIHC+ P53, PAX8\nPMS2, MLH1, MSH2 and MSH6 retained \n\n2021.08\nStarted carboplatin/paclitxel aiming for C6 then go on olaparib\nAt C4, stopped Paclitaxel. \nFinish C6 in January 2022.\n\n2021.09\nDebulking surgery (FFPE block received, no name)\nFIGO stage III\nIHC positive: P53, WT1, vimentin\nER 80%, PR 5%\n\nBRCA testing \nBRCA 1, 80% VAF, exon 11, NM-007294.3, pathogenic \nBRCA 2, 40% VAF, exon 11, NM-000059.3, uncertain\n\nFCC panel \nNo pathogenic variants detected.\n\n\n2021.12\nFresh frozen tissue received from Sept surgery. Sent for WGS, blood B1 received.\n\n\n";
      pre_analysis_mutations = "BRCA testing\nBRCA 1, 80% VAF, exon 11, NM-007294.3, pathogenic\nBRCA 2, 40% VAF, exon 11, NM-000059.3, uncertain";
      brca_report = "SFRC01490_BRCA_17Nov2021_Redacted.pdf";
      myriad_submission = "Yes";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "Myriad HRD Positive (BRCA1) score 65";
      fcc_report = "SFRC01490_FCCPanel_27Oct2021_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "Jul 2021 slides received by Devindee 22/12/2021.\n\nSept 2021 slides received by Devindee 22/12/2021. ";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01490";
  }
