with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {samtools.sort = def samtools.sort {walltime = "48:00:00";};})
  ];
}; let
  samples = [
    {
      site = "10";
      class = "tumours";
      pdx = false;
      r1 = "9V/XM/SHA256E-s85538038757--3c31bc55da8abccfed67c33960c05fd86567ec089c1b2195405ecf5622de807d.gz/SHA256E-s85538038757--3c31bc55da8abccfed67c33960c05fd86567ec089c1b2195405ecf5622de807d.gz";
      r2 = "xK/J7/SHA256E-s89027356101--143013c0a5d59c521d066a7b88a5458167ad8fcf50a1fad3d3000d2551ab31ea.gz/SHA256E-s89027356101--143013c0a5d59c521d066a7b88a5458167ad8fcf50a1fad3d3000d2551ab31ea.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "ZQ/p2/SHA256E-s35804962640--d85149c8ebceeaa96b15d8f209a02d284c270a0bd1d66a8b2a05a4e87e588c47.gz/SHA256E-s35804962640--d85149c8ebceeaa96b15d8f209a02d284c270a0bd1d66a8b2a05a4e87e588c47.gz";
      r2 = "g9/x2/SHA256E-s40423570520--dd3a4fd8278c881048efd66088797a2919c2992a1ec2a265b220817559443fbf.gz/SHA256E-s40423570520--dd3a4fd8278c881048efd66088797a2919c2992a1ec2a265b220817559443fbf.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "gynae cancer other";
      meeting_discussions_follow_up = "RC Meeting notes 2020.07.09\nFFPE would explain the messy CIRCOS plot. \nPatient is in complete remission. SMARC4A mutation is the driving mutation in small cell carcinoma of ovary. \nBRCA deficiency only 16% \nPlan: if she recurs, would get fresh tissue - to do WGS (Sean to pay under ovarian cancer funding) \nTreatment options: checkpoint inhibitor or Ipi/Nivo (CDK4 inhibitor?). Could get MoST in Sydney. We don't have an ATRi in Australia, but would be better than Checkpoint inhibitor.  \nHoping for a PDX. \n\nClare and Ratana 2020.05.29\nTo do BROCA. She has SMARC4A mutation\n\nClare's text message\nTumour purity 60% on FFPE, organise WGS asap.\n\nClare's email 29.01.2020\nWhen H&E back from histology from FFPE block, get Gayanie to review it and get back to Clare with tumour purity. Clare will decide on WGS.";
      date_consented = "2019-11-24";
      tumour_type = "SCCOHT";
      tumour_details = "Small cell carcinoma of the ovary hypercalcaemic type (SCCOHT)  (very young)";
      case_details = "SCCOHT diagnosed on TAHBSO on 11/09/2019,  which showed bulky non-reswctable paraortic nodal disease and PET positive nodule in mediastinum.\n\nAchieved radiologic complete response with 6 cycles of recommended PAVEP CTx>\n\nStem cells collected and performed CARBOPEC autologous transplant. R/v 3.5 months post CTx showed no evidence of disease\n\n2023-09: no evidence of disease";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "Recalled by Briony 4/12/2019\nReceived block (92517-19MP Block 10) 13/12/2019 by Joshua";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01252";
  }
