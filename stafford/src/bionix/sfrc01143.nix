with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {samtools.sort = def samtools.sort {walltime = "48:00:00";};})
  ];
}; let
  samples = [
    {
      class = "normals";
      site = "B1";
      prefix = "grimmond/s3/batch2/SFRC01143/L1900322_S5";
      suffix = "_001";
      sha256-1 = "d3af9a45017567c9091b07a3b1092455a10e0ecd26d79a7d3957ec4448bdc9f0";
      sha256-2 = "a48ee2aa4f133fce5e7c01df00057e66ba0043c4258b6fd2a90dcf25190ce893";
    }
    {
      class = "tumours";
      site = "S1";
      prefix = "grimmond/s3/batch2/SFRC01143/L1900323_S6";
      suffix = "_001";
      sha256-1 = "02e0bae8ddbaa82c552cf3f543b792421e6c0c2bccef335c0371e6110838a268";
      sha256-2 = "3350b95cc6c79cecc3671726cb3a25209f4ca20eb86eff2528ae1ea137c1fc4c";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "9Q/Z1/SHA256E-s3480301798--68e07c32eb83961289f21b2ff4f4ae086f390f0708bdc054d031c45c434e1f25.gz/SHA256E-s3480301798--68e07c32eb83961289f21b2ff4f4ae086f390f0708bdc054d031c45c434e1f25.gz";
      r2 = "4f/kq/SHA256E-s3413133188--c50fa5b6f6eaf9b1ab3ef1fe287ae6d81b1d9dae4acfe1c9c44e4c5674b8849f.gz/SHA256E-s3413133188--c50fa5b6f6eaf9b1ab3ef1fe287ae6d81b1d9dae4acfe1c9c44e4c5674b8849f.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "jJ/08/SHA256E-s4748800747--028f344377443a49f37f3b03ba70683f3f56dd51cbb78cc0a36213481233fd81.gz/SHA256E-s4748800747--028f344377443a49f37f3b03ba70683f3f56dd51cbb78cc0a36213481233fd81.gz";
      r2 = "7Q/fw/SHA256E-s4797159692--c704f915b4bf3680f1a81c8d4db3260a3b3ed245093bde7f0806476d6d7b41c8.gz/SHA256E-s4797159692--c704f915b4bf3680f1a81c8d4db3260a3b3ed245093bde7f0806476d6d7b41c8.gz";
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
    name = "SFRC01143";
  }
