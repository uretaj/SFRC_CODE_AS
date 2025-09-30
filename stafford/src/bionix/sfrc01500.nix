with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "43/39/SHA256E-s37704309879--6444f4a0c348d8266883bccc50126587020816ebf15a243d25a26e931dc8f8c5.gz/SHA256E-s37704309879--6444f4a0c348d8266883bccc50126587020816ebf15a243d25a26e931dc8f8c5.gz";
      r2 = "4Q/Vm/SHA256E-s39641204787--e04cab16a7e02f7617101df366ffb80df1f8e04b7215ec68cb842e7f08470e3e.gz/SHA256E-s39641204787--e04cab16a7e02f7617101df366ffb80df1f8e04b7215ec68cb842e7f08470e3e.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "Z3/0w/SHA256E-s93580543771--57655cc9a247385ea5cb9e8f6595ccb7dc74da6374af27f5c2c4c777bc7eea03.gz/SHA256E-s93580543771--57655cc9a247385ea5cb9e8f6595ccb7dc74da6374af27f5c2c4c777bc7eea03.gz";
      r2 = "XF/pX/SHA256E-s98534271629--839eac2409f1710a0bf83ca2d5d68600da99aaca91e7477e3cc4f8f8af3193ec.gz/SHA256E-s98534271629--839eac2409f1710a0bf83ca2d5d68600da99aaca91e7477e3cc4f8f8af3193ec.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "1F/27/SHA256E-s8527632735--e38c776ae7fb79ae8bcbd7dbe9893e88dd185bd7dc17ae9ad15321fbc89150a2.gz/SHA256E-s8527632735--e38c776ae7fb79ae8bcbd7dbe9893e88dd185bd7dc17ae9ad15321fbc89150a2.gz";
      r2 = "4w/g1/SHA256E-s9390374554--25ae799020ed071bb243293ef1fa1ecb62ce8067c5465ca366b8c71357c1c548.gz/SHA256E-s9390374554--25ae799020ed071bb243293ef1fa1ecb62ce8067c5465ca366b8c71357c1c548.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "CA0151";
      genomes100_tumour_types = "uLMS";
      meeting_discussions_follow_up = "Clare's Meeting 09.03.2023\nDiscussed Fresh Tissue S2 - S8 FFPE blocks:\n-WES on all tissue in lab - From snap frozen fresh tissue rather than FFPE. \n-Want to do WGS on some samples, but will be later. WES first. All will undergo proteomics via ProCan\n-Ask Monica to get all remaining 16 FFPE blocks from warm autopsy - all will be for WES. \n-Still need to discuss which samples for mice. Will be a big sample/project discussion. \n\nRC Meeting 14.04.2022\nDiscussed WGS report.\nDiscussion: Matt states that the CIRCOS plot looks very HRD however the HRDetect and Chord results say HR proficient. Group discussed the reliability of these tests in the setting of uLMS (particularly given patient response in SFRC01227, who was also Sig 3 dominant, but Chord proficient) \n\nClare needs to find out how well patient is to see if they might be a good candidate for PARPi - Tony/Matt/Justin/Joep/Sean to discuss whether Chord and HRdetect are appropriate measures for HRD in uLMS - Tony's group to look at the raw data before this conversation takes place. \n\nPhospho-RPA - can we get it? \n\nMatt suggested to do methylation analysis - Clare mentioned unlikely to find anything as almost whole uLMS cohort has been assessed for methylation and nothing has been detected so far (also BRCA2 is most implicated gene, not BRCA1) \n\nClare's meeting 10.02.2022\nfresh tissue S1: High tumour purity in sample, have blood. Send snap frozen for WGS";
      date_of_death = "2/2023";
      d_case_summary = "uLMS. CASCADE CA0151";
      tumour_type = "uLMS";
      tumour_details = "uLMS";
      case_details = "53F\n\n2018-10: Surgery: Hysteroscopic resesction of submucosal fibroids/endometrial ablation\nPath: Benign/no atypical features\n\n2020-07: Dx LMS of body of uetrus\nSurgery: TAH/RSO\nIHC positive: ER (3+ 85 - 90%), PR (3+ 85 - 90%), CD10, caldesmon, bcl-2, desmin\nIHC negative: Cyclin D1, CD117, DOG-1, EMA, PAX-8, HMB-45, S-100, CD 34.\n\n2020-03: Precision TSO500\nTier II: AR, TP53\nTier III (VUS): ATM, CHEK2\n\n2020-10 -  2021-11: Treatment: Zoladex, with Anastrozole added 2020-11\n\n2021-11: PD in pelvic/nodal/L rib\n\n2021-12: Blood B1 received. Fresh tissue S1 received.\nIHC positive: Desmin, SMA, ER (+2/+3, 60%), PR (+2/+3, 40%), ki67 40-50%\n\n2022-02: S1 DNA sent for WGS: \nVUS in TP53 and RB1, PTEN deletion, MSH6 rearrangement.\n\n2022-10: Blood B2 received.\n\n2022-11: FFPE Block 1S received - sent for ProCan study.\n\n2023-02: Deceased. Fresh Tissue S2 - S8 received (CA0151)";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "07/11/2022: 2020 block requested from Australian Clinical Labs by Devindee for the uLMS study.\n21/11/2022: 2020 block received.";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01500";
  }
