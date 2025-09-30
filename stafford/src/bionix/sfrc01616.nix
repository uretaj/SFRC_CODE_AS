with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1C";
      class = "tumours";
      pdx = false;
      r1 = "m8/kZ/SHA256E-s14385515690--e58018efee59114a9d952929d917d809701fa61c43a274a41fd896ae0c0b44f8.gz/SHA256E-s14385515690--e58018efee59114a9d952929d917d809701fa61c43a274a41fd896ae0c0b44f8.gz";
      r2 = "1Z/03/SHA256E-s14505493576--06d61618e737d61e92da7ba4c7533a22bda6b6680fff5c4a27279eee6005323b.gz/SHA256E-s14505493576--06d61618e737d61e92da7ba4c7533a22bda6b6680fff5c4a27279eee6005323b.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "qx/w4/SHA256E-s4413113559--6facc502716143812ae34febca552e9f034096b98fed811e1a2c358d4bb59840.gz/SHA256E-s4413113559--6facc502716143812ae34febca552e9f034096b98fed811e1a2c358d4bb59840.gz";
      r2 = "9v/Z7/SHA256E-s4713050812--29fd9f0942a7fcaf4dde590ff810c8aeeba8453c54eb16d79e362e728f9a5611.gz/SHA256E-s4713050812--29fd9f0942a7fcaf4dde590ff810c8aeeba8453c54eb16d79e362e728f9a5611.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "11.09.2023\nGroup email sent to check if we need to organise more blood. \n\n08.09.2023\nClare's is ok with sending both HGSOC and melanoma FFPE block for TWIST WES.\n\n07.09.2023\nGroup email: \nMatt: Yes, please do Twist WES and send a new genomic sample for Twist WES as well.\nWe will want to try to do clonal haematopoesis analysis on the blood and this will be better with the Twist backbone\nKristy: I suggest it's probably also a good idea to rerun the HGSOC DNA with the HRD backbone too, to get the HRD score?\nIt has good tumour purity so only needs basic sequencing depth.\nMatt: Agree. This is going to be an interesting case and the HRD score would be a strong addition.\n\nClare's sample meeting 24.08.2023\nPlan on FFPE melanoma block: WES discussion on HGSOC recurrence, suggested to get more blood, this has not been organised, do we still need it and should I follow up with SFRCadmin? \n\nDo we want to do WES on this block too, as this case has been done with old WES and this one is likely to be done with Twist, will this cause an issue for comparison analysis? \n\nCS-I think we should ask Matt about whether TWIST WES is the right thing to do for the new melanoma sample (to compare with previous WES on the HGSOC) - I think he will be able to compare them but need to check. \nRe blood, she is Anne's patient; she was in yesterday unfortunately to see Anne - she will be back for more blood in 3 months. If you want blood sooner she might be happy to come in - she lives on Oak Park about 20 minutes away. She is well. Adriana could give her a call and just see if she minds coming in when it suits her in the next few weeks. \n\nAnne needs a BRCA1 methylation report which Briony and Kas / Matt can generate. \n\nCan I check that her WES report has gone to Anne - she has the WES result in her notes - I just want to check she received an official report. \n\nEmail from Matt and Kas 07.09.2023\nWe now want to test for methylation in the melanoma FFPE sample:\nSFRC01616_1A  Malignant Melanoma    \nRequest 23.2195\npurity within the circled tumour area is 20%\n\nYes, please do Twist WES for Block 1A and send a new genomic sample for Twist WES for as well.\n\nClare Meeting (to send) 24.08.2023\nCS-I think we should ask Matt about whether TWIST WES is the right thing to do for the new melanoma sample (to compare with previous WES on the HGSOC) - I think he will be able to compare them but need to check. \n\nRe blood, she is Anne's patient; she was in yesterday unfortunately to see Anne - she will be back for more blood in 3 months. If you want blood sooner she might be happy to come in. She is well. Adriana could give her a call and just see if she minds coming in when it suits her in the next few weeks. \n\nAnne needs a BRCA1 methylation report which Briony and Kas / Matt can generate. \n\nCan I check that her WES report has gone to Anne - she has the WES result in her notes - I just want to check she received an official report. \n\nThank you \n\nRC Meeting 16.03.2023\nDisucssed WES report:\nDiscussion: \n-Complete LOH of Chromosome 17 - this chromosome includes BRCA1, TP53, RAD51C, BRIP1.\n-This sample is homozygous BRCA1 methylated. \n-FFPE block from the oligo met? Is block 1C -  Kristy/Imalki to image \n-Try and source melanoma block. \n-Patient doing well now. \n-Constitutional methylation in multiple primary cases? \n-Get more bloods. \n\nClare, Ratana, Rae 04.03.2023\nBROCA for FFPE Block 1C\n\nClare's Meeting 22.12.2022\nFFPE Block 1C has tumour, 85% purity. WES, nanostring and Opal. Good tumour slide. (High myriad score, BRCA WT (germline and somatic). Want to know why. Urgency?? To do methylation (Kas has a list) \n\nFrom Clare: 13.10.2022\nFor high priority (not urgent, but next priority level) WES once FFPE received and reviewed please, as per Clare 13Oct2022. BM";
      myriad_report = "SFRC01616_MyriadResult_28Oct2022_90_Redacted.pdf";
      d_case_summary = "HGSOC, germline ovarian panel NAD / somatic wtBRCA\nPlat sensitive";
      date_consented = "2022-06-28";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC  Melanoma (right calf) and basal cell carcinoma (left calf)";
      case_details = "65F\n\n2019-01: Dx HGSOC Stage IIB\nSurgery: TAH/BSO, omentectomy\nIHC Positive: ER (strong, 80%), CK7, PAX8, WT1 (heterogenous staining), CA125 \nIHC Negative: PR (focal, <1%), Napsin A, CK20, p53 (null phenotype)\n\n2019-03 - 2019-06: Carboplatin/Paclitaxel\n\n2021-04: Dx Melanoma\n\n2021-05: Surgery: Calf WLE\n\n2022-05: Recurrence HGSOC, plat sensitive\nSurgery: Laparoscopic secondary cytoreduction, complete resection. Right iliac nodule fixed and blocked (Block 1C)\nIHC positive: ER (2+/3+, 60%), WT1 (patchy) \nIHC negative: PR, p53 (null phenotype)\n\n2022-09: Blood B1 received\n\n2022-10: Myriad MyChoice HRD Positive: GIS Score 90. BRCA negative.\n\n2022-11: Sections from FFPE Block 1C received\n\n2023-01: Block 1C sent for methylation: 56.2% BRCA1 methylation. Block 1C sent for WES.";
      myriad_submission = "Yes";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "Myriad HRD Positive (BRCA neg) score 90";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "13/07/2022: May 2022 sample requested from RWH pathology by Devindee. \n21/11/2022: May 2022 slides received. \n21Jul23: Apr21 sample requested from Melbourne Pathology by Monica\n26Jul23: Apr21 sample received from Melbourne Pathology by Monica";
      mp_subgroup_sfrcp4_new_id = "2 primary";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01616";
    predictNeoantigens = true;
  }
