with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Z3/8K/SHA256E-s3626823728--c99794180fde496fa94c0716cbdabb06ec52d6c2711d852da093f18c820b367a.gz/SHA256E-s3626823728--c99794180fde496fa94c0716cbdabb06ec52d6c2711d852da093f18c820b367a.gz";
      r2 = "52/Mg/SHA256E-s3605876338--289d9ab0eccbc7c9c5120bb294d5ce45c873941ead9cc50cfbd5bc9350cfeea0.gz/SHA256E-s3605876338--289d9ab0eccbc7c9c5120bb294d5ce45c873941ead9cc50cfbd5bc9350cfeea0.gz";
    }
    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "V5/XK/SHA256E-s6384853550--d44bb0dd1af4f544622ccdf7b351e1a83d2b09065a757c92be63249ca8caf62d.gz/SHA256E-s6384853550--d44bb0dd1af4f544622ccdf7b351e1a83d2b09065a757c92be63249ca8caf62d.gz";
      r2 = "Wk/5g/SHA256E-s6615242897--30fe8a161e80f6cf8daef1da085eb18a1b2b522b2123a520e0d6e00a06ab1411.gz/SHA256E-s6615242897--30fe8a161e80f6cf8daef1da085eb18a1b2b522b2123a520e0d6e00a06ab1411.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare's Meeting 03.11.2022\nB7H4 has 5% positivity - can still screen for AZD8205.\n\nClare's Meeting 06.10.2022\nDo B7H4 IHC on block 1G\n\nBROCA meeting with Clare 15.10.2021\nOrganise BROCA on same sample as WES (1G)\n\n04.02.2021 RC meeting\nWES results discussed (in Analysis DNA instrument)\n\n28.01.2021\nGayanie scored Cyclin E - strong positivity in 90% tumour nuclei.\n\n14.01.2021 - Ratana submitted block for Cyclin E IHC at Peter Mac\n\nEmail from Clare 25.11.2020\nWarren to request block. Get Cyclin E IHC\n\nMeeting notes 10.09.2020\nGermline DNA done on new blood. Have tissue DNA from PeterMac lab. Kristy to organise WES with Gisela, Angela and Victoria.";
      d_case_summary = "81 yo woman, diagnosed with HGSOC June 2019, treated with 3 cycles chemo NACT prior to IDB.\nSomatic BRCA1/2 testing was WT. CA125 dropped rapidly.\nNot suitable for SOLACE2. Small liver mets. REcommenced chemotherapy with 2nd line carbo caelyx. Ca125 dropped again rapidly.\nFor WES with DNA from Fox lab - but from IDB. ? signature 3 or any other HRD genes? for PARPi access urgently. ie 8-10 weeks. To have C5 late Sept.";
      date_consented = "2020-09-03";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC";
      case_details = "81F\n\n2019-06: Dx Stage 3C ovarian carcinoma\n\n2019-08: NACT: 3x Cycles carboplatin and paclitaxel, Chemotherapy regression score: 1.\nSurgery: Debulking, TAH/BSO. Tissue fixed and blocked (Block 1G)\nIHC Positive: ER (3+, 80%\nIHC Negative: PR\n\nSomatic BRCA1 testing (Peter Mac): No pathogenic variants detected.\n\n2019-10: Completed 3x cycles of carboplatin and paclitaxel\n\n2020-09: Blood B1 received. B1 and 1G DNA sent for WES:\n-Somatic TP53\n-KRAS amplification: 17 copies\n-Cyclin E amplification: 6 copies\n\n2021-01: FFPE Block 1G (from TAH/BSO, 2019) received.\n\nCyclin E IHC performed: Strong positivity in 90% tumour nuclei.\n\n2021-03: 1G DNA sent for methylation analysis: BRCA1 and RAD51C not methylated.\n\n2021-04: Metastases in the liver\n\n2021-06: Commenced Adavosertib\n\n2022-06: 1G DNA sent for BROCA\n\n2022-10: B7H4 IHC performed: Low expression, about 5%";
      brca_report = "SFRC01328_BRCAReport_24Sep2019_Redacted.pdf";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2019 HGSOC tissue requested from Melbourne Pathology on 26/11/2020 by Josh\nReceived 11/1/21 by Warren";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01328";
    capture = CREv2;
  }
