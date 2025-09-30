with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "jF/39/SHA256E-s29680557500--1845ee6b863040c7271cabd4d1d5a3ae734a6d5eccc98ada3bb70028545e8f10.gz/SHA256E-s29680557500--1845ee6b863040c7271cabd4d1d5a3ae734a6d5eccc98ada3bb70028545e8f10.gz";
      r2 = "1w/44/SHA256E-s31981999848--4e3fa22e962d4656c0eada517e8a0a7297de13c320e3f18b9690f20ceedc9583.gz/SHA256E-s31981999848--4e3fa22e962d4656c0eada517e8a0a7297de13c320e3f18b9690f20ceedc9583.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "22/WF/SHA256E-s13134749673--831dd219b4de0e40a1ef55925555f10a3155712118f347fdad756c06b842ba96.gz/SHA256E-s13134749673--831dd219b4de0e40a1ef55925555f10a3155712118f347fdad756c06b842ba96.gz";
      r2 = "9f/K6/SHA256E-s14281112290--ce5d8d99a9b9be3964225da66461ea7115a91f75bc30478c5de1ee050c12a0fb.gz/SHA256E-s14281112290--ce5d8d99a9b9be3964225da66461ea7115a91f75bc30478c5de1ee050c12a0fb.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "vv/ZJ/SHA256E-s53179487706--557b77091dfc906ce462f8571a2099164284329f16f4921aadd5823421797625.gz/SHA256E-s53179487706--557b77091dfc906ce462f8571a2099164284329f16f4921aadd5823421797625.gz";
      r2 = "wp/QG/SHA256E-s56994107218--5165a92443c9510b35a8386fac14159645918454cbf39a6be6ce4f968e674d55.gz/SHA256E-s56994107218--5165a92443c9510b35a8386fac14159645918454cbf39a6be6ce4f968e674d55.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "qf/K3/SHA256E-s27739289486--4127e2b38b16b455a6b6b32a9398b77b4f8ba81429adb2b2bdde43278e98e953.gz/SHA256E-s27739289486--4127e2b38b16b455a6b6b32a9398b77b4f8ba81429adb2b2bdde43278e98e953.gz";
      r2 = "mg/X5/SHA256E-s29930199307--935e63bd11396b6f73fa03096e1bb510fccf9270735c7f2e86f4bbc31904a9e4.gz/SHA256E-s29930199307--935e63bd11396b6f73fa03096e1bb510fccf9270735c7f2e86f4bbc31904a9e4.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "clear cell";
      meeting_discussions_follow_up = "Broca meeting 21.03.2022\nSend S2 for BROCA, same sample as WGS\n\nMeeting notes 2.4.20:\n44yo - diagnosed in Jan 2019 \n\nLaparotomy, R oophorectomy and omentectomy March 6th of March 2019 - incidental finding of right adnexal mass \n\nThis surgery sample (before chemo) was what was sent for WGS \n\n6 cycles of chemo followed with secondary de-bulking in July, on bevacizumab \n\nATARI trial eligible (ATM and ARID1A)? ATR inhibitor trial in London  \n\nTony has nothing to add - Tony and Clare to approve report and forward to clinician, also send to Michael Friedlander and Susie Banerjee (ATARI) for opinion \n\nMeeting notes 2019.11.28\nOCT DNA extracted, Ali's patient, 44 yo female, send this one for WGS as priority, Clare to update clinical spreadsheet \n\nMeeting notes 25.07.2019\nDecision: For WGS, Joep to analyse  \nKylie Gorringe will do sample dissection, make DNA and run the case for us and we'll curate the results and provide any actionable info to clinician \nThis will be the approach for young mucinous cases from now on ";
      date_of_death = "08/2022";
      date_consented = "2019-05-22";
      tumour_type = "Clear cell ovary";
      tumour_details = "Ovarian Clear Cell Carcinoma";
      case_details = "WGS clinical details:\n44 year old with ovarian clear cell  carcinoma; post second debulking surgery to recommence adjuvant chemo; R oophorectomy and omentectomy March 6, 2019; post-op PET  large residual mesenteric  mass, having additional  chemo post second  debulk; for WGS as clear cell, likely drug resistant\n; final  cycle 22/8, now on bevacizumab, awaiting WGS results but hopefully will not relapse for some months\n\n44 yo woman with advanced clear cell ovarian cancer, who has not been optimally debulked and may do very poorly\n\nRight Ovarian Mass Laparotomy - Monash Health\nAccession no: 190004987\nCollected: 06-Mar-2019";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      histology_summary = "IHC:\n- positive: Napsin A, glypican3, PAX8\n- negative: Er, PR\n- p53 wild type";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01179";
  }
