with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "J5/Mp/SHA256E-s37426563625--4aa3d64f58b8091a6524003d600578b8c653f9176e135319ed2b26b5174c9ea8.gz/SHA256E-s37426563625--4aa3d64f58b8091a6524003d600578b8c653f9176e135319ed2b26b5174c9ea8.gz";
      r2 = "gw/9G/SHA256E-s39076094297--7c0c923144edad04c3d69a84a7c54cebe4025d5ef7d8338285926e4493563c45.gz/SHA256E-s39076094297--7c0c923144edad04c3d69a84a7c54cebe4025d5ef7d8338285926e4493563c45.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "76/pf/SHA256E-s80099118759--ae0746452af3d1e4b8ce3afdfd7ca696568261768fa7c4a51b74c733a214c5bd.gz/SHA256E-s80099118759--ae0746452af3d1e4b8ce3afdfd7ca696568261768fa7c4a51b74c733a214c5bd.gz";
      r2 = "jj/5K/SHA256E-s83955222000--30842d2aff49911a85dee326927b0e86cbe8e27a7c78e555a9ad2e3779eeccad.gz/SHA256E-s83955222000--30842d2aff49911a85dee326927b0e86cbe8e27a7c78e555a9ad2e3779eeccad.gz";
    }
    {
      site = "S2";
      class = "rna";
      pdx = false;
      r1 = "M0/VW/SHA256E-s6123452984--44a49c719d088a300c00a80c6a5f515bb36dcb51609c85753a453b7d43920e5c.gz/SHA256E-s6123452984--44a49c719d088a300c00a80c6a5f515bb36dcb51609c85753a453b7d43920e5c.gz";
      r2 = "K5/60/SHA256E-s5995666501--6ec5167d3fe0f7433d5803f3a551e16e2583a8a3bb77438a4ee7ce68db25823a.gz/SHA256E-s5995666501--6ec5167d3fe0f7433d5803f3a551e16e2583a8a3bb77438a4ee7ce68db25823a.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "HGSOC";
      meeting_discussions_follow_up = "Clare, Ratana, Rae 18.05.2023\nBROCA for Fresh tissue S2\n\nRC Meeting 18.08.2022\nDiscussed WGS report (Grimmond only).\nClare: not a good trial candidate. Has started PARPi. Damien says might be relevant for SHP1 trial, not SHP2 (closed, not relevant). No MYC amplification found.  \n\nClare's Meeting 30.06.2022\n-S2 OCT sample: send for WGS.\n-Nothing for S1, S3, S4, S5, S6 OCTs\n-Germline DNA: Mandy to ask Victoria Beshay for DNA (350ng needed for WES and WGS)";
      blood_recall_history = "Not well enough to have bloods taken, will contact us if and when that changes";
      date_of_death = "2/2023";
      d_case_summary = "45 yo woman\nKnown gBRCA1 mutation carrier \nDeclined RRSO due to disrupted social circumstances at that time\nDeveloped HGSOC with large ascites, drained\nDefinitive laparoscopy in Sept 2021 confirmed p53 mutant, PAX8 pos\n3 cycles of NACT from 27 Sept\nCA125 3200 to 2700 only\nHad declined bevacizumab with C2-3\nIs being considered for IDB - if not suitable then may agree to Bev with C4\n ";
      date_consented = "2022-05-20";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC";
      case_details = "45yo woman\n\n2021-09: Diagnosed HGSOG, BRCA1 mutation. Presented with malignancy; massive ascites requiring ascitic drain (7L). Imaging showed left adnexal mass with omental caking, ascites and pleural effusion, enlarged para-aortic lymph nodes.\nSurgery: Laparoscopy. \nIHC positive: p53, PAX8, WT1 and p16. \n\n2021-09: Commenced neoadjuvant chemotherapy; carboplatin with an AUC of 6x 3 weekly with paclitaxel.\n\n2022-04: total laproscopic hysterectomy with left salpingo-oophorectomy ventral peritonetomy, R USL nodule, pararectal nodule, R & L anterior peritoneal nodule. HGSC left ovary.\nIHC positive: p53, WT1, p16 mosaic, PAX8, ER 2+ 70%, PR 3+ 20%.\n\n2022-06: Tumour tissues from surgery received Tissues S1 - S6.\n\nAwaiting blood, is too unwell.";
      brca_report = "SFRC01579_BRCAPanel_09Sep2020_Redacted.pdf";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      patient_germline_mutations = "BRCA1";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01579";
  }
