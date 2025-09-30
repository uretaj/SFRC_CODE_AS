with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {samtools.sort = def samtools.sort {walltime = "48:00:00";};})
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "92/X4/SHA256E-s47843973633--c96f5f30d900eca8fc1a367e45124f3851d50cb1e892fe0f8a155722c6f5c975.gz/SHA256E-s47843973633--c96f5f30d900eca8fc1a367e45124f3851d50cb1e892fe0f8a155722c6f5c975.gz";
      r2 = "0F/9m/SHA256E-s51787546602--9dcb7551a30d50fe2f3272b3fa48d3cfa971fcc75bc4e2efd59772df607502c4.gz/SHA256E-s51787546602--9dcb7551a30d50fe2f3272b3fa48d3cfa971fcc75bc4e2efd59772df607502c4.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "0k/j8/SHA256E-s82627762692--34f01a52e73e650a9cb807b4742802445996dbbf4a5956c8d21fb0df9c65e709.gz/SHA256E-s82627762692--34f01a52e73e650a9cb807b4742802445996dbbf4a5956c8d21fb0df9c65e709.gz";
      r2 = "w7/Kj/SHA256E-s90830297489--896a36c3bbf0c2d3c6e17e3452ba8b646b4ab6d912b53e955c9b58a93c56ee0d.gz/SHA256E-s90830297489--896a36c3bbf0c2d3c6e17e3452ba8b646b4ab6d912b53e955c9b58a93c56ee0d.gz";
    }
    {
      site = "S3";
      class = "tumours";
      pdx = false;
      r1 = "J6/4z/SHA256E-s74260624320--3e231e204c1956cf24d72c861cb3ed5eb18886d311c7befba0614d8cd6257427.gz/SHA256E-s74260624320--3e231e204c1956cf24d72c861cb3ed5eb18886d311c7befba0614d8cd6257427.gz";
      r2 = "p6/9k/SHA256E-s79859854884--656ec41d0ab7febbdcf78c06b5ae25d01b64ae4bd088296d5a76d14d5b18f45f.gz/SHA256E-s79859854884--656ec41d0ab7febbdcf78c06b5ae25d01b64ae4bd088296d5a76d14d5b18f45f.gz";
    }
    {
      site = "S3";
      class = "rna";
      pdx = false;
      r1 = "72/jP/SHA256E-s5357824603--1af6eeae8ae1e653d66d2fe5ca4ff059ed2401299983e1630afc6710c508efc7.gz/SHA256E-s5357824603--1af6eeae8ae1e653d66d2fe5ca4ff059ed2401299983e1630afc6710c508efc7.gz";
      r2 = "JQ/Kw/SHA256E-s5373225512--0af6fa9fbf56ddccb06434107db1c2df854128a24be86c984762647437dc05c2.gz/SHA256E-s5373225512--0af6fa9fbf56ddccb06434107db1c2df854128a24be86c984762647437dc05c2.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "OCS";
      meeting_discussions_follow_up = "RC Meeting 06.10.2022\nDiscussed new BROCA results (compare to all other results).\nBROCA - BRIP1 deletion of minor allele. Is concordant to our 9 normal copies and 1 minor copy.\n\nMeeting notes 27.08.2020\nNothing else for now, Cass will harvest next tissue and store as requested by Gwo for his analysis. \n\nMeeting notes 13.08.2020\nOur S4 has 90% tumour purity. Send email to Sean (and Gwo) to discuss whether reasonable to do another WGS. For now, S4 on hold.  Clare is emailing Gwo.  Please add to meeting next week so Clare can check reply. \nIgnite - CCNE1 amplified trial - may need to supply tissue for this trial (George Ae Yeung) \n\nMeeting notes 2019.12.05\nSend S2 DNA made by Amandine (which had 76% for mutation 2) back to Sean's lab for sequencing \n\nMeeting notes 2019.11.28\nAmandine recalled the tumour DNA and sent for TP53 assay, waiting for results from Olga - Holly to email once we have those results, decide on plan then \n\nMeeting notes: 13.06.2019\nDiscuss what to do first in term of analysis with bioinformaticians \nTake 1 vial of mince out and try 2D and 3D, at the same time take SFRC01105_S3 mince and try digestion for 1h at the highest digestion enzyme concentration (1mg/mL collagenase and dispase) \nUnlikely to impact with the patient as progressing fast. All sarcomatous on the report - 80% purity \nDouble check pathology with Gayanie - homologous vs heterologous, dissect for RNAseq ";
      date_of_death = "09/2020";
      date_consented = "2019-05-20";
      tumour_type = "Ovarian Carcinosarcoma";
      tumour_details = "Ovarian carcinosarcoma";
      case_details = "Advanced carcinosarcoma, initially presenting with 18 months of symptoms (bloating, loose stools, abdominal discomfort, fatigue)\n\nIx found solid pelvic masses and liver mass,planned for TAHBSO but due to large bilateral PEs, not suitable for OT.\n\nCompleted 6 cycles of carboplatin/paclitaxel: Urgent laparotomy post C1 due to rapidly enlarging pelvic mass, and paclitacel omitted from C5 due to neuropathy\n\nPET on 10/2019 shoed no FDG evidence of recurrent or residual disease, and PET CT consistent with complete metabolic response. Low grade neuropathy but much improved";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01177";
    predictNeoantigens = true;
  }
