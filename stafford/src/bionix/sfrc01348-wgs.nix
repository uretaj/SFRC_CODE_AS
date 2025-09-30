with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        facets.reporting.preprocess = def facets.reporting.preprocess {
          mem = 50;
        };
      })
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Kz/p9/SHA256E-s65129348987--54b98fd5f88b5a4c52291f3857d13c39792d210f0d90b6e9bda1acf01e72ed27.gz/SHA256E-s65129348987--54b98fd5f88b5a4c52291f3857d13c39792d210f0d90b6e9bda1acf01e72ed27.gz";
      r2 = "78/55/SHA256E-s69826913703--87fdcc4512bc7658d5e3848390748049872ee87ec1ca02af3ef58505080fa8fa.gz/SHA256E-s69826913703--87fdcc4512bc7658d5e3848390748049872ee87ec1ca02af3ef58505080fa8fa.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "2w/Xj/SHA256E-s85477797362--4a183a872b581e22e6e6f032c1cc19b25c9f28f2922892445ab2bd6219b30b80.gz/SHA256E-s85477797362--4a183a872b581e22e6e6f032c1cc19b25c9f28f2922892445ab2bd6219b30b80.gz";
      r2 = "5w/p4/SHA256E-s90527521834--ae3f916b483a6cf6332ebf71255ec7766247e45f2ee6de86352f8006e3f7ae30.gz/SHA256E-s90527521834--ae3f916b483a6cf6332ebf71255ec7766247e45f2ee6de86352f8006e3f7ae30.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "75/vP/SHA256E-s3911087013--620783904a7cdfbbdcb774ee2dd08654f90f3fc764850abf4b322863ff3f41ce.gz/SHA256E-s3911087013--620783904a7cdfbbdcb774ee2dd08654f90f3fc764850abf4b322863ff3f41ce.gz";
      r2 = "jm/6k/SHA256E-s3891406160--e2bd750e28ffed47fab472501d7158bfb5b839ae16ad425e7e52f9e1bf0057d8.gz/SHA256E-s3891406160--e2bd750e28ffed47fab472501d7158bfb5b839ae16ad425e7e52f9e1bf0057d8.gz";
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
    name = "SFRC01348";
  }
