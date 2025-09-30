with import ./milton-slurm.nix {
  overlays = [(_: super: with super; {xHLA = def xHLA {mem = 60;};})];
}; let
  samples = [
    {
      site = "4A";
      class = "tumours";
      pdx = false;
      r1 = "9q/Q4/SHA256E-s16764859891--2d285dff72ed5855fe979573a4bd8d8c19ee239d3bbca86a186fc437155ceeb8.gz/SHA256E-s16764859891--2d285dff72ed5855fe979573a4bd8d8c19ee239d3bbca86a186fc437155ceeb8.gz";
      r2 = "6X/jg/SHA256E-s17566266410--09b178ba74a9b78f7210e2fdaa5d5b39d3792b531142a95bb2d44852e9e42737.gz/SHA256E-s17566266410--09b178ba74a9b78f7210e2fdaa5d5b39d3792b531142a95bb2d44852e9e42737.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "kP/Wx/SHA256E-s7114036626--56064328c6c2dffec9a820f9c7435d7874f6fbc07c85cc093cbd54f50ed181b6.gz/SHA256E-s7114036626--56064328c6c2dffec9a820f9c7435d7874f6fbc07c85cc093cbd54f50ed181b6.gz";
      r2 = "qX/0q/SHA256E-s7566469974--e7d07bdbc4d7d83f1109e1acd7942511e442376f04f21222ea8f5ab7ecbf28cc.gz/SHA256E-s7566469974--e7d07bdbc4d7d83f1109e1acd7942511e442376f04f21222ea8f5ab7ecbf28cc.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "AOCS 134004,  CA0125";
      meeting_discussions_follow_up = "WES meeting 14.07.2022\n-Sample has been sent for BROCA, can compare with WES and get broader picture of results. \n-Damien doesn't believe it's worth releasing report. as Artefact present in results. Patient deceased. \n-Only thing to note is BRCA2 and where the deletion is. Mandy to look into BRCA2 germline report. \n***Wait to report until TP53 absence is sorted. \n\nDiscussion with Clare re BROCA 17.05.2022\nReceived sections from FFPE Block 4A (pelvic pre-sacral region) and freshly extracted DNA for WES that has tumour. Can send this in place of S4.\n\nClare's meeting 20.12.2021\nPlan: Is a super responder (was on lots of trials in between the 10 years between diagnosis and end) \nRecall baseline tissue(Warren and Briony emailed 06.01.2022, 10.1.2022: Warren made the block request). For the reasonable tumour purity samples (S4) send for BROCA \nNanostring and WES for other projects \nFind OCT samples of highest tumour purity, consider WGS. But want BROCA first.  \nCheck with Cass and Amandine about best samples for WGS. Is a control for multiple primary. Kristy can do opal staining with Amelia. \n\nBroca meeting 2021.10.07\nFind out if we got any PDX and discuss as a group during Clare's meeting to decide which samples to do WES on.\n\nRC Meeting notes 01.04.2021\nHave reviews on the 9 CASCADE samples. David Bowtell would publish this. This would be valuable to SFRC if we get a PDX.\nCould do WES on one sample (highest purity) to get background information.\n\n03.12.2020\nCascade samples reviewed. To bring up at RC Meetings.\n\nPhone call from Clare 13.10.2020\nwill be Cascade case CA0125. AOCS 134004 - any mince? Did not have ethics at the time of collection to create PDX, but now?\n\nMeeting notes 26.03.2020\nPlan: TP53 and PALB2 somatic mutations (ALLOCATE), not sufficient tumour to do anything \n\nMeeting notes 27.02.2020\n This patient has undergone multiple lines of therapy, multiple clinical trials, BRCA carrier, post PARPi.  We need to get some DNA from this patient for WGS. Try blocking more Snap Frozen tissue for OCT to see if there is some tumour. \n\nMeeting notes 2019.12.05\nAmandine to send email to Clare and Briony  to let treating clinician know that their tissue has no tumour ";
      date_of_death = "11/2020";
      date_consented = "2019-12-19";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC Dx 2011, died 2020, BRCA2 mutated HGSOC (Beigene PARPi)";
      brca_report = "SFRC01245_BRCAReport_01May2019_Redacted.pdf";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "14/02/2022: Nov 2019 sample tissue requested from RCH laboratory services by Devindee. \n03/03/2022: Nov 2019 sample slides received by Devindee. ";
      mp_subgroup_sfrcp4_new_id = "Super Responder";
      patient_germline_mutations = "BRCA2";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01245";
  }
