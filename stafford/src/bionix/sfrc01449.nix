with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "g9/6Q/SHA256E-s30384512884--2ca92b98b6dccb2850d0a9596d29d78ec1169f92b8e2b75915f2e6b99727fb6f.gz/SHA256E-s30384512884--2ca92b98b6dccb2850d0a9596d29d78ec1169f92b8e2b75915f2e6b99727fb6f.gz";
      r2 = "mM/W5/SHA256E-s31398421611--bd5785562e0043f45503a6861c00685b53d6c7f8d37264a57cab646641fcd2ae.gz/SHA256E-s31398421611--bd5785562e0043f45503a6861c00685b53d6c7f8d37264a57cab646641fcd2ae.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "jX/Vv/SHA256E-s92709373046--0ea83e48fbec10b9eb513c24da942d9d94c6a998f7e6971a5ec9fe74fb525722.gz/SHA256E-s92709373046--0ea83e48fbec10b9eb513c24da942d9d94c6a998f7e6971a5ec9fe74fb525722.gz";
      r2 = "0W/FW/SHA256E-s96623063688--8c29546b14d43f5bb1257d424c4bdca98caf78c7da76bac32501d9315ee3c4a0.gz/SHA256E-s96623063688--8c29546b14d43f5bb1257d424c4bdca98caf78c7da76bac32501d9315ee3c4a0.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "F4/W1/SHA256E-s10232749628--5963ecd9ea1ca0c3e5593d2ddbde42f1ee08afe3e33c77d87b1d6f9ba32b204a.gz/SHA256E-s10232749628--5963ecd9ea1ca0c3e5593d2ddbde42f1ee08afe3e33c77d87b1d6f9ba32b204a.gz";
      r2 = "qv/Z6/SHA256E-s9939723081--642c4237187011e082f71bc3c475c5db7fd338e83245ba5ae391a5f3b5e046c1.gz/SHA256E-s9939723081--642c4237187011e082f71bc3c475c5db7fd338e83245ba5ae391a5f3b5e046c1.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "gynae cancer other";
      meeting_discussions_follow_up = "RC Meeting 2022.02.03\nHad started to discuss during meeting of 16.12.2021, but came back to it today.\nP16+ mucinous cervical \nTrials: \n- Destiny - new HER2-ADC (HER2) \n- ACE pan tumour - Monash ADC \n- SBT6050 \n- MoST 9: tucatinib and trastuzumab (January) \n- MoST-CIRCUIT \nHave SFRC data. \nNew Discussion: would like combo trials (MoST 9 looks good). \nPortal fellows to check these trials \nPDX has not come up yet, but HPV positive cases are of interest to Matt \n\nClare's meeting 2021.10.21\nFresh tissue S1 OCT: Microdissect for DNA and RNA - for WGS \n\nRC meeting 2021.09.30\nClare to report this asap to Orla. Repeat HER2 in clinic and do ISH \n\nStill extract DNA, WGS to do \n\nClare's meeting 2021.09.24\nSFRC01449_S1: likely vaginal carcinoma (could be cervical). Liver mets. \nCut and review OCT block. Microdissect for DNA. Would like RNA, but that would be difficult.  \nTo do HER2 IHC asap.  Briony and Clare to do through RWH, but Amandine to submit as urgent to our histology ";
      d_case_summary = "HPV-associated mucinous adenocarcinoma with morphological features in this biopsy most in keeping with invasive stratified mucin producing carcinoma, could be a cervical lesion extended to vagina. p16 positive";
      date_consented = "2021-08-25";
      tumour_type = "Gynae cancer other";
      tumour_details = "Mucinous adenocarcinoma (likely cervical)";
      case_details = "58 years old \n\nDiagnosis: HPV associated mucinous adenocarcinoma, Cervical cancer Staging form: Cervix Uteri, AJCC 9th Edition - Clinical stage from 24/8/2021: FIGO Stage IV - Unsigned \n\n08-2021: fresh tissue received from Biopsy (reviewed here) \n\nIHC Positive: P16, CK7 diffusely \n\nIHC negative: ER, PR  \n\nP53= WT  ";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01449";
  }
