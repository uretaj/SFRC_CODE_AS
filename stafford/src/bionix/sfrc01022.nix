with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        samtools.sort = def samtools.sort {walltime = "48:00:00";};
        bwa.mem = def bwa.mem {walltime = "48:00:00";};
        octopus.callSomatic = def octopus.callSomatic {mem = 260;};
      })
  ];
}; let
  samples = [
    {
      site = "B8";
      class = "normals";
      prefix = "grimmond/s3/SFRC01022/L1900366_S1";
      suffix = "_001";
      hash1 = "45fae66ba357c2f9158e52b690f82bf732b1498851522e547798face4dfea78494f766c27f772a9e5021d54de700a56b405c13397fb33bae55957422371dabac";
      hash2 = "a2592538e463578eb1f57d041395f7b89b38d5ca1d9374ee1d4eb1adcea04f11548485674ced52078e76e548358e01287788ddfce9edf0e99b537fd94293f58e";
    }
    {
      site = "S2";
      class = "tumours";
      r1 = "1k/qF/SHA256E-s103130909805--453fbb56fbcbc18a2fe832c140c1b436e297c17462cfb80823c37252b24ac070.gz/SHA256E-s103130909805--453fbb56fbcbc18a2fe832c140c1b436e297c17462cfb80823c37252b24ac070.gz";
      r2 = "2Z/31/SHA256E-s107392914936--b953777bfa078ebe005ddea29546be0b3ef52b4ef3949fde44d1ed069268d8ce.gz/SHA256E-s107392914936--b953777bfa078ebe005ddea29546be0b3ef52b4ef3949fde44d1ed069268d8ce.gz";
    }
    {
      site = "S2";
      class = "rna";
      r1 = "20/Z7/SHA256E-s4809374346--ace98543e0d47408574838da8f4fa8cad6f775076f78c8ea63e50e44cb4b0c20.gz/SHA256E-s4809374346--ace98543e0d47408574838da8f4fa8cad6f775076f78c8ea63e50e44cb4b0c20.gz";
      r2 = "j4/QG/SHA256E-s4841924720--4c57cebc20e09c973f7a53d82a73d19177dd118738a7e8cbb6afa62849f75913.gz/SHA256E-s4841924720--4c57cebc20e09c973f7a53d82a73d19177dd118738a7e8cbb6afa62849f75913.gz";
    }
    {
      site = "S3";
      class = "tumours";
      pdx = false;
      r1 = "Vj/kM/SHA256E-s80524728045--23b8d8104aea04f628c09bda22f8585914c07da99692c97dcd99b288b5aab851.gz/SHA256E-s80524728045--23b8d8104aea04f628c09bda22f8585914c07da99692c97dcd99b288b5aab851.gz";
      r2 = "fF/M8/SHA256E-s84637032901--9d1f15f00a64f7ddfcfa2dbd44dc89fae547a40805f92f652ade8bb090919edb.gz/SHA256E-s84637032901--9d1f15f00a64f7ddfcfa2dbd44dc89fae547a40805f92f652ade8bb090919edb.gz";
    }
    {
      site = "S3";
      class = "rna";
      pdx = false;
      r1 = "Xf/1m/SHA256E-s3975807676--92b867ba29e589eb61f985c6aa16a3584447ff22215b771f0cc4187b9f2ad7c4.gz/SHA256E-s3975807676--92b867ba29e589eb61f985c6aa16a3584447ff22215b771f0cc4187b9f2ad7c4.gz";
      r2 = "vV/Pv/SHA256E-s4005106593--d3e04173fecc67184fc550911feb6f97b173cb2d2b4dc5ebd1e92eb5d14a13e2.gz/SHA256E-s4005106593--d3e04173fecc67184fc550911feb6f97b173cb2d2b4dc5ebd1e92eb5d14a13e2.gz";
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
    predictNeoantigens = true;
    name = "SFRC01022";
  }
