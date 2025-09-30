with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1V";
      class = "tumours";
      pdx = false;
      r1 = "Fg/Qw/SHA256E-s25019144507--3ab472a92c576f449ddf8790ee21e293c690b21522be7c973a893db0de9eb452.gz/SHA256E-s25019144507--3ab472a92c576f449ddf8790ee21e293c690b21522be7c973a893db0de9eb452.gz";
      r2 = "FG/zW/SHA256E-s26010384439--101a437182219a9a5c6031fdacfb7a4e8e3e81e6f72deaed5e6cf58bca45b2d1.gz/SHA256E-s26010384439--101a437182219a9a5c6031fdacfb7a4e8e3e81e6f72deaed5e6cf58bca45b2d1.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "MZ/98/SHA256E-s5800743261--28fa14ccb7b14285a8547ff06f84a68d25a0a1e5c76b65ece37b25d6d6dcdb1a.gz/SHA256E-s5800743261--28fa14ccb7b14285a8547ff06f84a68d25a0a1e5c76b65ece37b25d6d6dcdb1a.gz";
      r2 = "p7/5z/SHA256E-s6267730625--cff0a9335c20f8b852d15a8dd106c59dae0a188b1f1690a2a2911e769315936a.gz/SHA256E-s6267730625--cff0a9335c20f8b852d15a8dd106c59dae0a188b1f1690a2a2911e769315936a.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare's meeting 20.12.2021\n1V: organise WES";
      d_case_summary = "Endometrioid adenocarcinoma Gr 1 with background complex atypical hyperplasia\nMMR on ovarian mets showed loss of PMS2 and MLH1\nImmunohistochemistry panel: p53 wild type\nTAHBSO 27May21, no fresh tissue available.";
      date_consented = "2021-07-05";
      tumour_type = "Endometrial cancer (other)";
      tumour_details = "Endometrioid adenocarcinoma, grade 1";
      case_details = "61yo woman\n\n2021-05:\n- Endometroid adenocarcinoma, grade 1. \n- Multiple predominantly surface deposits of adenocarcinoma of both ovaries, favouring metastasis (grade 2)\n- Omentum contained scattered small deposits of metastatic adenocarcinoma (grade 2)\n- Left pelvic sidewall and pouch of Douglas: metastatic adenocarcinoma. \n-Tumour tissue fixed and blocked (Block 1V)\n\nHormone receptors:\nER: strong\nPR: weak\n\nMMR: \nPerformed on ovarian metastasis, showed loss of PMS2 and MLH1\n\nIHC: p53 (wild type)\n\n2021-12: \nBlood: B1\nFFPE of endometrioid adenocarcinoma: 1V ";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "2021 sample received by Devindee 07/12/2021. ";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01430";
  }
