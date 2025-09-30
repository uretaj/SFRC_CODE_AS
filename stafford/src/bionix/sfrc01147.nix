with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "q9/3X/SHA256E-s34598247371--e4916c8190526913996f4f5a1b4cf940e5bae88a26ef4bac9761faf18c60b9a4.gz/SHA256E-s34598247371--e4916c8190526913996f4f5a1b4cf940e5bae88a26ef4bac9761faf18c60b9a4.gz";
      r2 = "Wk/gg/SHA256E-s37624909122--119e233763802ccd29bd23cc4f798d10bd201c1151d5e679caf4d31768136745.gz/SHA256E-s37624909122--119e233763802ccd29bd23cc4f798d10bd201c1151d5e679caf4d31768136745.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "pM/kK/SHA256E-s74737534232--2f665cc8ab88ffb5d563d9ec4034c490798910b2692028944354a394754ca85d.gz/SHA256E-s74737534232--2f665cc8ab88ffb5d563d9ec4034c490798910b2692028944354a394754ca85d.gz";
      r2 = "ZV/jV/SHA256E-s81257438526--440b1201b1626f6a312de1ca0a0e729bce37798e2944d5f1bf340b145bdf83fe.gz/SHA256E-s81257438526--440b1201b1626f6a312de1ca0a0e729bce37798e2944d5f1bf340b145bdf83fe.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "uLMS";
      meeting_discussions_follow_up = "RC Meeting notes 04.03.2021\nS1 sample 23-06-2020, 50-60% tumour purity. DNA extraction from OCT slides. Failed WGS in Sean's lab (<30% tumour cellularity). Justin analysed it, to discuss today \nHave a PDX  \n\nNew discussions: \nVery low purity (~30%), not a lot of effective coverage \nLow TMB - 9  \nThe gBRCA2 is very late in the gene, is benign. \nNo TP53  \nSomatic RB1 frameshift (10%) \nAKT2 \nKEAP1 mutation - without TP53, might be interesting \nWant to calculate CHORD \nSig 5 - 10000, Sig 16 - 9000, Sig 3 5000 - but can't trust these numbers \nPoor tumour purity, so hard to give full report. Would benefit from a new biopsy (Clare to email treating doctor) \n\nMeeting notes 22.10.2020\nWGS result: The estimated tumour burden in this sample was low (<30%) and was insufficient for somatic variant analysis. Recommend repeat testing if possible, on a sample with higher tumour burden (>30%). Reporting was restricted to germline variant analysis only. \nNo clinically significant germline variants were detected. \nThere are 4 vials of SF tissue plus 5 vials of mince. \nGen - This could be an issue specific to uLMS - same thing happened with SFRC01227 - Gayanie review said 90% tumour purity so a SF piece was sent but it came back as 'low tumour cellularity (<30%)' \nHolly to email Gayanie for re-review - both FFPE and OCT images (mention David Huntsman, University of British Columbia) \nHow do we organise external casecenter login (for Clare's contact - David Hunstman) - Holly to check with histology \nMake new OCT block from SF for re-review by both pathologists and submit for WES?  Double check after pathology discussions \nGet data sent to Justin to double check \n\nMeeting notes 27.08.2020\nGetting clarification from Sean's lab whether the fresh frozen sample is ok to make DNA (instead of OCT).\n\nMeeting notes 14.08.2020 (Ratana and Clare)\nTo send for WGS. Block SF tissue for OCT block.";
      date_of_death = "6/2021";
      date_consented = "2019-03-06";
      tumour_type = "uLMS";
      tumour_details = "Uterine Leiomyosarcoma";
      case_details = "Metastatic Uterine LMS\n\nLaparoscopic TAH + BSO showing dedifferentiated leiomyosarcoma.\nCommenced weekly doxorubicin March 2019\n\n\nNot for WGS at this stage\nfor BRCA testing on TAH DNA";
      pre_analysis_mutations = "IHC: \n- ER/PR negative\n- Positive: SMA, desmin, H-caldesmon\n- Negative: CD10, AE1/AE3";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "24/10/2022: 2019 block requested from Melbourne pathology by Devindee for uLMS Procan study.\n08/11/2022: 2019 block received.\n_____\nTAHBSO - Epworth Pathology\nSpecimen no: 28963-19T\nCollected 20-Feb-19\nRequested 21-Mar-19 (Briony)\nReceived slides (Block 1AJ) 1-Apr-19";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01147";
  }
