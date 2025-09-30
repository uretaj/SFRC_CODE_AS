with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "4J/Q8/SHA256E-s23811756876--a56ff040789422b6ed1e840839241cfb1211af44a2ac60f589eb0dd82c55e67a.gz/SHA256E-s23811756876--a56ff040789422b6ed1e840839241cfb1211af44a2ac60f589eb0dd82c55e67a.gz";
      r2 = "4k/q3/SHA256E-s25512883286--74d577fe9b4b7e78377ba5759df787a32afcbe76caa64e48041c9cfa1fca85f9.gz/SHA256E-s25512883286--74d577fe9b4b7e78377ba5759df787a32afcbe76caa64e48041c9cfa1fca85f9.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "vP/pW/SHA256E-s23642024701--a5a5a7f85e5ca03338cf52b55fe7157d1fe50f1b3c606dbb6f56e6dd0f0be280.gz/SHA256E-s23642024701--a5a5a7f85e5ca03338cf52b55fe7157d1fe50f1b3c606dbb6f56e6dd0f0be280.gz";
      r2 = "Jx/MZ/SHA256E-s25498251424--1aa150bb494c62276d6dfc01bb97ee26244b820668693072e9381e06120dedd6.gz/SHA256E-s25498251424--1aa150bb494c62276d6dfc01bb97ee26244b820668693072e9381e06120dedd6.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "KK/W3/SHA256E-s53852065802--385abeb5d84d1b563879c15a1d29db1bdd345ff50720aac47cb636bee9177d33.gz/SHA256E-s53852065802--385abeb5d84d1b563879c15a1d29db1bdd345ff50720aac47cb636bee9177d33.gz";
      r2 = "p1/J5/SHA256E-s57793371131--857c1329e7af698ed8d2f3bebe44c090ac18a9b3a4241558e25a9863380dadb8.gz/SHA256E-s57793371131--857c1329e7af698ed8d2f3bebe44c090ac18a9b3a4241558e25a9863380dadb8.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "VK/68/SHA256E-s53487819005--a25aedb661c43409bafa3047dfa83d14ab438278ed504916003c4dad88664bb2.gz/SHA256E-s53487819005--a25aedb661c43409bafa3047dfa83d14ab438278ed504916003c4dad88664bb2.gz";
      r2 = "6X/9w/SHA256E-s57830011207--cd5715fe2bd8caf115a54dd37570bc807cc48c747bc786156a009b5e97e554ca.gz/SHA256E-s57830011207--cd5715fe2bd8caf115a54dd37570bc807cc48c747bc786156a009b5e97e554ca.gz";
    }
    {
      site = "S2";
      class = "rna";
      pdx = false;
      r1 = "Vg/8z/SHA256E-s2566868270--c93bb32b9765f26ab4bc34fe2af8ed17ebfa5d6202134c30fe6c711655d48c29.gz/SHA256E-s2566868270--c93bb32b9765f26ab4bc34fe2af8ed17ebfa5d6202134c30fe6c711655d48c29.gz";
      r2 = "G6/mf/SHA256E-s2559126954--efe8e5ee381ecfa31e693033a39b9742ed4a0c60e921a73a9a512d086f7ec925.gz/SHA256E-s2559126954--efe8e5ee381ecfa31e693033a39b9742ed4a0c60e921a73a9a512d086f7ec925.gz";
    }
    {
      site = "S2";
      class = "rna";
      pdx = false;
      r1 = "4Z/3v/SHA256E-s2612683794--7a9b70e425f0ec12c56a65a778918c11d49a7a302745c7bdbbe91d2066819e67.gz/SHA256E-s2612683794--7a9b70e425f0ec12c56a65a778918c11d49a7a302745c7bdbbe91d2066819e67.gz";
      r2 = "Vw/61/SHA256E-s2644957986--3efa98a6c6aa79809ccc0ebf60b68563ccec40e6a5794fb6ee2115981aabcbbf.gz/SHA256E-s2644957986--3efa98a6c6aa79809ccc0ebf60b68563ccec40e6a5794fb6ee2115981aabcbbf.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 11.4.24:\nNo Sig6, low TMB. \nMSH2 AF 35% - heterozygous.  \nMHC Class I defect (with relation to HLA-A) \n\nSample meeting with Clare 16.11.2023\nPlan on FFPE block 1.1 (059): We have received fresh tissue x2, and recalled an ffpe block. We are struggling to get some tissue with a good amount of tumour purity.  \n\nWGS was performed and failed.  \n\nThis block is again on the low side. Should we attempt WES on this block? I think all the OCT slides have been used but I think there is still some tissue in the block that could be cut. That OCT block is the one with the highest tumour purity (that Grimmond said was <30%). Do WES on this instead? \n\nNew plan: Do WES-TWIST on this block. \n\nRC Meeting 24.08.2023\nDiscussed WGS report with SFRC data.\nWGS failed in Grimmond lab.\nSFRC WGS report is in agreement with this. Purity low at 25% and there are no notable genomic or somatic variants. \nSFRC copy number data look unreliable. CN spider plot has large yellow circle and warnings. Lots of focal deletions (e.g. ARID1A) but not sure if reliable due to model warnings. \nFit is very bad, overly segmented. Poor quality sample. \nTo look at MHC Class, Justin used HLA for reference. Could not find anything. Poor quality overall. There may be LOH, but that cannot be confirmed. \nCan mention to Clare that there may be LOH, but it's hard to confirm. Don't know how to confirm without another sample. \n\n\nClare's sample meeting 14.07.2023\nPlan for fresh tissue S2:  Send for WGS.  \nNote this can be a real cervical never responder, please check MHC Class I (attention Joep and Sean) URGENT \n\nClare's sample meeting 29.06.2023\nNothing to do for now, wait for new fresh sample from today's surgery.\n\nClare's meeting 2023.05.18\nPlan for fresh tissue S1: very low tumour purity  \nMake more OCT block from the snap frozen we have 2 vials? Yes  \nrecall biopsy block for WES? Yes (Rae emailed Monica 18.05.2023) ";
      blood_recall_history = "Blood to have with the biopsyy - 14June23\n\n14June23 - Biopsy cancelled - to have at next biopsy";
      urgency_details = "Never responder.";
      date_of_death = "01/2024";
      d_case_summary = "cervical adenocarcinoma- never responder";
      date_consented = "2023-04-04";
      tumour_type = "Cervical adenocarcinoma";
      tumour_details = "Cervical adenocarcinoma, Never responder";
      case_details = "33 years old female \n\n2022-12:\t Initial diagnosis cervical adenocarcinoma\nCervical Biopsy  \nIHC positive p16, mCEA  \nIHC negative : GATA3  \n\n2023-03: \tCisplatin weekly with concurrent radiotherapy, staging FIGO stage IB3, FFPE block 1.1 received  \nSurgery, fresh tissue S1 received  \nIHC positive: P16, HER2 2+  \nER and PR negative  \n\n2023-04:\t Brachytherapy \n\n2023-06: \tSurgery, fresh tissue S2 and blood B1 received ";
      patient_information_complete = "Incomplete";
      case_urgent = "Yes";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "19May23: Mar23 sample requested from PMCC by Monica\n13Jun23: Mar23 sample received from PMCC by Monica\n5Oct23: 29Dec23 sample requested from Monash Health by Haris.\n22Oct23: 29Dec22 sample received from Monash Health by Haris.";
      mp_subgroup_sfrcp4_new_id = "Rapid Progressor";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01740";
    hlaTarget = false;
  }
