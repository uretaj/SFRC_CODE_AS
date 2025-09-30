with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      r1 = "v4/vF/SHA256E-s2668590274--0eb698670478961eb079d3ef554727da697285a43c3d6f12c8f6e84f95ddf0cf.gz/SHA256E-s2668590274--0eb698670478961eb079d3ef554727da697285a43c3d6f12c8f6e84f95ddf0cf.gz";
      r2 = "fF/jK/SHA256E-s2847158624--635b7ce718ac6c079776f88128c10ee2d36fbd6282ecaa9a3a4881d63d914148.gz/SHA256E-s2847158624--635b7ce718ac6c079776f88128c10ee2d36fbd6282ecaa9a3a4881d63d914148.gz";
    }
    {
      site = "T1";
      class = "tumours";
      r1 = "J9/qJ/SHA256E-s5152020688--751cb0c19c4a148007e7f9f45627052871a05ab7321ffadd6b8a9dfe049b13a7.gz/SHA256E-s5152020688--751cb0c19c4a148007e7f9f45627052871a05ab7321ffadd6b8a9dfe049b13a7.gz";
      r2 = "Mk/50/SHA256E-s5458022709--e2148dd971558fd15874bab71271f448b24bb3630a81473d4017d7764eb0fd50.gz/SHA256E-s5458022709--e2148dd971558fd15874bab71271f448b24bb3630a81473d4017d7764eb0fd50.gz";
      pdx = true;
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting notes 15.10.2020\nDiscussed WES results.\nPDX is responding to PARPi - sig 3 is low down the list - due to MMR? \nPotential treatment: PARPi + PDL1i combination \n\nMeeting notes 2020.03.26\nPlan: Has had PeterMac BRCA testing (FCC) but no report (Briony to check), add to list for BROCA\n\nMeeting notes 2020.03.12\nReview clinical notes before planning ";
      myriad_report = "SFRC01240_MyriadResult_22Dec21_Redacted.pdf";
      date_of_death = "06/2023";
      d_case_summary = "HGSOC COV panel germline WT. 8217300 referred to Sumi Ananda for standard chemotherapy. referred for somatic BRCA";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC";
      case_details = "HGSOC Dx on BSO on 31/10/2019. Suboptimal debulking. Tumour involving omentum, sigmoid, small bowel, uterosacral bx positive, left PSW\n\nBRCA WT, awaiting somatic mutation not found\n\n6 x carboplatin/paclitaxel and avastin completed Feb 27 2020, then on maintenance avastin\n\nPET aug 2020, PA node is highly FDG avid. \n\n?palliative radiotherapy";
      brca_report = "SFRC01240_BRCA_31102019_Redacted.pdf";
      myriad_submission = "Yes";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "Myriad HRD Positive (BRCA neg) score 61";
      receipt_eyebrow_hairs_complete = "Incomplete";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01240";
    capture = CREv2;
  }
