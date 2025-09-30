with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "75/FM/SHA256E-s2754895738--cccf632e65ee5e6946c53bdefe3f061cd94d2317b4703d7d75b094be4c809d8a.gz/SHA256E-s2754895738--cccf632e65ee5e6946c53bdefe3f061cd94d2317b4703d7d75b094be4c809d8a.gz";
      r2 = "35/8p/SHA256E-s2971946317--db8fa74e14fa5bbe1a515a393636cb69db11d09212b5148b253d853bb4dbae66.gz/SHA256E-s2971946317--db8fa74e14fa5bbe1a515a393636cb69db11d09212b5148b253d853bb4dbae66.gz";
    }
    {
      site = "S1_T1";
      class = "tumours";
      pdx = true;
      r1 = "Pq/x4/SHA256E-s7918578953--d966c67b71150de76913b4554260c4cda076e53a012e5319a0c382211ebd6adb.gz/SHA256E-s7918578953--d966c67b71150de76913b4554260c4cda076e53a012e5319a0c382211ebd6adb.gz";
      r2 = "vV/Gv/SHA256E-s8484701436--a990476b6cc20256c2d6d04d7884652b03e7b16a37a14069f8bf18339f729a56.gz/SHA256E-s8484701436--a990476b6cc20256c2d6d04d7884652b03e7b16a37a14069f8bf18339f729a56.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting notes 01.10.2020\nDiscussed BROCA results. (S1 and S1_T1).\n\nHad responded in SOLACE1 for a long time. Liz found a germline FANCA mutation. Does this FANCA mutation need to be reported for the family?  \n\nBRCA1 mutation of interest to Kas - d11Q \n";
      date_of_death = "11/2017";
      d_case_summary = "HGS Ov, gBRCA 1/2 WT, PARPi responder 18/12. Deceased 14/11/2017.";
      date_consented = "2016-11-08";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC, PARPi responder, now regressing";
      case_details = "Was on SOLACE trial receiving olaparib and oral cyclophosphamide for > 9 months";
      pre_analysis_mutations = "FCC - gBRCA1/2 WT\nSomatic BRCA1 mutation";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "2010 sample slides received by Devindee 16/12/2021. ";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01032";
    capture = CREv2;
  }
