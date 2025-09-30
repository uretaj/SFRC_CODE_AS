with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        minimap2.align = def minimap2.align {walltime = "48:00:00";};
        octopus.callSomatic = {targets, ...} @ attrs:
          octopus.callSomatic (attrs
            // lib.optionalAttrs (lib.any (x:
              x == "chrY")
            targets) {mem = 160;});
      })
  ];
}; let
  samples = [
    {
      site = "2.6";
      class = "tumours";
      pdx = false;
      r1 = "2J/K9/SHA256E-s114285959734--4274ff07a5406c8b3056bf5ccdd732b68a5c78957e9e4176398bb43780678875.gz/SHA256E-s114285959734--4274ff07a5406c8b3056bf5ccdd732b68a5c78957e9e4176398bb43780678875.gz";
      r2 = "zx/ZQ/SHA256E-s118782502821--52cdfd0d292330f931f2e2223e59682083aa5433ca6ebfd02debe0b1a15508b7.gz/SHA256E-s118782502821--52cdfd0d292330f931f2e2223e59682083aa5433ca6ebfd02debe0b1a15508b7.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "vW/z6/SHA256E-s34482935073--2652b97654be611cd63b6217bf8021ca5565e361f6f6b830f4ad5dc3d951227a.gz/SHA256E-s34482935073--2652b97654be611cd63b6217bf8021ca5565e361f6f6b830f4ad5dc3d951227a.gz";
      r2 = "qj/mv/SHA256E-s36940895555--34751eac0020df7ccbb674520951ddfd53d51fae64387a0034f47b66b525241f.gz/SHA256E-s36940895555--34751eac0020df7ccbb674520951ddfd53d51fae64387a0034f47b66b525241f.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Q9/Zk/SHA256E-s29049642181--7323d38850cbd3d9e6041a7a6a0159afce32d8cb518a9fd0f9067c39a1247a13.gz/SHA256E-s29049642181--7323d38850cbd3d9e6041a7a6a0159afce32d8cb518a9fd0f9067c39a1247a13.gz";
      r2 = "8f/VW/SHA256E-s32195581648--ea32ffe6009393d43d8303458b7bee9d871ca556d617622c930c9e86e6e60949.gz/SHA256E-s32195581648--ea32ffe6009393d43d8303458b7bee9d871ca556d617622c930c9e86e6e60949.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 03.02.2022\nDiscussed WGS report.\nDNAJB1 fusion is common to FLC - pathognomic for diagnosis.\nPTPRK fusion unheard of by Damien, but might have some relevance. Trials overseas? \n\nRC Meeting 25.11.2021\nDNA and RNA from FFPE ok to submit for WGS with Sean's lab.\nReport should be ready for Variant Meeting on 17th Dec.\n\nMeeting with Clare 18.11.2021\nBlock 2.6: either do WGS if possible (Clare to check) or WES. Still waiting on blood ";
      d_case_summary = "30yo\n- giant right liver fibrolamellar HCC, with large portal node\n- pre-op imaging (MRI/CT/PET) confirmed disease (PET-avid), with additional para-pericardial node identified\n- significant pain and discomfort, in addition to early satiety\n23 July - Right hemihepatectomy, portal node clearance";
      date_consented = "2021-08-19";
      tumour_details = "Fibrolamellar hepatocellular carcinoma";
      case_details = "Patient clinical history \n\n30 year-old female with resected hepatic fibrolamellar carcinoma  \n\n− Presented with local symptoms of pain and early satiety  \n\n− Baseline imaging MRI/CT/PET confirmed large PET-avid primary, with additional para-pericardial node identified  \n\n− Proceeded to surgery 23/07/2021 (block 2.6 review here): Right hemihepatectomy, portal node clearance & excision of parapericardial node via thoraco-abdominal incision  \n\n− Histopathology: pT2N1Mx Hepatocellular carcinoma (fibrolamellar variant). 160mm tumour, LVI positive, with metastatic carcinoma seen in one of two portal hepatic lymph nodes (1/2) and 1/1 pericardial node. No background liver cirrhosis or fibrosis.  \n\n− Referred for guidance regarding potential adjuvant therapies, surveillance, and possible trial involvement \n\nPlan: After WGS if possible (only FFPE available) or WES please. ";
      portal_letter = "SFRC01462_ARCPortalReport_03Sep2021_Redacted.pdf";
      block_recall_history = "Block received from Eastern Health by Warren 4/11/21";
    };
    inherit samples;
    name = "SFRC01462";
    disableGridss = true;
  }
