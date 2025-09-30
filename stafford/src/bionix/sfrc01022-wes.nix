with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B2";
      class = "normals";
      r1 = "0F/15/SHA256E-s3626317576--880c1e62634602a135a09484dac4b5c4bddecd841ae5bc21a77fa8aa7c0d3fcd.gz/SHA256E-s3626317576--880c1e62634602a135a09484dac4b5c4bddecd841ae5bc21a77fa8aa7c0d3fcd.gz";
      r2 = "MW/zp/SHA256E-s4027071687--be5ae2f899933b23e9690e3a0e59e05887946d82efef96042a5d09afb67c52bb.gz/SHA256E-s4027071687--be5ae2f899933b23e9690e3a0e59e05887946d82efef96042a5d09afb67c52bb.gz";
    }
    {
      site = "1L";
      class = "tumours";
      r1 = "gq/V8/SHA256E-s3612356750--ec43e311edfafbd516c6ff1b4e9629052d63fa6e945f5da3ae46c3fca055979a.gz/SHA256E-s3612356750--ec43e311edfafbd516c6ff1b4e9629052d63fa6e945f5da3ae46c3fca055979a.gz";
      r2 = "mj/41/SHA256E-s3923458897--cc8ecf83bdeb5276a5f5769c1ea7f5f9ed574f31bb1fc0aa8906dd59671fdb24.gz/SHA256E-s3923458897--cc8ecf83bdeb5276a5f5769c1ea7f5f9ed574f31bb1fc0aa8906dd59671fdb24.gz";
    }
    {
      site = "S1";
      class = "tumours";
      r1 = "Wg/Gk/SHA256E-s3350385971--488ad6f64e63455a04c3b036dc81d86602202e637537220e9ef12b80fa931e95.gz/SHA256E-s3350385971--488ad6f64e63455a04c3b036dc81d86602202e637537220e9ef12b80fa931e95.gz";
      r2 = "g5/88/SHA256E-s3767933728--be4ffb0b4fea2bfd17abe64977e542da9f4582ff43ad62d4ff70b4dff705618a.gz/SHA256E-s3767933728--be4ffb0b4fea2bfd17abe64977e542da9f4582ff43ad62d4ff70b4dff705618a.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "SOLACE #1";
      genomes100_tumour_types = "HGSOC";
      meeting_discussions_follow_up = "RC meeting 06.10.2022\nDiscussed new BROCA results (compare to all other results).\nMYC extra copies in later samples.\nNF1 - check calling. Maybe just alignment.\n\nRC Meeting 04.02.2021\nDiscussed WGS report. \nIs currently on maintenance paclitaxel and doing well. \nWant to compare the two WGS results more thoroughly (Holly). \nWaiting hopefully for PDX \n \nClare and Ratana 16.10.2020\nSend S3 SF tissue and B10 gDNA to Sean for WGS. Blocks 1A and 1B from earlier biopsy can be kept for WES later, or Opal staining.\n\nMeeting notes 27.08.2020\nSuper responder! Precise study BRCA1/2 wt. On Olap, starting chemo in October. Clare to email ANZGOG to ask for permission for block. Josh to recall block from recent biopsy to assess for reversions in PALB2 and ABCB1 fusions (through panel at Fox lab). \n\nRedcap meeting with Clare 09.03.2020\nSend both the archival block and the latest surgery (S2) for BROCA\n \nMeeting notes 12.12.2019\nJustin to update new WGS report in Redcap.\n\nMeeting notes 2019.11.28: Justin will present report comparing the WES data from first tumour sample and WGS data from recurrent lymph node sample at next meeting \n\nMeeting notes 2019.10.03\nSummary of WGS from Justin.\n\nMeeting notes 2019.09.05\nWGS analysis Justin updates. \nPlan: Been analysed but no report yet because there is a new way of calculating neo-antigens. Clare to organize new set of bloods.  \n\nMeeting notes 08.08.2019\nSean's intention is to do WGS and RNAseq so that's what he's probably done for this case \nWe need to check with Sean about RNAseq data for all the other cases.\n\nMeeting notes 13.06.2019\nHolly to ask Joep for data transfer to Justin.";
      date_of_death = "12/2021";
      d_case_summary = "High grade serous ovary, gPALB2, post-PARPi, sarcoid";
      date_consented = "2016-09-27";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC,  post-PARPi, atypical sarcoidosis";
      case_details = "PET 13.01.2020 continues complete response on olaparib\n\nFresh Tissue (core biopsy) received 06-Mar-2019\nFor WGS, submission to SG lab 07-Mar-2019\n\nPathology review by GR show no tumour in the half core we submitted.\nNo Snap frozen remaining for microdissection\n2019.04.59 Clare to decide if going forward for WGS\n";
      pre_analysis_mutations = "FCC/BROCA/WES - gPALB2";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2020 Adenocarcinoma tissue requested from Australian Clincal Labs via fax on 07092020 by Josh for Clare\n\n2020 Adenocarcinoma Block 1A and 1B received on 1/10/2020\n\n2020 adenocarcinoma block recalled by Warren 23/4/21";
      mp_subgroup_sfrcp4_new_id = "Super Responder";
      patient_germline_mutations = "PALB2";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    predictNeoantigens = false;
    name = "SFRC01022";
    capture = CREv2;
  }
