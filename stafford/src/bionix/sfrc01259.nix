with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "pv/z7/SHA256E-s2266558506--ebee516a96638c72d51f26b65cefbc9ec7432e0f328db37b8df3cb28c5dda34f.gz/SHA256E-s2266558506--ebee516a96638c72d51f26b65cefbc9ec7432e0f328db37b8df3cb28c5dda34f.gz";
      r2 = "k7/X4/SHA256E-s2451641423--faf1be5c78a521bc6eb72e8b5f9499b06062d3240e100307699a13b3dfea0182.gz/SHA256E-s2451641423--faf1be5c78a521bc6eb72e8b5f9499b06062d3240e100307699a13b3dfea0182.gz";
    }
    {
      site = "2B";
      class = "tumours";
      pdx = false;
      r1 = "wz/ZK/SHA256E-s3397230265--2fab416f944f2a1fecd29a2d51dc481f3b3e5c9c8807880574d0cf397919fd4d.gz/SHA256E-s3397230265--2fab416f944f2a1fecd29a2d51dc481f3b3e5c9c8807880574d0cf397919fd4d.gz";
      r2 = "Zw/9P/SHA256E-s3668896439--436a6172cbebdb9ab960d208318c7c038d517815420091ec2c0f2d3bf2e0fc09.gz/SHA256E-s3668896439--436a6172cbebdb9ab960d208318c7c038d517815420091ec2c0f2d3bf2e0fc09.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "29.10.2020 - RC Meeting notes in WES analysis summary\n\n16.10.2020\nWES report (vulval SCC) ready. Patient will see Clare in clinic on 17.11.2020, so discuss before then!\nBlock with nasal SCC has been reviewed. Kristy to decide what to do (more WES or nanostring)\n\nNo recent fresh tumour (nasal surgery was adhesions - this surgery did not happen). Send DNA for WES (sent 8.09.2020)\n\n24.07.2020\nNot to send for WES. Waiting to see if recent surgery has tissue to send for WGS (Sean to pay). Check back with Clare.\n\nMeeting with Clare 02.07.2020\nVulval SCC fits rare cancer. The nasal (skin) SCC was synchronous, so does not fit multiple primary criteria. Extract DNA from vulval block and send for WES.\n\nPlan- to recall both Bartholan's Gland and nasal tumour blocks to do WES. ";
      date_consented = "2019-12-03";
      tumour_type = "Gynae cancer other";
      tumour_details = "Vulval SCC,  Nasal SCC";
      case_details = "SCC Bartholin gland. Received radiotherapy to vulva and prophylactic nodal radiotherapy, 54 Gy in 30 fractions, completed on 21 January 2020. Also has a history of squamous cell carcinoma, right subdermal nasal bridge, received 66 Gy in 33 fractions, completed on 15 November 2019. Significant previous medical history of ulcerative colitis.";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "2019 Tissue (Bartholin's Gland) containing SCC was recalled from RWH via email on 17/03/2020 by Josh\n> This tissue has been received on 25/03/2020 by Josh\n\n2019 Tissue containing nasal SCC was recalled from StV via email on 10/09/2020 by Josh\n\n2019 SCC Slides Block 1A received from StV on 08102020";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01259";
  }
