with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1C";
      class = "tumours";
      pdx = false;
      r1 = "1q/51/SHA256E-s6904615304--d04654cefaac803bf03b9fda31396aa7dfab9dfec7318f45a9270dd4ca45670e.gz/SHA256E-s6904615304--d04654cefaac803bf03b9fda31396aa7dfab9dfec7318f45a9270dd4ca45670e.gz";
      r2 = "J1/8j/SHA256E-s7081616707--7d9d0a0f1145d1715f16f7475a4ad3c0352e0a78bef858cb221b604ec07a04ee.gz/SHA256E-s7081616707--7d9d0a0f1145d1715f16f7475a4ad3c0352e0a78bef858cb221b604ec07a04ee.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "38/5f/SHA256E-s3811274960--51ddfbdba0673b6804c44619ec1b079ae1c7af52f8240a7e65b931ce9784c290.gz/SHA256E-s3811274960--51ddfbdba0673b6804c44619ec1b079ae1c7af52f8240a7e65b931ce9784c290.gz";
      r2 = "KV/wk/SHA256E-s3939979432--ba8f06128fa3810cdcdff2e0197b571d1dd136a50ac2c033aae9c815a28ced0a.gz/SHA256E-s3939979432--ba8f06128fa3810cdcdff2e0197b571d1dd136a50ac2c033aae9c815a28ced0a.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "gynae cancer other";
      meeting_discussions_follow_up = "Meeting notes 24.10.2019\nOrganise WES on block 1C";
      date_of_death = "05/2019";
      d_case_summary = "Large cell neuroendocrine tumour - L) ovary\nInitially presented to RWH with abdominal pain and a pelvic mass for Ix\nResection on 4/7/18: Laparotomy/LSO/omental biopsy   Hyst/D C\n- Operative findings: copious blood stained ascites, intraperitoneal ruptured necrotic tissue normal and\nleft behind; no disease outside pelvis\n- Poorly differentiated high grade large cell neuroendocrine tumour; Ki67 >90%,\nsynaptophysin/chromogranin  ve on IHC\n- ER/PR -ve, TTF1/P53/calretinin/ -ve, WT1/PAX8 patchy positive\n- Post operatively - complicated by R pleural effusion\n- PET 13/7/18: macroscopic residual disease limited to pelvis\nCommenced treatment as per limited stage small cell neuroendocrine tumour with Carboplatin/Etoposide\n(C1 17/7/18) - 2 cycles followed by concurrent cisplatin/radiotherapy 29/8/18-9/10/18\n- Recommenced C3   4 Carbo/Etop post CCRT, completed 23/11/18\nRecurrent R pleural effusion\n- X 2 pleural taps during admissions: cytology negative\nFDG PET 4/2/19 - recurrent peritoneal disease\nGatate PET 15/2/19 - no uptake\nAkeso C1D1 5/3/19";
      date_consented = "2019-02-27";
      tumour_type = "Gynae NET";
      tumour_details = "large cell neuroendocrine tumour of ovary";
      case_details = "High grade large cell neuroendocrine tumour of L ovary, diagnosed 4th July 2018\n\nSurgery diagnosing cancer in July 4th 2018\nCarboplatin/Etoposide 2 cycles (3 weekly regimen) July 2018- August 2018\nConcurrent cisplatin radiotherapy (ERBT 54Gy, 5 fractions per week over 6 weeks) Aug 2018-Oct 2018\nCarboplatin and etoposide October 2018-Nov 2018\nCommeneed Akeso trial March 2019, taken off Akeso study March 2019\n";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "for urgent WGS\nprogressing on immunotherapy trial\n\nLeft Salpingo-Oopherectomy- RW/RCH Pathology\nLab ID: 18975868FSG\nCollected: 04-Jul-2018\nRequested 2-Sep-19 EO\nReceived 24-Sep-19 EO\n\nInitial bloods taken 27-Feb-19\nFresh tissue (biopsy) taken 27-Feb-19";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      histology_summary = "LSO/omental biopsy + Hysteroscopy D&C\n- Ki67>90%\n- Synaptophysin, chromogranin positive\n- WT1, PAX8 patchy positive\n- SSTR2, TTF1, p53, calretinin negative\n- ER/PR negative\n";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    predictNeoantigens = false;
    name = "SFRC01143";
    capture = CREv2;
  }
