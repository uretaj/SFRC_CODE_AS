with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        samtools.sort = def sambamba.sort {
          ppn = 10;
          walltime = "48:00:00";
          mem = 38;
          flags = "-m 32G";
        };
        octopus.callSomatic = with lib;
          {targets, ...} @ attrs:
            octopus.callSomatic (attrs
              // optionalAttrs (any (x:
                x == "chr1" || x == "chrY")
              targets) {mem = 180;});
        minimap2.align = def minimap2.align {
          walltime = "72:00:00";
          partition = "long";
        };
      })
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "KW/W1/SHA256E-s36981170089--62f2ef2fcc0c155af67175532b8b6c99df45a1078b4a544ad7e292e3cca9d2b5.gz/SHA256E-s36981170089--62f2ef2fcc0c155af67175532b8b6c99df45a1078b4a544ad7e292e3cca9d2b5.gz";
      r2 = "V5/Qw/SHA256E-s38504687847--5c01fe40e0b564aab9303bfcf0ac0c537997b0169cfdd32840b2c5f216c8fffe.gz/SHA256E-s38504687847--5c01fe40e0b564aab9303bfcf0ac0c537997b0169cfdd32840b2c5f216c8fffe.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "p6/wv/SHA256E-s123686378930--0703d94c9e28c02d8fc9b1b4e8eb0b5345fad953c68c37516ea14907a6790506.gz/SHA256E-s123686378930--0703d94c9e28c02d8fc9b1b4e8eb0b5345fad953c68c37516ea14907a6790506.gz";
      r2 = "FM/kV/SHA256E-s129501315025--ff9c85476c3e00b0b339abf98a5c9051b5bea9ff867df7271a12bd6601090059.gz/SHA256E-s129501315025--ff9c85476c3e00b0b339abf98a5c9051b5bea9ff867df7271a12bd6601090059.gz";
    }
    {
      site = "S1_T3";
      class = "tumours";
      pdx = true;
      r1 = "6j/ZJ/SHA256E-s96475469088--0c2e3fb729ac9eb3ee7242124f81d65dc8d50d6c7bf935fecdda1f96edb159a1.gz/SHA256E-s96475469088--0c2e3fb729ac9eb3ee7242124f81d65dc8d50d6c7bf935fecdda1f96edb159a1.gz";
      r2 = "0G/16/SHA256E-s100199738318--70d7373bfe5982ce91dc1ac972c3638475c341094e62ad2eb8ec6a30f2e9eb87.gz/SHA256E-s100199738318--70d7373bfe5982ce91dc1ac972c3638475c341094e62ad2eb8ec6a30f2e9eb87.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "6K/mF/SHA256E-s1869572444--d98f73e5a3ad6d5301bf71472d8c5e0c3523882c105ac9359328e69028980dc9.gz/SHA256E-s1869572444--d98f73e5a3ad6d5301bf71472d8c5e0c3523882c105ac9359328e69028980dc9.gz";
      r2 = "6f/0X/SHA256E-s1894262951--b87e0b2d605b70bd065c18443884462fff8b5d06fc73ceae0761dd25ff4d3d36.gz/SHA256E-s1894262951--b87e0b2d605b70bd065c18443884462fff8b5d06fc73ceae0761dd25ff4d3d36.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "4M/V0/SHA256E-s840688555--b1d69b80572c406347a60f3663a2858f10dd49287a1ffeec2cb3698cb198918a.gz/SHA256E-s840688555--b1d69b80572c406347a60f3663a2858f10dd49287a1ffeec2cb3698cb198918a.gz";
      r2 = "qG/gw/SHA256E-s853687952--440bf49ffc245a778ec1d94de0af2d0fa0a720450281c6384eaa5b1fb87b66cc.gz/SHA256E-s853687952--440bf49ffc245a778ec1d94de0af2d0fa0a720450281c6384eaa5b1fb87b66cc.gz";
    }
    {
      site = "S6";
      class = "tumours";
      pdx = false;
      r1 = "WX/4K/SHA256E-s80401342009--f6720863e869a4d72731630b31da362df99fdebc798d07a378c78159ea30eb91.gz/SHA256E-s80401342009--f6720863e869a4d72731630b31da362df99fdebc798d07a378c78159ea30eb91.gz";
      r2 = "fW/PZ/SHA256E-s85515550085--15780b51fb533bb0ecf2af70d7a69cf2aeb68c5dd0d8d6ceb3923e85548c8446.gz/SHA256E-s85515550085--15780b51fb533bb0ecf2af70d7a69cf2aeb68c5dd0d8d6ceb3923e85548c8446.gz";
    }
    {
      site = "S6";
      class = "rna";
      pdx = false;
      r1 = "WG/J1/SHA256E-s6880480368--7c157aec63e0d24fdd82025c1aaf35a5f7fd86ad97aea35a235b20c6fca78101.gz/SHA256E-s6880480368--7c157aec63e0d24fdd82025c1aaf35a5f7fd86ad97aea35a235b20c6fca78101.gz";
      r2 = "g5/6W/SHA256E-s6791450304--6b61192e8b6a5312c5ba3a37fe261a89e1a4258beb5070f9e39e225f6eaa6310.gz/SHA256E-s6791450304--6b61192e8b6a5312c5ba3a37fe261a89e1a4258beb5070f9e39e225f6eaa6310.gz";
    }
    {
      site = "S6_T1";
      class = "tumours";
      pdx = true;
      r1 = "31/gM/SHA256E-s58155986359--374c9ea45b46e5e121ba29ff405e2d5133545d715402502934154dd9c486b043.gz/SHA256E-s58155986359--374c9ea45b46e5e121ba29ff405e2d5133545d715402502934154dd9c486b043.gz";
      r2 = "XW/MX/SHA256E-s60226536280--7d222de3fa020dfd1c075898f77b8b27ba8044f96bef06971f7849175eda9ff0.gz/SHA256E-s60226536280--7d222de3fa020dfd1c075898f77b8b27ba8044f96bef06971f7849175eda9ff0.gz";
    }
    {
      site = "S7-T3";
      class = "tumours";
      pdx = false;
      r1 = "7f/PQ/SHA256E-s49475657687--5f9894774802a4225eeb314dc7491f8ce464b86f0de7c4b624a5f121d2ab390b.gz/SHA256E-s49475657687--5f9894774802a4225eeb314dc7491f8ce464b86f0de7c4b624a5f121d2ab390b.gz";
      r2 = "MX/KK/SHA256E-s52604271475--dd04686148b3f2ebb9400551e4fdbdd05fab0c2ecd46fccc56f85a8d55416d77.gz/SHA256E-s52604271475--dd04686148b3f2ebb9400551e4fdbdd05fab0c2ecd46fccc56f85a8d55416d77.gz";
    }
    {
      site = "S7-T3";
      class = "tumours";
      pdx = false;
      r1 = "m6/kX/SHA256E-s49767078675--03ff4e51a640a82b73eb200e2b3655738f46852333f87eb7a8bff8051e127511.gz/SHA256E-s49767078675--03ff4e51a640a82b73eb200e2b3655738f46852333f87eb7a8bff8051e127511.gz";
      r2 = "W4/XG/SHA256E-s53011486995--74048334ff145a8c28573f233910a16d82c8ce37d38a42598858462a80ee27dc.gz/SHA256E-s53011486995--74048334ff145a8c28573f233910a16d82c8ce37d38a42598858462a80ee27dc.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "uLMS";
      meeting_discussions_follow_up = "RC Meeting 29.02.2024\nDiscussed WGS report (Grimmond and SFRC).\nS7 sample. Andrew compared to the 2 other patient WGS findings. Discussed CN plot (not good). \n\nClare meeting 05.10.2023\nDiscussed S7 OCT block. 60-80% tumour, but very small. Send DNA only for WGS (will be #3!).\n\nRC Meeting 2022.01.20\nDiscussed S6 WGS report.\nNew Discussion: \nPatient responded to PARPi, but then progressed. Can't get a reversion on a BRCA2 deletion, so what happened? \nTMB for S6 is similar to S1 \nHR deficient now, did not have CHORD at time of S1. \nLots of new random mutations in S6, but not cosmic related genes. \nABL2 amplification - was previously on a big segment, but now is focal. Related to axon guidance. \nCh6 and Ch8 are much more fragmented... most chromosomes are more fragmented. This is due to time and general replication stress. The PRKDC mutation would work here (stabilisation of FRKs) \nPDX data looks good when treated with AZD5305. In the PDX sample for WGS the BRCA2 del is not quite there. Come back to that (for manuscript) \nCan't see an absolute cause for the PARPi resistance \n\nClare's meeting 2021.09.24\nS6 about 60-65% tumour: Gen to trial 2D and 3D and do WGS on snap frozen.\n\nClare's meeting notes 2021.06.03\nNo tumour in S5- very good. In complete remission. Is on second line PARPi \nRepeat PET in August (should be clear) \n\nRC Meeting notes 11.06.2020\nWait for update from Inger. Would need new tissue to try PDX again.\n27/5/20 - patient had responded well to chemo and there was no further tissue to collect . \n\nMeeting notes 04.06.2020\nPatient on Olaparib and after 3 courses of Cisplatin, responding really well. 3 more courses CT and continue with Olaparib. Plan: get PDX back on, trialling Cisplatin and PARPi. Or other treatments +/- PARPi. \nHolly to check previous thoughts on possible drugs and send to Olga (revisit in 2 weeks) ";
      d_case_summary = "Uterine leiomyosarcoma, ER/PR positive; abdominal hysterectomy (2015); progressive pulmonary, pelvic and abdominal wall mets; multiple therapies (see Hx) \nThyroid cancer 2000";
      date_consented = "2018-12-04";
      tumour_type = "uLMS";
      tumour_details = "Uterine leiomyosarcoma";
      case_details = "45 years old \nProgressive uterine Leiomyosarcoma with pulmonary metastases, homozygous BRCA2 deletion \n08-2015: Abdominal hysterectomy performed. Block M recalled, 99% tumour  \nPositive: ER/PR, smooth muscle actin and desmin \nNegative: HMB45 \n07-2016: Commenced Goserelin for 1 month. \n08-2016: Commenced Anastrozole for 3 months \n11-2016: Completed 6 cycles of Doxorubicin, partial response, on TFI \n08-2017: Commenced 6 cycles of Docetaxel + Gemcitabine, completed in 11-2017. \n01-2018: Completed palliative irradiation to L sided Hilar mass and started Pazopanib \n03-2018: Pazopanib \n05-2018: Completed radiotherapy to pelvis, commenced Ifosamide, ceased due to toxic reaction. \n06-2018: Commenced 9 cycles of single agent Dacarbazine, completed in Jan 2019. \n02-2019: core biopsy from chest cavity 01-2019 --> WGS finding= homozygous deletion in BRCA2 - PARPi sensitive in literature -> compassionate access Olaparib \n2020-06: Olaparib+Cisplatin \n04-2021: surgery tissue received Adnexal mass, 0% tumour \n2021-06: Is on second line PARPi \n09-2021:surgery tissue received from lung resection review here \n \n---------------------------------------------------------------------------Progressive uterine Leiomyosarcoma, ER/PR positive, homozygous BRCA2 deletion.\n\nAbdominal hysterectomy performed August 2015. Commenced Goserelin for 1 month in July 2016. Commenced Anastrozole for 3 months in August 2016. \nCompleted 6 cycles of Doxorubicin in November 2016, with partial response. \nCommenced 6 cycles of Docetaxel + Gemcitabine in Aug 2017 Aug, completed in Nov 2017.\nCompleted palliative irradiation to L sided Hilar mass completed Jan 2018.\nCommenced Pazopanib in Jan 2018.\nCompleted radiotherapy to pelvis in May 2018, commenced Ifosamide in May, but ceased due to toxic reaction.\nCommenced 9 cycles of single agent Dacarbazine in June, completed in Jan 2019.\n\nFor WGS with SG lab\nhomozygous deletion in BRCA2 - PARPi sensitive in literature -> compassionate access Olaparib";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "TAH- Dorevitch Pathology\nHistopath number: 15-83170 (15-4374806)\nFFPE Block received 1-Feb-19";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      histology_summary = "ER/PR positive \n";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01122";
    disableGridss = true;
  }
