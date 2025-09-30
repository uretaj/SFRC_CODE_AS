with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2H";
      class = "tumours";
      pdx = false;
      r1 = "KJ/pw/SHA256E-s17311631930--02f6a3720faa71b3a6c81746cbdcdfa58381c61ce7cf9ab440d079a3f9bfd672.gz/SHA256E-s17311631930--02f6a3720faa71b3a6c81746cbdcdfa58381c61ce7cf9ab440d079a3f9bfd672.gz";
      r2 = "KQ/wp/SHA256E-s17458798665--d23d51e435f3fa9bec5a4221d6f99d370c018fa7dd60be4077d1ab64ec0d35c3.gz/SHA256E-s17458798665--d23d51e435f3fa9bec5a4221d6f99d370c018fa7dd60be4077d1ab64ec0d35c3.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "GJ/xQ/SHA256E-s4755860648--be217756316941781fcdccdf5137a88e8d1319905c0f92e255cd67dc41fa8330.gz/SHA256E-s4755860648--be217756316941781fcdccdf5137a88e8d1319905c0f92e255cd67dc41fa8330.gz";
      r2 = "P3/9P/SHA256E-s4919451188--c0a87555fa90996a0c79f2499d2d1588d80f93048e9601cd8e76e0228925415d.gz/SHA256E-s4919451188--c0a87555fa90996a0c79f2499d2d1588d80f93048e9601cd8e76e0228925415d.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 03.08.2023\nDiscussed WES report:\n-Reportable BRCA2 and SDHA germline variants (NB: BRCA2 variant same as detected by the PeterMac BRCA test). \n-Reportable TP53 somatic variant. \n-No Signature 3; potential FFPE issue. \n-CN fit unreliable due to distortion in minor alleles.  \n-High LOH \n\nClare's Meeting 23.02.2023\nEarly SOLO1 patient. \n**Kristy - deep WES (for high quality) on Block 2H, neoantigens study.\n\nEmail from Clare 20.12.2022\nWant FFPE blocks, as this case is a super responder, wanted for imaging studies, nanostring etc.\nSurgery 30.10.2013 to find block.";
      d_case_summary = "HGSOC Dx 10/2013- super responder\nBRCA2 germline mutation\nReceived 5 months of olaparib in 2014";
      date_consented = "2021-12-14";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC";
      case_details = "73F\n\n2013-10: Dx HGSOC\nSurgery: TAH/BSO (no IHC performed) \nBlock 2H: Right ovary tumour mass.\n\n2013-11 - 2014-03: Carboplatin/Paclitaxel x6\n\n2014-02: FCC BRCA test: BRCA2 detected\n\n2014-04 - 2014-10: Enrolled in SOLO-1 trial: first like PARPi with olaparib.\n\n2015 - 2022: complete remission\n\n2022-05: Blood B1 received\n\n2023-02: Sections from FFPE Block 2H received.";
      pre_analysis_mutations = "gBRCA2 mutation";
      brca_report = "SFRC01522_BRCA_2014_Redacted.pdf";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "14/01/2023: Oct 2013 sample requested from Melbourne Pathology by Devindee. \n02Feb2023: Oct 2013 sample received by Monica ";
      mp_subgroup_sfrcp4_new_id = "Super Responder";
      patient_germline_mutations = "BRCA2";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01522";
    capture = CREv2;
  }
