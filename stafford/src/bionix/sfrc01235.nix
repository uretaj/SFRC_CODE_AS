with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "X5/Jq/SHA256E-s17752291470--f90bbcb371f062187bd9c4fa8ad2609532d2416e50ba1331287405edf23d82ec.gz/SHA256E-s17752291470--f90bbcb371f062187bd9c4fa8ad2609532d2416e50ba1331287405edf23d82ec.gz";
      r2 = "0X/g1/SHA256E-s19689667362--604b783f0e9c44661591c1ba2d6a3d6bed5646196e2f8b0e2d05b4cefa8f551d.gz/SHA256E-s19689667362--604b783f0e9c44661591c1ba2d6a3d6bed5646196e2f8b0e2d05b4cefa8f551d.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "KJ/3Q/SHA256E-s21665144574--291654d7cc94becb9ef637689f0ae7be753921b01b488ac2206aa341520d3b8d.gz/SHA256E-s21665144574--291654d7cc94becb9ef637689f0ae7be753921b01b488ac2206aa341520d3b8d.gz";
      r2 = "vG/kF/SHA256E-s23718976736--96b85487bde449d900825ce00dc61d5ac9df5d707de300bf7c2de9bf40aaf15c.gz/SHA256E-s23718976736--96b85487bde449d900825ce00dc61d5ac9df5d707de300bf7c2de9bf40aaf15c.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "j3/kV/SHA256E-s44361311975--73b28dd7112dfdadf073a3d00084061f8a5d672e975acfbbe62c4f9f4287b61c.gz/SHA256E-s44361311975--73b28dd7112dfdadf073a3d00084061f8a5d672e975acfbbe62c4f9f4287b61c.gz";
      r2 = "Fm/8X/SHA256E-s48577772653--616a620ff04d9c8d492557dd3688722e0174df3e4c0a1961cbb1bf5c6b7676eb.gz/SHA256E-s48577772653--616a620ff04d9c8d492557dd3688722e0174df3e4c0a1961cbb1bf5c6b7676eb.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "xq/45/SHA256E-s37558840705--f746d18a11cf330214fdd55d13b4e2e218bbcd81201f9c23d35956d1e628a54f.gz/SHA256E-s37558840705--f746d18a11cf330214fdd55d13b4e2e218bbcd81201f9c23d35956d1e628a54f.gz";
      r2 = "Q9/zv/SHA256E-s41659702718--2806cfbf75062d267a497870e90fe4d2b5ea55c7006932e967b395f3644f7433.gz/SHA256E-s41659702718--2806cfbf75062d267a497870e90fe4d2b5ea55c7006932e967b395f3644f7433.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "clear cell";
      meeting_discussions_follow_up = "Broca meeting 21.03.2022\nSend S1 to BROCA, same sample as WGS\n\nMeeting notes 2.4.20:\nShe is having chemo but about to finish - difficult to get AKTi (astra zeneca)  \nTony and Clare to approve and send report \nGen to ask Kylie Gorringe what they received - advise us on best tissue for making RNA for RNAseq - show them WGS report \nNeed to decide where to send RNA for RNAseq - Holly to check with Sean \n\nMeeting notes 2020.01.23\nClare has emailed Sean for WGS update \n\nMeeting notes 2019.11.21\nIf tumour purity is ok send for WGS \nThaw early time-point or mince and try with new 2D media and primaria flasks (Gen) \nThese mixed cases don't really respond to chemo as they should be getting bowel cancer chemo ";
      date_consented = "2019-10-23";
      tumour_type = "Clear cell ovary";
      tumour_details = "Ovarian mixed clear cell (85%) and endometrioid (15%) carcinoma, High grade";
      case_details = "WGS clinical notes \nOvarian mixed clear cell (85%) and endometrioid (15%) carcinoma, High grade. 50 yo. Having chemotherapy. Tumour associated with bowel. We suspect as mixed that there may be a bowel primary. We would like to have access to the primary sequencing data following analysis (analysis required for the patient) please for further analysis with another similar case. DNA for tumor and blood from a mixed clear cell ovarian cancer:stage IIb clear cell + EAC ovarian cancer: BRCA wild type 6/11/19 The tumor sample was from a surgical sample - OCT, path reviewed, macro dissected post pathology review.The patient is not doing so well.Do you have any information or could you expedite the results please?";
      patient_information_complete = "Incomplete";
      fcc_report = "SFRC01235_FCPanel_07Feb2020_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01235";
  }
