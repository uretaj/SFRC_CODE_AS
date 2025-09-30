with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2D";
      class = "tumours";
      pdx = false;
      r1 = "FZ/QM/SHA256E-s7285137608--7877559f7cf9adb6c088bdb56d6b3dfdc129cb6fa3fbe439f310d3f2309329f2.gz/SHA256E-s7285137608--7877559f7cf9adb6c088bdb56d6b3dfdc129cb6fa3fbe439f310d3f2309329f2.gz";
      r2 = "FG/9p/SHA256E-s7251737561--aea6deb0012f89d335c055300273cbe7b7dfc2d3d0c28f60620a0666c97c9534.gz/SHA256E-s7251737561--aea6deb0012f89d335c055300273cbe7b7dfc2d3d0c28f60620a0666c97c9534.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Xm/v7/SHA256E-s3793518755--1aa6edecee2678f28f61aaea4ac51a5d06b0c6671a562f890e5015c8a2257821.gz/SHA256E-s3793518755--1aa6edecee2678f28f61aaea4ac51a5d06b0c6671a562f890e5015c8a2257821.gz";
      r2 = "fF/J7/SHA256E-s3803399725--99d2f9ce8690725592d4d4e768399d3210040325c5a37af644ac62cae6650c70.gz/SHA256E-s3803399725--99d2f9ce8690725592d4d4e768399d3210040325c5a37af644ac62cae6650c70.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC meeting 22.07.2021\nDiscussed WES results.\nPurity 0.48, TMB 24 (would probably read > 10 on other platforms) \nBRCA2 mutation (VUS) and homozygous deletion (CN Chr 13, 4 Mbps 0 copies). \nNo mutation sig 3 or 8. \nMatt: Looks HRD, despite signature 3 missing. \nThere is extensive LOH & TAI. I would expect this to score highly on any of the LOH based tests like Myriad. \nLack of signature 3 might mean that is only pathway to PARPi unless we can get fresh for WGS and CHORD. \nFocal loss of BRCA2 in somatic may be enough, 4Mb is a pretty tight region. \nWould suggest patient to get PARPi based on the BRCA2 deletion potentially causing HR deficiency (there is no evidence of Sig 3). Patient has already had immunotherapy and will not receive another due to our TMB value.  \n\nNo other somatic mutations of significance. \n\nClare meeting 08.04.2021\nThis is an Ipi/Nivo responder, but has progressed. Getting radiotherapy now. Want Nanostring on this later. \nReviewed sample 2D. \nTo do WES - 5 thick for DNA (no BRCA test) \nNanostring - provide sections for RNA (waiting for multiple primary agreement to do batch of nanostring) ";
      d_case_summary = "52- yo female with uLMS and has been referred to the ARCPortal on 18/11/20 and consented to SFRC on 13/11/20 for BRCA testing. Bloods to be done on 3/12/20.";
      tumour_type = "uLMS";
      tumour_details = "uLMS";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "BRCA2";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "Block request sent to SVHA on 07/01/2021 for sample of metastatic uterine sarcoma from 26/10/2017";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01347";
  }
