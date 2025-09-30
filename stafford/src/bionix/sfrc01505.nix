with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "4B";
      class = "tumours";
      pdx = false;
      r1 = "z1/Fv/SHA256E-s35226657579--d3fd96e7ff4c590fdf7b98a5ab81b35e3020b5e3bee6d6a3ab8fe56dda307751.gz/SHA256E-s35226657579--d3fd96e7ff4c590fdf7b98a5ab81b35e3020b5e3bee6d6a3ab8fe56dda307751.gz";
      r2 = "zw/86/SHA256E-s37115065306--4f2457ac28b142130357627eca7f3dba3c609dcd8c075208823a82aaadd8b0d2.gz/SHA256E-s37115065306--4f2457ac28b142130357627eca7f3dba3c609dcd8c075208823a82aaadd8b0d2.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "65/VF/SHA256E-s5018905847--2137d2f3fa9be8f8cdcb554fff5e84401bdd9e0fb8459ab4caa75860f8558dfe.gz/SHA256E-s5018905847--2137d2f3fa9be8f8cdcb554fff5e84401bdd9e0fb8459ab4caa75860f8558dfe.gz";
      r2 = "Xz/VV/SHA256E-s5168915398--472dfdb39754acaf43b92b650ea2d10251ed55785fa8603a761d0689693f6ac2.gz/SHA256E-s5168915398--472dfdb39754acaf43b92b650ea2d10251ed55785fa8603a761d0689693f6ac2.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Email from Clare 16.06.2022\nClare discussed the case with George Au-Yeng. Unfortunately, patient progressed and will not be able to benefit from further therapy. A SF report for the WES is not needed due to clinical progression.\n\nClare's meeting 16.06.2022\nWES done on 2019 FFPE, WGS in 2020. WGS will have better data. Clare and Damien & Matt to write to George Re moving forward with WGS data. \n\nMeeting with Clare 24.02.2022\nBlock 4B: Happy to go ahead with WES? Yes. \nMYC amp of interest. ";
      date_of_death = "07/2022";
      d_case_summary = "HGSOC Platinum resistant Post Mersana trial. On clinical trial at Cabrini (immunotherapy) Dec 2021. For WES on primary debulk sample, or ? on recent biopsy sample from a clinical trial (if available); has had germline testing - Petermac ovarian panel WT. For BROCA. \n16Jun- patient has progressed and will not benefit from further therapy. WES report not needed.";
      date_consented = "2021-12-22";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC";
      case_details = "57 years old female  \n\n2019/04 - 2019/08: 1st line: Carbo/Taxol x 3 NACT -> IDB -> Carbo/Taxol x 3 \n\n2019-06: TAHBSO, no IHC available (FFPE block 4B received). CRS2 Germline \t\t\tBRCA1/2 WT (PMCC, COV panel) \n\n2019/10-2020/11:\tRucaparib / Placebo + Nivolumab / Placebo (C5 onwards), repeat \t\t\t\tlaparoscopy \ncame off study due to disease progression Nov 2020 \n\n2020-11:\t\tWGS by Sean's lab: \n\t\t\t- Moderate TMB \n\t\t\t- Tumour is genomically instable  \n\t\t\t- BRCA1 rearrangement of strong clinical significance. CN neutral loss also\tdetected with  2 copies of WT BRCA1 retained. \n\t\t\t- Dominant signature 3 \n\t\t\t- Uncertain clinical significance: mutation and neutral loss of heterozygosity of TP53 \n\t\t\t- 12 CN of RECQL4 (cisplatine resistance gene) \n\t\t\t- 11 CN of MYC \n`\t\t\t- homozygous deletion of CDKN2A, CDKN2B, MTAP \n\t\t\t- uncertain clinical significance: In frame fusion  of ARID1A and PPIE, \t\t\tpredicting a loss of ARID1A function. \n\n2020/11 - 2021/05:\t2nd line: Carbo/Caelyx (MHW) \n\n2021-06:\t\t3rd line: oral cyclophosphamide\n \n2021-08:\t\tClinical trial (PMC57538 Upifitamab Rilsodotin) \n\n2021-12:\t\tCarboplatin (AUC 4) / Gemcitabine \n\nHGSOC Platinum resistant Post Mersana trial. For WES on primary debulk sample, or ? on recent biopsy sample from a clinical trial (if available); has had germline testing - Petermac ovarian panel WT. For BROCA. Briony to organise blood after 12 Jan. \n\n2022-01: Blood B1 received. Sections from Block 4B received.\n\n2022-03: DNA submitted for WES.\n\n2022-06: Patient progressed and will not be able to benefit from further therapy. A SF report for the WES is not needed due to clinical progression.";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      umccr_wgs = "SFRC01505_WGSReport_UMCCR_04Dec2020_Redacted.pdf";
      multiple_primary_project = "Yes";
      block_recall_history = "Block 4B slides received 19Jan2022. BM";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01505";
  }
