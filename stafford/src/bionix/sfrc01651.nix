with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2.4";
      class = "tumours";
      pdx = false;
      r1 = "MV/Mg/SHA256E-s18447926142--207050b6d645ab0fe5557cbe7143445c1b8ea1997f874ca85e29da774941463b.gz/SHA256E-s18447926142--207050b6d645ab0fe5557cbe7143445c1b8ea1997f874ca85e29da774941463b.gz";
      r2 = "wv/PF/SHA256E-s19114194714--837a661e74404e7ddca20fc7ecc729ab7bb08ffae6f60c658fd881fd43c0c866.gz/SHA256E-s19114194714--837a661e74404e7ddca20fc7ecc729ab7bb08ffae6f60c658fd881fd43c0c866.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "G8/J3/SHA256E-s7201330338--362585a0a0441a527025e15b302b6d9ead57c7e43b34e1ec668dd4ec287f5e2a.gz/SHA256E-s7201330338--362585a0a0441a527025e15b302b6d9ead57c7e43b34e1ec668dd4ec287f5e2a.gz";
      r2 = "kX/xJ/SHA256E-s7658271234--f20aaad1e503d20f4a79c7c3dcd7041fcd0bd2775596cc2b56b2e5c758b1dc89.gz/SHA256E-s7658271234--f20aaad1e503d20f4a79c7c3dcd7041fcd0bd2775596cc2b56b2e5c758b1dc89.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 08.06.2023\nDiscussed WES report for FFPE Block 2.4:\n*Same gBRCA1 VUS from FCC report seen; changes seen here aren't BRCA driven. \n*No somatic variant hits \n*Loss of FANCA is interesting; whole chromosome arm events occurring. \n*Doesn't look HRD. \n*Possible interaction between FANCA and NTHL1? Seen in colorectal and breast cancers. Also associated with Sig30. For research, not clinically reportable. \n*Another LGSOC desert. \n\nClare's Meeting 30.11.2022\nWES on Block 2.4";
      date_of_death = "10/2023";
      d_case_summary = "LGSOC";
      tumour_type = "LGSOC";
      tumour_details = "LGSOC";
      case_details = "58F\n\n2021-02: Dx LGSOC\n\n2021-03 - 2021-07: Carboplatin x6\n\n2021-07 - 2021-12: Letrozole\n\n2021-11: Surgery: Laparotomy, BSO, Omentectomy, debulking (FFPE Block 2.4 - umbilical tissue)\nHistopath on ovary: \nIHC positive: ER (strong, 80%), PR (moderate, 15%), PAX8, WT1 (Strong, diffuse), \nIHC negative: Napsin A\np53 wild type\n\nHistopath on umbilical nodule:\nIHC positive: ER (strong, 90%)\nIHC negative: PR (weak, <1%), p16\np53 wild type, but in foci where atypia is considered marked P53 shows moderate to strong staining, ~70%. This corresponds to an estimated 35% staining for Ki-67 in these areas, with Ki-67 elsewhere very low.\n\n2021-12: FCC Report (PMCC):\nVUS: BRCA1 (NM_007294.3, c.339C>G, NP_009225.1:p.(Asn113Lys))\n\n2022-06 - 2022-08: Ascitic taps.\n\n2022-07: Anastrozole. Ongoing Bevacizumab, Carboplatin/Paclitaxel\n\n2022-10: Blood B1 received\n\n2022-11: FFPE Block 2.4 (umbilical nodule from 2021-11 surgery) received.\n\n2022-03: DNA from FFPE Block 2.4 sent for WES\n\n2023-05: Fresh tissue S1 received: ~1L ascites.";
      brca_report = "SFRC01651_GermlineBRCA_21Dec21_Redacted.pdf";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "21/09/2022: Nov 2021 sample requested form PMC pathology by Devindee.\n10/10/2022: Nov 2021 sample re-requested from PMC pathology by Devindee.\n08/11/2022: Nov 2021 block received.";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01651";
  }
