with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A8";
      class = "tumours";
      pdx = false;
      r1 = "53/5M/SHA256E-s20641801408--872c1ba1a14339fd2c303f120f971adf6b5a7ffbc6ed01a45dc072db5bba53fd.gz/SHA256E-s20641801408--872c1ba1a14339fd2c303f120f971adf6b5a7ffbc6ed01a45dc072db5bba53fd.gz";
      r2 = "52/8q/SHA256E-s21458106971--c63720b80719afb6629c26202dbeef842f437ed5058e6b546242c047f6621cbf.gz/SHA256E-s21458106971--c63720b80719afb6629c26202dbeef842f437ed5058e6b546242c047f6621cbf.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "jW/Pg/SHA256E-s27242535900--6c7c1e67ba812145380dabaf69d68af97d6f721a7ebbe8b302b7dcccbdc8ccfe.gz/SHA256E-s27242535900--6c7c1e67ba812145380dabaf69d68af97d6f721a7ebbe8b302b7dcccbdc8ccfe.gz";
      r2 = "gZ/fX/SHA256E-s28677923051--c7f5775aa44a3dfff8351286e7ee8daaf0d424a128bfcb0c00e33b63d6979b93.gz/SHA256E-s28677923051--c7f5775aa44a3dfff8351286e7ee8daaf0d424a128bfcb0c00e33b63d6979b93.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "vZ/f0/SHA256E-s34058782126--df6114c8e1c6286b9f7de06d3093ba21230e427243d2b96d7bcae60b554b17dc.gz/SHA256E-s34058782126--df6114c8e1c6286b9f7de06d3093ba21230e427243d2b96d7bcae60b554b17dc.gz";
      r2 = "fM/Pq/SHA256E-s36676518431--7a072a2f91b50a210bf0abfbe748e35c60c59174c0c2995aba8d95d6bcfe3a95.gz/SHA256E-s36676518431--7a072a2f91b50a210bf0abfbe748e35c60c59174c0c2995aba8d95d6bcfe3a95.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "SOLACE2_0104";
      meeting_discussions_follow_up = "RC Meeting 27.04.2023\nDiscussed WES Report--FFPE Block A8\n-CN plots aren't good. Caution reporting any CNs. Sequencing looks poor quality; potentially quite degraded FFPE sample. Not recommended to call any low frequency samples. \n-Features consistent with HRD however. \n-gSDHA an artefact as not called in WGS; not reportable. \n-sTP53 reportable \n-No clinical report needed as we have WGS. For SOLACE2 only.\n\nRC meeting 02.02.2023\nDiscussed WGS report (Grimmond and SFRC).\nDamien's Variant Meeting notes: \nFailed QC (CN, SV, no RNA) \nHRD (sig 3, CHORD. HRDetect proficient @0.51 (cutoff is 0.7); no mutations) \nTP53, RB1 mutations \n(Check promoter methylation) \nS2 sample - BRCA1 Unmethylated, RAD51C Unmethylated \n\nDiscussion: Looks HRD despite the HRDetect. The CN plot and CHORD are good. \nDo methylation on the A8 sample (Asha) \nLoH event from A8 to S2 \n\nClare, Ratana, Mandy 17.10.2022\nAsha to extract DNA from baseline tissue and send for WES, to prove if lung met is the same and to look for HRD. S2 and baseline to be sent for WES.\n\nClare's Meeting 06.10.2022\nSend S2 DNA for WGS (looking for HRD).  \nJust in case, keep some DNA for WES (rather than TSO500) \n(WES for neoantigens) \nBaseline WES?? Check with Asha.\n\n**S1 sample was sent back to Anat Path after processing**";
      myriad_report = "SFRC01529_MyriadResult_03Nov2022_66_Redacted.pdf";
      d_case_summary = "HGSOC dx 2017, germline wt BRCA. Complete response on SOLACE2.\nWES needed - possibly DNA already in lab\n\nNov 2023: CA-125 still dropping";
      date_consented = "2022-02-02";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC, Stage 3";
      case_details = "57F\n\n2017-03: Diagnosed Stage III Ovarian cancer\nSurgery: Up front debulking\nIHC positive: WT-1 (strong nuclear staining), p53 (strong positive in >80% tumour cells)\n\nHistopath in right iliac lymph node:\nIHC positive: SMA, desmin\nIHC negative: AE1/3, S100, CD34, CKIT, DOG-1, HMB45\nFeatures consitent with leiomyomatosis of lymph node.\n\n2017-04 - 2017-08: 5x cycles carboplatin/paclitaxel\n\n2017-08: Familial cancer panel report: No pathogenic BRCA1/2 detected\n\n2021-07: Progressive disease: lung metastasis.\nReferred to SOLACE2 Trial\n\n2022-04: Blood B1 received\n\n2022-08: Biopsy of lung metastasis (S1)\n\n2022-09: Fresh tissue S2 (lung metastasis) received. Blood B2 received\nIHC positive: CK7, PAX8, WT1, p53 (block positivity)\nIHC negative: CK20, CDX2, TTF-1\n**Morphological and IHC features consistent with metastatic HGSOC\n\n2022-09: Sections from FFPE Block A8 received (through SOLACE2)\n\n2022-10: Fresh tissue S2 sent for WGS: \n-Displays features of HRD but no BRCA1/2, PALB2 or RAD51C (somatic and germline) found\n-TP53 and RB1 VUS\n\n2022-11: Myriad MyChoice HRD test:\nHRD status: Positive\nGIS score: 66\n\n2022-11: FFPE Block A8 sent for WES\nS2 sent for methylation: unmethylated\n\n2023-03: FFPE Block A8 sent for methylation: unmethylated.";
      brca_report = "SFRC01529_FCPanel_25Aug2017_Redacted.pdf";
      myriad_submission = "Yes";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "Myriad HRD Positive (BRCA neg) score 66";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = false;
    name = "SFRC01529";
  }
