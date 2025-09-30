with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1E";
      class = "tumours";
      pdx = false;
      r1 = "qQ/vk/SHA256E-s19290032819--b34675e36d74a8faa58b112501ae28b8ddf55e416d6933fa3c78f92d5d60480e.gz/SHA256E-s19290032819--b34675e36d74a8faa58b112501ae28b8ddf55e416d6933fa3c78f92d5d60480e.gz";
      r2 = "zZ/2X/SHA256E-s19838757766--c5cab3bb34c27f06fb5a1a1541c509ffe8a93a759fc60c7ef03f35fbf8c39dee.gz/SHA256E-s19838757766--c5cab3bb34c27f06fb5a1a1541c509ffe8a93a759fc60c7ef03f35fbf8c39dee.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "kX/Qm/SHA256E-s4387852132--aed46cab77d1ae59cea5de15a0e283c6d1f380549bff9e70808449f335db06c7.gz/SHA256E-s4387852132--aed46cab77d1ae59cea5de15a0e283c6d1f380549bff9e70808449f335db06c7.gz";
      r2 = "XK/J2/SHA256E-s4620568760--5172d8206dd60ac5840221f4a17f0523fc15c6c46b8688b6faa72f2dd09b151d.gz/SHA256E-s4620568760--5172d8206dd60ac5840221f4a17f0523fc15c6c46b8688b6faa72f2dd09b151d.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 17.11.2022\nDiscussed WES report:\nCNV is not adequate, can't make any calls.\nMatt: Can't call HRD\nSame results as TSO500, WES provides no other insight. \nNo report needed. Briony to check in with Dr and tell them WES didn't provide anything more.\nMandy to check if germline BRCA2 is VUS: Benign/likely benign.\n\nRC meeting 05.05.2022\nPlan: Briony to send HER2 result to ARC portal. Follow up with Kylie Gorringe RE mucinous case, WES to follow in 3 mos. \n\nRC meeting 07.04.2022\nBlock 1E: Organise Her2 ISH. Send for WES. Contact Kylie Gorringe and ask if she would like to take over the case. ";
      d_case_summary = "Mucinous ovarian CA. For HER2 DISH testing.";
      date_consented = "2021-11-27";
      tumour_type = "Ovarian Cancer other (including mixed)";
      tumour_details = "Mucinous ovarian cancer";
      case_details = "40 years old female, referred to HIPEC, CRS\n\n2019-01: Stage IC mucinous adenocarcinoma of left ovary\nSurgery\nIHC positive- CK 7, CK 20 very focal positivity in few clusters, CDX2 patchy positivity, PAX 8 focal moderate to weak positivity in a small number of tumour cells\nER and PR negative. \n\n2021-02   Surgery, Right ovarian mass identified in pregnancy (metastatic mucinous adenocarcinoma), FIGO stage IIIC, FFPE block 1E received ( 60-70% within black area, <10% entire sample )\nIHC positive: CK7, CDX2, CK20, PAX8\nER, PR negative\nNo loss of MMR proteins\nHER2 IHC 30% staining.\n\nChemo declined due to pregnancy\n\n2021-10: Laparoscopic washings and biopsy of omentum\nCommenced carboplatin and paclitaxel.\n\n2021-11: Referred to the ARC Portal to assist with HER2 DISH testing, and to assist with procuring\ntrastuzumab should HER2 DISH be amplified.\n\n2021-12: BRCA test on ovarian mass (2021-02): \nVUS: BRCA2, 37%\n(NM_000059.3: c6626T>C, p.(Ile2209Thr)\n\n2022-03: Blood B1 received. FFPE Block 1E received.\n\n2022-04: FFPE slides for Her2 sent to PMCC. \nResults: Equivocal 2+\n\n2022-07: TSO500 Report on omentum biopsy (2021-10):\nKRAS, 42% (p.G12A c.35G>C, NM_033360.2)\nTP53, 10.5% (p. ?, c.376-1G>A, NM_000546.5)\nCDKN2A, 12.5% (p.Y44*, c.131dupA, NM_000077.4)\nERBB3, 6.6% (p.E928G, c.2783A>G, NM_001982.3)\nPIK3CA, 9.9% (p.R93W, c.277C>T, NM_006218.2)\n\n2022-08: DNA from Block 1E and Blood B1 sent for WES\n\n2022-09: Potential to go on BGB283 Clinical trial due to KRAS G12A variant\n";
      brca_report = "SFRC01512_BRCAReport_23Dec2021_Redacted.pdf";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "BRCA2";
      portal_letter = "SFRC01512_ARCPortal_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "14/02/2022: Feb 2021 sample tissue requested from RCH laboratory services by Devindee.\n03/03/2022: Feb 2021 sample slides received by Devindee. ";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01512";
  }
