with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1K";
      class = "tumours";
      pdx = false;
      r1 = "6K/1f/SHA256E-s4493224550--e941e9ebc2f11c5b4ccb0cd690b620f3dcdda00cb2eec5c8f5e6c5a467473a05.gz/SHA256E-s4493224550--e941e9ebc2f11c5b4ccb0cd690b620f3dcdda00cb2eec5c8f5e6c5a467473a05.gz";
      r2 = "XP/FG/SHA256E-s4488394177--8df91cdd64ac43e0ef06f1dac5deafac62e1fc2c9afecad2e57bb42ad196e20e.gz/SHA256E-s4488394177--8df91cdd64ac43e0ef06f1dac5deafac62e1fc2c9afecad2e57bb42ad196e20e.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "24/zf/SHA256E-s2383776013--ef628a1f70ef9841366b2c073348a0723658846ab3ca288e5e317d939478865a.gz/SHA256E-s2383776013--ef628a1f70ef9841366b2c073348a0723658846ab3ca288e5e317d939478865a.gz";
      r2 = "q8/51/SHA256E-s2406596293--3ecf4b83cca94b0be29cf64829251570e6407d729e2bb095e48bb332619778cd.gz/SHA256E-s2406596293--3ecf4b83cca94b0be29cf64829251570e6407d729e2bb095e48bb332619778cd.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 18.02.2021\nWES results discussed.\nHigh TMB (112) (uLMS usually low, less than 5) \nGermline APC - common in colorectal cancer  \nSomatic BRCA1 x 3 - benign, TP53 LOH 90%, EPHB2 81% but unknown pathogenic, PRMT8 (predicted pathogenic), DAXX, no RB  \n\n09.11.2020 Meeting Clare and Ratana\nS1 reviewed and Gayanie questioned if correct sample (did not look like uLMS). \nNo other tissue processing on that day. \nAnne Hamilton wants BRCA test. \nAsk Trisha about this sample! Path report? Track down where the biopsy occurred. \nTell Gayanie - Unlikely from any other patient. Post multiple lines of treatment. \nGayanie's reply: This piece of tissue is definitely skin/squamous epithelium and associated stroma with freezing artifact. There is no leiomyosarcoma or any other tumour in this biopsy. The other sections of patient's tumour in the case center show good/obvious leiomyosarcoma. \n \nAsk Clare: maybe we extract DNA and do WES? On 1K and 1F blocks ";
      date_consented = "2019-02-26";
      tumour_type = "uLMS";
      tumour_details = "Uterine Leiomyosarcoma";
      case_details = "Progressive uterine leiomyosarcoma FIGO Stage IVB at diagnosis, first diagnosed on 18 May 2017\n\nTAHBSO on May 2017, sub-optimal with tumour present at margins\nCommenced on anastrozole on May 2017\nPelvic radiotherapy (QSx2) sep 2018-Oct 2018";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "30JAN2023: 2017 block received from RWH by Briony\n\n24/10/2022: 2017 block requested from RWH pathology by Devindee for uLMS Procan study.\n--------\nNeed to get BRCA testing (CS to talk to Stephen Fox about cost). For recall tissue and do quality check\n\nRoyal Women's Pathology\nLab no: 17974289FSG - Block 1\nCollected: 18-May-17\nRequested 15-Mar-19 (Emily)\nReceived slides (17974289 block 1F) 18-Apr-19\n\n2017 uLMS block requested (2nd block as 1st bock failed QC) via email from RWH on 23/06/2020 by Josh for uLMS project\n\n2017 uLMS Block 1K received 07/08/2020 by Josh";
      histology_summary = "IHC: uterus, right tube + ovary and cervix (block 1)\n- PR: strongly positive (3+) in ~80% of tumour nuclei\n- ER: moderate positivity (2+) in ~60% of tumour nuclei\n- desmin, actin positive\n- ? CD31 positive (see histology report page 3)";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01141";
  }
