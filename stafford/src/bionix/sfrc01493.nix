with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1L";
      class = "tumours";
      pdx = false;
      r1 = "WZ/m1/SHA256E-s14679752107--bbeb17c413b07a1a031a04ccecf7f738dc72b8d78e0beddff635731dadbef8fd.gz/SHA256E-s14679752107--bbeb17c413b07a1a031a04ccecf7f738dc72b8d78e0beddff635731dadbef8fd.gz";
      r2 = "gg/GZ/SHA256E-s14974957920--2f532e85a7c5c74c333dde04d81126df6e9632498b309605cdd86cc6969f13fe.gz/SHA256E-s14974957920--2f532e85a7c5c74c333dde04d81126df6e9632498b309605cdd86cc6969f13fe.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "08/13/SHA256E-s7042805166--51c4abf80bb3b0b59537658e9eab5f96b861f0831d45eba4d0ba1c12828fa19c.gz/SHA256E-s7042805166--51c4abf80bb3b0b59537658e9eab5f96b861f0831d45eba4d0ba1c12828fa19c.gz";
      r2 = "J9/v6/SHA256E-s7522739681--f8669364c4429d2f6452415ed33381263ed5feaad72fe6599053576f83fe25d7.gz/SHA256E-s7522739681--f8669364c4429d2f6452415ed33381263ed5feaad72fe6599053576f83fe25d7.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Rare Cancer (WES) meeting 14.07.2022\nCase shows no TP53 mutation despite being present. \n-Clare recommends path review RE TP53 IHC. Can Gayanie do this? Give sections to Gayanie to stain TP53. \n-Mandy to prepare report with Damien. BUT not until the absence of TP53 absence is sorted! (all cases from this analysis showed no TP53 mutations)\n\nRC meeting 05.05.2022\nKas to send for methylation\nMultiple primary case (2) - Kristy to decide if included in her project. \n\nDiscussion with Clare 29.04.2022\nFFPE extraction (Block_1L); submit for BROCA and WES.\n\nBROCA meeting Amandine/Clare 04.03.2022\nif not done already, recall a baseline block. \nOnce block here, organise WES and BROCA urgently. ";
      d_case_summary = "met plat resistant HGSOC. gBRCAwt\nSmouldering multiple myeloma";
      date_consented = "2021-12-07";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC  Smouldering multiple myeloma";
      case_details = "2019-11: Initial Diagnosis - Primary high grade serous adenocarcinoma of ovary, Germline wtBRCA\nSurgery: TAHBSO, low anterior resection. HG serous carcinoma arising in (L) ovary/tube. Involvement of (R) ov/tube, uterine serosa, parametria, sigmoid/rectum, SB, omentum\nLeft ovary tissue-1L fixed and blocked \nChemo: Adjuvant Carboplatin / weekly Paclitaxel (until 04-2020)\nIHC positive: WT1, p16, CK7, PAX-8, ER, CA25. Diffuse positive staining of p53\n\n2021-07: Medical Treatment\nRising Ca125 06/2021 -> PET nodal / peritoneal recurrence. Rx Carbo / Gemcitabine x 2\n\n2021-08 - 2021-10: Rising Ca125 / PET stable Rx Carboplatin / Caelyx x 3\n\n2021-11: Ipilimumab / Nivolumab\n\n2022-02: Blood B1 received\n\n2022-03: Tissue from block 1L received\n";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "07/03/2022: Nov 2019 sample requested from Melbourne Pathology by Devindee \n18/03/2022: Nov 2019 sample slides received from Melbourne Pathology by Devindee. ";
      patient_germline_mutations = "BRCAwt";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01493";
    capture = CREv2;
  }
