with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1.9";
      class = "tumours";
      pdx = false;
      r1 = "WX/23/SHA256E-s13906960170--a5edd13b9c722ff0d0ebf001dae43144f6b1963a38e177ab948da18a2417ae9e.gz/SHA256E-s13906960170--a5edd13b9c722ff0d0ebf001dae43144f6b1963a38e177ab948da18a2417ae9e.gz";
      r2 = "5P/M3/SHA256E-s14507131769--9bda27b3ba8ba150d5d6bb39824b425237d38fd18613066d8bbee18dde96cace.gz/SHA256E-s14507131769--9bda27b3ba8ba150d5d6bb39824b425237d38fd18613066d8bbee18dde96cace.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "9g/k9/SHA256E-s4595965877--9c6e593055be573804e4c789f2c4ef3eaafb69cd237683fa3ca0b48f13cc08df.gz/SHA256E-s4595965877--9c6e593055be573804e4c789f2c4ef3eaafb69cd237683fa3ca0b48f13cc08df.gz";
      r2 = "vQ/PP/SHA256E-s4813723835--dc14914d53fe6b0b04027cc926783c173b710cda887524c948ebdc47c79f0eba.gz/SHA256E-s4813723835--dc14914d53fe6b0b04027cc926783c173b710cda887524c948ebdc47c79f0eba.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC meeting 27.07.2023\nDiscussed WGS report with SFRC data.\nPurity is low, bad CN fit. \nWe can't see the MTAP deletion. CDKN2A and MTAP are in the same region, they are commonly co-deleted. Because of the CN fit, some of the segments might be off. \nMTAP is not in COSMIC Cancer gene census, so not named in table. Deleted region (9:21615180-22643767) includes MTAP location (chr9:21,802,636-21,941,115). \n\nClare's meeting 2023-05-18\nPlan: Extract DNA on OCT S2 and send for WGS? Yes  \nWES report to be issued (please note Andrew's revison note added to the clinical details)  after the WGS report back \n\nClare's meeting 2021.10.21\nBlock 1.9: Get blood, then do WES \nIs in stromal project. Don't have a block, so can request the block or 3 x 20um sections. Need the meeting with all involved, first. ";
      d_case_summary = "Stage 2 sex cord stromal tumour on adjuvant carbo/taxol Rx complicated by reaction with C2 FOXL2 negative , DICER1 requested due Aug\n17th Match TAH/BSO: Intraoperative findings: intraoperative rupture, necrotic inflamed tumour mass \n R tube   ovary. R   L tubes   ovaries. Uterus   cervix. Omental biopsy.\n Histo: Sex cord stromal tumour, measuring 200 mm, with extensive necrosis of the right ovary and tube.\n Peri-adnexal soft tissue showing involvement by sex cord stromal tumour.\n Treatment complicated postoperative ileus, mild fluid overload and anaemia\n April 2021: Started adjuvant carbo/taxol\n\nResults of immunohistochemical studies:\n CD56 - diffuse strong cytoplasmic and membrane staining.\n CD99 - moderate intensity membrane staining approximately 60% of tumour cells\n Inhibin - patchy weak to moderate intensity staining approximately 10% of cells\n Calretinin - positive approximately 10% of tumour cells\n WT 1 - weak to moderate intensity nuclear staining in approximately 80% of tumour cells\n Progesterone receptor protein (PR) - 2  intensity nuclear staining in 50% of tumour cells\n Oestrogen receptor protein (PR) - negative (no staining) \n Cytokeratin AE 1/3 - positive in approximately 50% of tumour cells; partially perinuclear\n dot-like.\n Cytokeratin 7 - negative\n EMA - negative\n Chromogranin - negative\n PAX8 - negative";
      date_consented = "2021-07-13";
      tumour_type = "GCT (Granulosa Cell Tumour - including Sertoli Leydig Cell)";
      tumour_details = "Stage 2 sex cord stromal tumour";
      case_details = "2021-03: \tTAH/BSO, FFPE Block 1.9 received \n \tIHC Positive: CD56, CD99 in 60% of the tumour cells, Inhibin - patchy weak to \tmoderate intensity staining approximately 10% of cells, Calretinin - positive \tapproximately 10% of tumour cells, WT 1 - weak to moderate intensity nuclear \tstaining in approximately 80% of tumour cells, Cytokeratin AE 1/3 - positive in \tapproximately 50% of tumour cells; partially perinuclear dot-like. \nPR- 2+  intensity nuclear staining in 50% of tumour cells  \nER - negative  \nIHC Negative: Cytokeratin 7, EMA , Chromogranin, PAX8   \n\n2021-04:  \tStarted adjuvant carbo/taxol, ceased at C5 \n\n2021-11: \tBlood B1 received \n\n2021-12:\t WES, TMB 21, Tumour purity 73% (Histopath purity by Gayanie 50%)  \nGenome Doubling false , \nGermline: nothing notable  \nSomatic: nothing notable  \nGen picked up that PRSS1 has 2 mutations (stop gained VUS and a missense \tLikely Pathogenic variant) - similar to STK11 in that it's liked to Peutz-Jeghers \tsyndrome (often associate with SCTATs) and pancreatitis/pancreatic cancer but \tnothing indicates it's actionable.   \nNo signatures to note.  \nA large list of genes with a copy number of 4  \nCDKN2A has 0 copies - is that anything of interest?  \nCN: plot not too bad.   \nChromosome 5 looks a little off but otherwise a very quiet tumour. Not much to report.   \n\nAndrew Jarratt revision 2023-05\nCDKN2A, deletion:  Laboratory data suggest that cancer cells with loss-of-function alterations of CDKN2A may be sensitive to CDK4/6 inhibitors such as palbociclib, ribociclib and abemaciclib.  \nPRSS1 (mentioned in notes) - can't find any germline variants. There are 3 x somatic variants for this gene, but x 2 are overrepresented (so not to be curated) and the third is at a very low HF. Also, no variants of any type listed in cBio Genie are classed as drivers.  \n\n2023-03: Blood B2 received, fresh surgery tissue received S1 (small bowel), S2 (rectus), S3 (subcutaneous abdomen ";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "Slides received from Austin/Mercy by Warren 26/9/21";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01435";
  }
