with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "JP/fF/SHA256E-s1876955126--f68bb13da2f90409cb30e3b39f57d38cf11ccfe95a49ef4c5519ce9983d711a4.gz/SHA256E-s1876955126--f68bb13da2f90409cb30e3b39f57d38cf11ccfe95a49ef4c5519ce9983d711a4.gz";
      r2 = "Zx/P5/SHA256E-s1890476444--35fb02c7cb2bd3bb3c1775489a28bae60cb48acf8dfd063de4746d6025829bc7.gz/SHA256E-s1890476444--35fb02c7cb2bd3bb3c1775489a28bae60cb48acf8dfd063de4746d6025829bc7.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "1z/7Z/SHA256E-s1880422002--c8a64ce2444457c18ac791318401250faea0dbd4c48625da49dd2f2d862af992.gz/SHA256E-s1880422002--c8a64ce2444457c18ac791318401250faea0dbd4c48625da49dd2f2d862af992.gz";
      r2 = "gF/Xk/SHA256E-s1896857012--66be7f90ea2531e4a491a2e1f4fcdfa352fcbdcc3fff18557abea46a87deeb19.gz/SHA256E-s1896857012--66be7f90ea2531e4a491a2e1f4fcdfa352fcbdcc3fff18557abea46a87deeb19.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Sample meeting with Clare 16.11.2023\nPlan on FFPE block 1C: This block is again from the breast cancer, SFRCadmin to organise recall on Adenosarcoma of uterus (the rare cancer)2023 \n\nClare's sample meeting 2023.10.05\nFFPE block LB (breast) do nothing for now, but if Kristy decide later it can be useful, this block could be use for WES.\nRecall another block for Adenosarcoma of uterus (the rare cancer) \n\n29.08.2023\nBen , Monica and Kristy contacted to find out if more blocks are being recalled.\n\nSample meeting 11.08..2023\nPlan on FFPE block 1K (no tumour) \n Was this Block recalled for Kristy as a negative control? Why is this case urgent? Is there any other block being recalled?  \nPLEASE ASK KRISTY / ADRIANA IN CASE NO BLOOD COULD BE OBTAINED \nADENOSARCOMA IS ALWAYS URGENT AS IT IS SUCH A DREADFUL PROGNOSIS - IF WE ARE TO RECOMMEND ANY TARGETED TREATMENT THEY NEED IT AS SOON AS THEY ARE PROGRESSING AFTER 1ST LINE THERAPY WHICH CAN HAPPEN VERY QUICKLY \nPLEASE ASK GAYANIE IF THERE IS A BETTER BLOCK FROM THE PATH REPORT OR IF SHE IS NOT AVAILABLE LET BRIONY KNOW THAT I NEED TO RING THE PATHOLOGIST TO ASK, THANK YOU ";
      blood_recall_history = "04Aug23 - Text sent\n31Aug23: Sep1998 sample requested from Melbourne Pathology by Monica\n31Aug23: Jan19sample requested from Australian Clinical Labs by Monica\n31Aug23: Feb19sample requested from Dorevitch (Heidelberg) by Monica\n11Sep23: Jan19sample received from Australian Clinical Labs by Monica";
      urgency_details = "As per Monica mentioned in the WhatsApp group";
      date_of_death = "02/2024";
      d_case_summary = "SMARC4A deficient sarcoma (revised from ESS w rhabdoid / osteoid overgrowth),\nmelanoma 25y ago, br ca 3y ago";
      date_consented = "2023-06-09";
      tumour_type = "Endometrial cancer (other)";
      tumour_details = "SMARC4A deficient endometrial sarcoma\nAlso, Breast Ca 2019\nMelanoma 1998";
      case_details = "64 years old female\t\t \n\n2023-03 \tInitial Diagnosis Adenosarcoma of uterus, surgery (D and C) \n*******3RD PRIMARY CANCER*******\nFFPE block 1K received  \nIHC positive: SATB2, Hcaldesmon, CD99 \nIHC Negative:  CD10, CD117, desmin, inhibin, cyclinD1, calretinin, ER, PR, EMA, AE1/AE3,    CK8/18, beta catenin, pan TRK, P53 (WT), P16, CD56, BRG1, myogenin \nINI1 is preserved. \nSurgery  TAHBSO \n\n2019-02: \t Initial Diagnosis, Breast cancer \n********2ND PRIMARY CANCER *********\nSurgery and Short course of TAM (poorly tolerated) No chemo / RT \nER 3+ and PR3+ in 95% of tumour cells  \nKI67: 10%, Her 2: neg \n\n1998\t\tInitial Diagnosis Melanoma, Surgery, Vaccine trial, further surgery  \n**********1ST PRIMARY CANCER **********\n\nFCC referral, Awaiting SFRCadmin response  to check on report, no blood yet   ";
      patient_information_complete = "Incomplete";
      case_urgent = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "01Feb2023- Mar2023 sample re-requested, as what was previously received did not contain tumour BM.\n08Feb2023- Pathologist phoned to say if previous block did not contain tumour then none of the other blocks would be any good. Suggested curettings, which were taken a few weeks prior to this sample. Path report sourced, Haris to request. BM\n\n3Jul23: Mar23 sample requested from Melbourne Pathology by Monica \n21Jul23: FU with lab\n27Jul23: Mar23 sample received from Melbourne Pathology by Monica \n11Oct23: 1Feb19 sample received from Dorevitch Pathology by Haris";
      mp_subgroup_sfrcp4_new_id = "3 or more primary";
      patient_alive = "No";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01772";
  }
