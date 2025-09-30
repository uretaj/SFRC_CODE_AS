with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1E";
      class = "tumours";
      pdx = false;
      r1 = "Jp/7m/SHA256E-s1834374312--078f82c6f89ea23887f01c29635f66b32bdf5e31a088b158321d13ae049376d6.gz/SHA256E-s1834374312--078f82c6f89ea23887f01c29635f66b32bdf5e31a088b158321d13ae049376d6.gz";
      r2 = "J1/p5/SHA256E-s1866982152--96bd22b4daee598ad8d3092c2015f3bbe356dff064550101ed2b4786ef9ed0b9.gz/SHA256E-s1866982152--96bd22b4daee598ad8d3092c2015f3bbe356dff064550101ed2b4786ef9ed0b9.gz";
    }
    {
      site = "1E";
      class = "tumours";
      pdx = false;
      r1 = "xG/kp/SHA256E-s11256137148--b7b02df247f24708a9b7d80b499fa1dc84216add48f9f5ff6ea11026c75072e3.gz/SHA256E-s11256137148--b7b02df247f24708a9b7d80b499fa1dc84216add48f9f5ff6ea11026c75072e3.gz";
      r2 = "96/0w/SHA256E-s11349104879--3b9a4db53c98888c0523f6ae6716191a510d03cb68db88b661121ef00d5ec004.gz/SHA256E-s11349104879--3b9a4db53c98888c0523f6ae6716191a510d03cb68db88b661121ef00d5ec004.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "81/VV/SHA256E-s3639464668--4ef3bd6195250705ff977da9c6e01179897eb2c7a9ef5741a9c0cf2f5c9cb9c1.gz/SHA256E-s3639464668--4ef3bd6195250705ff977da9c6e01179897eb2c7a9ef5741a9c0cf2f5c9cb9c1.gz";
      r2 = "44/27/SHA256E-s3802514431--7bd06efa8ff4921b834baa9a66b507ba09711aec2ef4981ea754655cf4afcaaf.gz/SHA256E-s3802514431--7bd06efa8ff4921b834baa9a66b507ba09711aec2ef4981ea754655cf4afcaaf.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "SOLACE2_0029";
      meeting_discussions_follow_up = "RC Meeting 22.06.2023\nDiscussed WES report for Block 1E:\n-Interesting CN profiles - maybe there is some HRD? Also high LOH, could be due to CDK12 loss > like SFRC01596 (Myriad = high GIS, but no sig3, platinum sensitive, 10months PFS on PARPi).  \n-CDK12 reversion? Also CDK12 LOH event. \n-Not tested for methylation yet. \n-Can submit for Liquid TSO500 - check with Asha how much blood taken for SOL2 \n-Kas/Sally to dual CRISPR \n\nClare's meeting 2021.04.21\nSFRC01395_S1\nNo tumour in this sample, connective tissue only \nPlan: I believe we are awaiting for a FFPE block made from the fresh tissue to be review too? Wait for that review ";
      d_case_summary = "female diagnosed with HGSOC in July 2017. In SOLACE2. Bx scheduled for Tues 30/03/2021 at PMCC. Tissue to be collected by Asha for SOLACE2 and extra core for SFRCP. Bloods to be done at outpt's on 30/3 before biopsy.";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC  SOLACE2 patient";
      case_details = "65F\n\n2017-07: Dx Stage IV HGSOC\n\n2017-08: TAH/BSO, omentectomy peritoneal biopsy\nIHC on ovarian component of the tumour:\nPositive: CK7, PAX8 (30 - 40% tumour cells), p16 (strong diffuse in 100% tumour cells), WT1 (moderate-strong in 40 - 50% tumour cells), ER (weak, 30%), PR (moderate, 80%)\nIHC negative: calretinin, CK20, TTF-1\np53: null type staining\n\nIHC on uterine component of the tumour:\np53: null type staining\nWT1: negative\npMMR\n\nIHC on serous tubal intraepithelial carcinoma in fallopian tube\np53 positive\n\n2017-08 - 2017-12: Chemotherapy: Carboplatin/paclitaxel cycle 1 (HRS to paclitaxel)\nCarboplatin cycles 2 - 6. \nAvastin for full duration\n\n2020-02 - 2021-02: Enrolled on SOLACE2\n\n2020-04 - 2020-10: Stable disease\n\n2021-03: Metastasis: abdomen, pelvis, para-aortic lymph node, left iliac lymph node. \nFresh tissue S1 and Blood B1 received.\n\n2022-03: Deceased\n\n2022-06: 1E (In SOLACE2 RedCap) sent for BROCA\n\n2022-08: 1E (In SOLACE2 RedCap) and B1 sent for WES";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01395";
  }
