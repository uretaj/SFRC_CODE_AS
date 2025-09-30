with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A.31";
      class = "tumours";
      pdx = false;
      r1 = "mK/f2/SHA256E-s794459506--913d7d38e9dee88d3082fb41cf19002c6f6afabbccba18bfb51571728f9d1e25.gz/SHA256E-s794459506--913d7d38e9dee88d3082fb41cf19002c6f6afabbccba18bfb51571728f9d1e25.gz";
      r2 = "kW/2P/SHA256E-s795526472--33d33dde274f7a7069aee31441eb21c12e0a3d03e26227cd7ea61b1470276498.gz/SHA256E-s795526472--33d33dde274f7a7069aee31441eb21c12e0a3d03e26227cd7ea61b1470276498.gz";
    }
    {
      site = "A.31";
      class = "tumours";
      pdx = false;
      r1 = "7Z/zM/SHA256E-s8222915355--6badc436845afe7efc1aa9cae3713b3c91f4ebbb533116f8613ea369e211915c.gz/SHA256E-s8222915355--6badc436845afe7efc1aa9cae3713b3c91f4ebbb533116f8613ea369e211915c.gz";
      r2 = "J6/ZW/SHA256E-s8329325080--f682165f2b6f86a4d94e1ed560a9652b158fe6be35471897294b1b9aa52da6cd.gz/SHA256E-s8329325080--f682165f2b6f86a4d94e1ed560a9652b158fe6be35471897294b1b9aa52da6cd.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "V8/21/SHA256E-s3933807674--57c0f3cac5848f56e0d270490a8be5b2da3b0c8267d6269d8e70daff42a80759.gz/SHA256E-s3933807674--57c0f3cac5848f56e0d270490a8be5b2da3b0c8267d6269d8e70daff42a80759.gz";
      r2 = "qW/02/SHA256E-s4092221464--8e48557479d77b168d6c7166585f7af8a31ea7d64b8f04d46a8819e4bf0a516a.gz/SHA256E-s4092221464--8e48557479d77b168d6c7166585f7af8a31ea7d64b8f04d46a8819e4bf0a516a.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "uLMS";
      meeting_discussions_follow_up = "RC Meeting 14.04.2022\nDiscussed WGS report.\nMOST 1/2020 - none actionable. CDK, PTEN, RB1 \nWES: TMB high \nWGS **** LOW TMB **** \nHomozygous deletion of CDKN2A and RB1 \nNo HRD features \nProbably SOC \n\nDiscussion:  \nCDKN2A was reported as LoH in WES by homozygous deletion in WGS  \n\nPatient is likely to go on CDK4/6 plus immunotherapy trial at PMCC \n\nSuspect something wrong with the WES batch of 23 cases.\n\nRC Meeting 07.04.2022\nDiscussed WES findings\nReally high TMB \nGood tumour purity 84% \nNo genome doubling  \nGermline variants: No variants detected  \nSomatic variants: CAMTA1 and DDX6 \nAmplification and deletion: Plot is good, none to report  \nAwaiting WGS results to compare  \n\nClare's meeting 24.02.2022\nFresh tissue S1: Extract DNA and RNA from the OCT sections, send for WGTS\nMake WES results discussion a priority\n\nRC meeting 20.01.2022\nPrioritise this case for WES discussion when results are back.\ntry to get fresh biopsy prior to treatment\n\nClare's meeting 22.10.2021\nBlock A31: Do WES once we have received blood. ";
      d_case_summary = "46yo female with ULMS for enrolment in the Stafford substudy. Has been referred in to ARC portal. Would benefit from genomic testing";
      date_consented = "2020-11-13";
      tumour_type = "uLMS";
      tumour_details = "uLMS";
      case_details = "47 years old \n\n2018 Sep:\tSurgery \nIHC: ALK1 neg \n\n2019 Oct:\tTAHBSO (FFPE block A.31 received, 90% tumour purity) \nIHC Positive: SMA, desmin, ER (75%), PR (95%), CD10 focal staining. \nIHC Negative: Cyclin D1, C-kit, Alk \n\n2019-2020:\tAdriamycinx3, gemcitabine, Docetaxelx6, pazapanib \n\n2021-12:\tBlood B1 received \n\n2022-02: \tBiopsy (fresh tissue S1 received, (90% tumour purity) \n\n\n-----------------------------------------------------------------------\nStage 4 metastatic uLMS with pulmonary etsDx 30/10/2019 on TAHBSO omentectomy. Not RTx, but received adriamycin  x 3 from Nov 2019 - Jan 2020. Jan 2020 - May 2020 receivd gemcitabine, docetaxel x 6 cycles. June 2020 - pazopani 400mg daily.";
      pre_analysis_mutations = "Fresh tissue S1 sent for WGS 03.2022";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "block requested from NSWpath North by Warren 5/9/21, received 26/9/21";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01348";
  }
