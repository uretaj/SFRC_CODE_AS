with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1.5";
      class = "tumours";
      pdx = false;
      r1 = "39/xM/SHA256E-s2221965151--939e3c740ed58870f4136786de433608e0d33c61451ae7cbfa7facf5beb6bb3b.gz/SHA256E-s2221965151--939e3c740ed58870f4136786de433608e0d33c61451ae7cbfa7facf5beb6bb3b.gz";
      r2 = "jJ/6f/SHA256E-s2181429058--f76adc40ed19c9d39931dce2d311a03088793ae6a387076b8a0d76e371b4a452.gz/SHA256E-s2181429058--f76adc40ed19c9d39931dce2d311a03088793ae6a387076b8a0d76e371b4a452.gz";
    }
    {
      site = "1.5";
      class = "tumours";
      pdx = false;
      r1 = "xG/mp/SHA256E-s2278206230--79faf8d25fe0d67a19ee0e645d4011ef1584d4760d56d3286fa143aa0e3fd1ee.gz/SHA256E-s2278206230--79faf8d25fe0d67a19ee0e645d4011ef1584d4760d56d3286fa143aa0e3fd1ee.gz";
      r2 = "9K/qp/SHA256E-s2240240712--da153286aa7016c9ddf8330816acb56e5a7685682e8e4a80f4bfd7f6f78056a0.gz/SHA256E-s2240240712--da153286aa7016c9ddf8330816acb56e5a7685682e8e4a80f4bfd7f6f78056a0.gz";
    }
    {
      site = "1.5";
      class = "tumours";
      pdx = false;
      r1 = "W3/gx/SHA256E-s3198725368--8a3df9ba39e5d9a7835a615a858610c4b3a7ec55da3e27400ba76b957e0237d5.gz/SHA256E-s3198725368--8a3df9ba39e5d9a7835a615a858610c4b3a7ec55da3e27400ba76b957e0237d5.gz";
      r2 = "J0/VK/SHA256E-s3150187052--742befc2cbd9ef00f41655876b46e924f39c39f54236c896899a334ea1e54651.gz/SHA256E-s3150187052--742befc2cbd9ef00f41655876b46e924f39c39f54236c896899a334ea1e54651.gz";
    }
    {
      site = "1.5";
      class = "tumours";
      pdx = false;
      r1 = "mZ/4w/SHA256E-s3290625173--1e5734109dc8b7060313f6b5029f6847a12a6059733d81d6d90318063cc1e74a.gz/SHA256E-s3290625173--1e5734109dc8b7060313f6b5029f6847a12a6059733d81d6d90318063cc1e74a.gz";
      r2 = "qG/fM/SHA256E-s3245640312--836ed657a3b9ba6c4cbaf54eed7a37615fbd90a166257bbd367fa71248f2e161.gz/SHA256E-s3245640312--836ed657a3b9ba6c4cbaf54eed7a37615fbd90a166257bbd367fa71248f2e161.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "pk/z6/SHA256E-s1931511168--46fe616e571b02e96fd3615dd8683cfa6a1da7277e3901ada3d54da69dafe456.gz/SHA256E-s1931511168--46fe616e571b02e96fd3615dd8683cfa6a1da7277e3901ada3d54da69dafe456.gz";
      r2 = "2k/5K/SHA256E-s1955393682--14e1b9ebb1094cf749a7efd2df6e10eba6988fa40a83aefe1947f70270e849fe.gz/SHA256E-s1955393682--14e1b9ebb1094cf749a7efd2df6e10eba6988fa40a83aefe1947f70270e849fe.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "4z/QX/SHA256E-s2025919227--29df7b6225a7629d3d54d4ba2c2065c82a08913d56c3aa1a4ef1f09a5e746908.gz/SHA256E-s2025919227--29df7b6225a7629d3d54d4ba2c2065c82a08913d56c3aa1a4ef1f09a5e746908.gz";
      r2 = "2F/2V/SHA256E-s2056470839--8b0c57308bd061be6cca350ac0f9e3608dfdbdb85c54fd73729aaa07df454490.gz/SHA256E-s2056470839--8b0c57308bd061be6cca350ac0f9e3608dfdbdb85c54fd73729aaa07df454490.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 12.10.23\nTWIST WES Block 1.5\n- Reportable somatic TP53 variant. \n- CIITA somatic variant of interest? \n- Research Question - Immune evasion link to the MHCII variant? \n- Patient deceased Jan'23 \n- Retinoblastoma when she was 17 (now 51) - probably had radiation as part of treatment and this is likely radiation induced sarcoma. \n- Melanoma could also be related to radiation exposure as a teenager \n- CIITA mutation - is of research interest for Multiple primary/MHC-II Immune evasion \n\n\nClare's Meeting 23.03.2023\n-Retinoblastomas usually in childhood. \n-Clare to ask clinician about this case. \n-Melanoma mentioned in the brain histology report. \n-To do WES on FFPE Block 1.5 (multiple primary). Try recalling melanoma blocks (not retinoblastomas). \n-Ask for melanoma path reports. \n\nRC Meeting 12.10.23\nTWIST WES on FFPE Block 1.5\n\nReportable somatic TP53 variant. \n\nCIITA somatic variant of interest? \nResearch Question - Immune evasion link to the MHCII variant? \n\nRetinoblastoma when she was 17 (now 51) - probably had radiation as part of treatment and this is likely radiation induced sarcoma. \nMelanoma could also be related to radiation exposure as a teenager \n\nPatient deceased Jan'23 ";
      date_of_death = "01/2023";
      d_case_summary = "multiple primary history (UPS, melanoma 2010 and retinoblastoma) with a loss of function TP53 variation and an SDHA VUS.";
      date_consented = "2021-08-25";
      tumour_type = "Other rare";
      tumour_details = "Undifferentiated pleomorphic sarcoma  Retinoblastoma  Melanoma- forehead, 2010";
      case_details = "51F\n\n2018-04: Dx Undifferentiated pleomorphic sarcoma of R) medial canthus; metastatic.\n\n2018-05: Surgery: Excision and L) radial flap repair. Post-op MRI: no evidence of residual tumour (FFPE Block 1.5).\nIHC positive: SMA, desmin (focal weak), caldesmon (minimal focal), vimentin, p63 (weak patchy).\nIHC negative: CAM5.2, AE1/3, S-100, EMA, PR, CD31, CD34, synaptophysin, SOX10, p40, chromogranin.\npRB (RB1 product) negative via IHC (PMCC): Evidence for biallelic loss of RB1 expression\nSDHA and SDHB IHC (PMCC) Weak but detectable staining in tumour and benign cells: No evidence of SDH deficiency. \nKi67: 80%\nUndifferentiated spindle cell neoplasm. \n\n2018-12: Dx metastatic disease in bone, liver, and lungs.\n\n2019-01: 1st line chemotherapy: Doxorubicin; PD post 3x cycles.\n\n2019-03: 2nd line chemotherapy: Gemcitabine/docetaxel, completed 6x cycles.\n\n2019-09 - 2019-12: 3rd line chemotherapy: DTIC (Dacarbazine), completed 6x cycled. Good response.\n\n2020-04: Dx PD in liver. Commenced rechallenge of DTIC.\n\n2021-01: Dx PD in liver. Possible progression lung metastases.\n\n2021-03: Interval increase in size of multiple liver metastases.\n\n2021-07: Chemotherapy: Pazopanib. \n\n2022-02: Blood B1 received.\n\n2022-10: Increase in size and number of liver and lung metastases. New splenic lesions and ascites. \n\n2023-03: Sections from FFPE Block 1.5 (skull base tumour) received. ";
      patient_information_complete = "Incomplete";
      other_tumour_type = "Undifferentiated pleomorphic sarcoma";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "21/06/2022: May 2018 sample requested from Austin Pathology by Devindee\n27Feb23: May 2018 sample re-requested from Austin Pathology by Monica\n09Mar23: May 2018 sample received from Austin Pathology by Monica";
      mp_subgroup_sfrcp4_new_id = "3 or more primary";
      patient_alive = "No";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01450";
  }
