with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Jz/K0/SHA256E-s36805557009--6dbb8abf29af7dcbee2616694ab853982d882f30a4be66f8ec03cc0144a27e0c.gz/SHA256E-s36805557009--6dbb8abf29af7dcbee2616694ab853982d882f30a4be66f8ec03cc0144a27e0c.gz";
      r2 = "3g/QF/SHA256E-s39334422122--ea0a249ed2f03f77ccfbbcdfe6f670f3012c28f5519633e2903a99ee1d9d4103.gz/SHA256E-s39334422122--ea0a249ed2f03f77ccfbbcdfe6f670f3012c28f5519633e2903a99ee1d9d4103.gz";
    }
    {
      site = "S5";
      class = "tumours";
      pdx = false;
      r1 = "k1/zm/SHA256E-s72113653132--9b07eebe581e849125294a8e9405dc5fdc09637502bf42d62c7a618993552aa4.gz/SHA256E-s72113653132--9b07eebe581e849125294a8e9405dc5fdc09637502bf42d62c7a618993552aa4.gz";
      r2 = "w9/26/SHA256E-s77457517610--d830a9642fac779d4de7f565f651468bb5374cb94d0265958ff292b33c93b0ff.gz/SHA256E-s77457517610--d830a9642fac779d4de7f565f651468bb5374cb94d0265958ff292b33c93b0ff.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "LGSOC";
      meeting_discussions_follow_up = "Clare and Ratana meeting 4.07.2022\nGoing through WGS cases, saw that WGS was done on DNA only, found PTPN11 and other findings without expression data.\nExtract RNA from the S5 to send for WTS. Mandy to find updated patient notes, see if doing well or not.\n\nMeeting notes 2.4.20:\n26 yo - Considering carbo/caelyx but difficult wrt COVID19 \nThis is 2nd line chemo and not working well (first line was carbo-paclitaxel) \nPotential for palbociclib based on CDKN2A mutation? \nHolly check with Joep about additional findings on this case \nTony and Clare to approve report and send to clinician \n\nMeeting notes 2019.10.24\nSend DNA from S5 OCT for WGS,.\n\nMeeting notes 2019.09.26\n  Send for WGS with blood. S1 and S3 not high enough tumour purity and S4 went straight into formalin so no good. Get S5 (snap frozen piece, cut a section for OCT and keep some snap frozen section not in OCT) sectioned to check tumour purity and if ok send a piece of that for WGS. \n\nTry organoids with mince from S3, None of these pieces went into the mice either so when thawing should put some into mice. ";
      date_of_death = "11/2020";
      date_consented = "2019-07-25";
      tumour_type = "LGSOC";
      tumour_details = "LGSOC  2019.10.17  Gayanie's reviewed all section again and final diagnosis is low grade serous carcinoma. Most likely primary site is the ovary.    Initial diagnosis: HGS(?)- pathology to confirm  Gayanie diagnosis (metastatic high grade serous carcinoma)";
      case_details = "2020.04.24\nWaiting for news if clinician thinks Palbociclib can be added to the AI hormonal therapy\n\nWGS clinical notes\n25 yo woman originally thought to have HGSOC but post 3 cycles of NACT with minimal effect and IDB, diagnosis was changed to low grade serous ovarian cancer and chemo ws replaced with hormone therapy. She had extensive disease involving bowel resection. WGS for treatment targets.";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01205";
  }
