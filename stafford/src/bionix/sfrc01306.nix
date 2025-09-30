with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A32";
      class = "tumours";
      pdx = false;
      r1 = "62/65/SHA256E-s9703395370--f655d8bc1378638d00646ecbb235900b25fe55e9059fda8cfa2492c93aa13941.gz/SHA256E-s9703395370--f655d8bc1378638d00646ecbb235900b25fe55e9059fda8cfa2492c93aa13941.gz";
      r2 = "P6/m4/SHA256E-s9809095304--fa620aeb5d9023cfa4748f2daff1ad93c83ce3e06204547f98d01375bdf87b77.gz/SHA256E-s9809095304--fa620aeb5d9023cfa4748f2daff1ad93c83ce3e06204547f98d01375bdf87b77.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "WF/8K/SHA256E-s2849910482--54f0a7d1a5ae4595160455091457d8d7743eb546d5356cf2df4fdbe0eda791e7.gz/SHA256E-s2849910482--54f0a7d1a5ae4595160455091457d8d7743eb546d5356cf2df4fdbe0eda791e7.gz";
      r2 = "xX/m6/SHA256E-s2889007825--939fabbfefcad0276f25a9c4a2330175f771fc441a7232e5586abf3d23e179e8.gz/SHA256E-s2889007825--939fabbfefcad0276f25a9c4a2330175f771fc441a7232e5586abf3d23e179e8.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 18.02.2021\nWES results discussed.\nHigh TMB  \nGermline ATM - but not relevant/pathogenic \nSomatic FANCD2 (40% hf), KMT2C, LCP1, LRP1B (50% hf damaging) - associated with good response to immunotherapy in melanoma patients. No TP53, ATRX, DAX, RB1 \nGen to check uLMS cohort for other gene mutations that are/not present \nhttps://www.frontiersin.org/articles/10.3389/fimmu.2019.01113/full \"Patients with LRP1B mutation were identified to be associated with prolonged survival in both immunotherapy cohort.\" \nNeed to look at CN more. Deep deletion on Ch19, Ch1 is messy. Look for translocation breakpoints \nCan't call SVs and fusions with WES data but can look at genes near the breakpoints indicated by CN data ";
      d_case_summary = "uLMS";
      date_consented = "2020-05-19";
      tumour_type = "uLMS";
      tumour_details = "uLMS";
      case_details = "TAHBSO on 11/3/2020 Dx uLMS, with previos CT and MRI sacns indicating multifibroid uterus and pulmonary mets\n\nCommenced on palliative doxorubicin on 6/3/2020";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "04/11/2022: 2020 block requested from Monash by Devindee for uLMS project.\n14/11/2022: 2020 block received.\n\n2020 uLMS recalled from Monash for Clare via email on 07/08/2020 by Josh\n\n2020 uLMS block A32 received on 24/08/2020 by Josh";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01306";
  }
