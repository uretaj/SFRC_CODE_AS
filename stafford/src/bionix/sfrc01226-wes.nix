with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "4B";
      class = "tumours";
      pdx = false;
      r1 = "4M/mQ/SHA256E-s5594082751--e02c602d7b4b88280a951929f75068b484224d94e6d04b69aa0185c30cfcf743.gz/SHA256E-s5594082751--e02c602d7b4b88280a951929f75068b484224d94e6d04b69aa0185c30cfcf743.gz";
      r2 = "V4/JQ/SHA256E-s5766827983--c37be3f6d47427bd0503dd84862325c1ef884621418746d25839a30cec53feca.gz/SHA256E-s5766827983--c37be3f6d47427bd0503dd84862325c1ef884621418746d25839a30cec53feca.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "5F/Gm/SHA256E-s4241393759--cfa53cd6bf87344408f7e650ef9de98a1fb219504abf76c9ea4a5a48afb766d2.gz/SHA256E-s4241393759--cfa53cd6bf87344408f7e650ef9de98a1fb219504abf76c9ea4a5a48afb766d2.gz";
      r2 = "KP/Kk/SHA256E-s4364738081--827f898a1af685d7d0515182fda61a2b488d83d32e6a6ac1c3bd46b75849efd8.gz/SHA256E-s4364738081--827f898a1af685d7d0515182fda61a2b488d83d32e6a6ac1c3bd46b75849efd8.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "HGSEC";
      meeting_discussions_follow_up = "RC Meeting 15.09.2022\nDiscussed results - BROCA, WES and WGS.\nNo TP53 by BROCA. Check transcript.\nHER2 amplification is low, but drug target? \nPDX has never grown.\nRatana to check cases that have all modalities (BROCA/WES/WGS).\nAlso looking for mechanisms of resistance to the lenvatinib (Ratana to check HGSEC cases who have had len/pembro)\n\nBroca meeting 2021.10.07\nOrganise Broca on both FFPE block 4B and fresh tissue S3\n\nMeeting notes 18.06.2020\nTwo PDX's have come up on baseline tumour measuring, including recent ascites sample. May just be Matrigel . Will wait to see if those PDX's progress before doing tumour cell enrichment.  \n\nRC Meeting notes 11.06.2020\nBoth EP300 and NF1 on haplo-insufficiency involved in DNA repair and replication \nSignature 3 is 3rd (774 mutations) at 13% \nPDX are growing for S4 and S5 \n\nMeeting notes 12.12.2019\nNo TP53 mutation find with WES on FFPE (p53 is negative on pathology report) - Clare to check why she's HGSEC \n\nMeeting notes 2019.12.05\nCurrently on lenvatinib and pembro, go ahead with WGS of S3 \n\n2019.10.17\nBlock received, organise WES asap \n\nWhatsApp text on 2019.10.08\nOrganise WES on archival tissue, archival tissue to be retrieved.\n";
      date_of_death = "07/2020";
      date_consented = "2019-10-08";
      tumour_type = "HGSEC";
      tumour_details = "HGSEC";
      case_details = "Dx with HGSEC with intraperitoneal spread on 11/2/2015 from TAHBSO\n\nReceived 6x carboplatin and paclitaxel in 2015, with good CA125 response. Remained in remission until 10/2018.\n\nReeieved another 6x carboplatin and taxotere in 11/2018, again with good response.\n\nCT Scan in 7/2019 showed multifocal intraperitoneal recurrence. Started on Provera.\n\nCTCAP on 2/102019 showed increased ascites and peritoneal metastatic nodularity.\n\nMerck 775 study, receiving lenvatinib/ pembrolizumab from 29/10/2019 until March 2020. Dx of grade 3 adrenal/pituitary insufficiency, requiring hydrocortisone, now on prednisolone.\nfor WES\n\nWGS clinical notes\n47 yo HGSOC consented at the RWH";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "Hysterectomy - Melbourne/Epworth Pathology\nCollected:11-Feb-15\nAccession no: 15T20205\nRecalled: 9-Oct-19 EO\nReceived: 15-Oct-19, block 4B ";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    predictNeoantigens = false;
    name = "SFRC01226";
    capture = CREv2;
  }
