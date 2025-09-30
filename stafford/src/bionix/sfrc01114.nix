with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      prefix = "fastqs/pmcc/ccp/SFRC01114-B1_S3";
      suffix = "_001";
      hash1 = "b89691cfe62f84b4b335849539e33f59f58bbfede11279bc600fc7fb37e8374ea511954fbb8f1dd17ce77b0daeea84973ca23bdb62680f298ceda0d6dca79230";
      hash2 = "4e006559dfa4405c14b7072919ee9d3e02397d5bea43a01bca9390855b881da866b216270887715db6cf582f794de78301e4b1015192d5d8e37764ce452a1227";
    }
    {
      site = "1L";
      class = "tumours";
      prefix = "fastqs/pmcc/ccp/SFRC01114-1L_S4";
      suffix = "_001";
      hash1 = "939dd801f6edd4a3d72830afaeb7069c1630da27db0d5f0c316de2afd8b74e4ee3d0d5b1220b9ed8203f5456148dc7f1dceb6fa34049cac4295f1f948afc95ac";
      hash2 = "41074e62d07a2a5444cde5805f4aeabc24de87dfeb17f65d6460b4c721c4e8b60f5f76e17aae563c879524aab57cfd8fa1af80ee5dbe618740ade5b21c73424e";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC meeting 17.03.2022\nCCP review with new pipeline. \nGermline, none detected. Somatic ARID1A and PIK3CA. \nThis case is define as GRADE2 endometrioid clear cell.\nSend for BROCA, Mandy to check if patient still alive \n\nBROCA meeting Amandine/Clare 04.03.2022\nOrganise discussion of CCP with bioinformatic with new pipeline. \nSend block 1L for BROCA\n\nRC Meeting notes 25.06.2020\nSomatic: All variants have Freq of 0.02 - 0.03, suggesting low purity, but high depth means we accept as valid variants. \nARID1A, DAXX, ATRX - would be good for ATARI Trial. Possible IHC test for ARID1A, for validation. \nPOLE mutation - ways to validate this? But probably not pathogenic as low tumour mutational burden \nReport all 5 mutations - unknown clinical significance. ARID1A of most interest. \n\nMeeting notes 06.02.2020\nCCP results discussion: No germline variants of relevance in ClinVar. Justin/Tony to generate a report for Clare/treating clinicians to be able to report back to patient.  \n\nMeeting notes 27.06.2019\nIn Sean's lab, on hold \nSend for WES or comprehensive cancer panel - Holly to check with Gisela about both and timing, recall samples from Sean's lab \nCCP = \$856/sample and WES = \$1300/sample \nSend for panel ";
      d_case_summary = "28Apr22 - No additional history since 2019 available from doctors, still alive and relatively well";
      date_consented = "2018-11-20";
      tumour_type = "Clear cell ovary";
      tumour_details = "Ovarian mixed clear cell (30%) and endometrioid (70%) cancer";
      case_details = "Stage IC ovarian mixed clear cell (30%) and endometrioid cancer (70%).\n\nReceived laparoscopic hysterectomy, BSO. Patient declined chemotherapy against clinician recommendation.\n\nHad no chemo because of clear cell component\nFor WGS, however only have FFPE, so do both WES and comprehensive panel\n\nTissue recalled 6-Feb-19 (followed up 18-Feb-19)\nSpecimen no: 18979095 -Block 1L\nReceived 28-Feb-18 - given to Amandine";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01114";
    capture = CCPv2;
    predictNeoantigens = false;
  }
