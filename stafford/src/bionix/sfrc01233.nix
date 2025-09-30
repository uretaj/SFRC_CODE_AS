with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        samtools.sort = def samtools.sort {walltime = "48:00:00";};
        facets.reporting.preprocess = def facets.reporting.preprocess {
          mem = 50;
        };
      })
  ];
}; let
  samples = [
    {
      prefix = "grimmond/s3/batch8/L2000061_S3";
      suffix = "_001";
      site = "S1";
      class = "tumours";
      sha256-1 = "d39e0f540c41f054dcdd61131d5207e4eb2a45d0cd1effc04526f83793f42837";
      sha256-2 = "dce3632f6dfcdde851c9a7e76a05791d7d5bb72be0de6d70f19cb2f494006946";
    }
    {
      prefix = "grimmond/s3/batch8/L2000062_S4";
      suffix = "_001";
      site = "B1";
      class = "normals";
      sha256-1 = "19f185f05198105a5b45259f9458217bad63c30288939c73d7368274a85769e1";
      sha256-2 = "0f1ea8599f9ebcb6557173f28030a53039de54f585c762ed5d4a07bfed852e31";
    }
    {
      prefix = "fastqs/mcri-2020-08-05/200710_A00692_0117_ML205999_SFRC01233S1-T1_MAN-20200627_NEXTERAFLEXWGS_L001";
      suffix = "";
      site = "S1_T1";
      pdx = true;
      class = "tumours";
      sha256-1 = "ad6cdb70cec70676301885bc5ae18b714e18ca6cebc9d45be235b81aa28d979e";
      sha256-2 = "37ce242d711cd802259501d7d291523421bec9b57fff2ebd6083b1eb16c46ac4";
    }
    {
      prefix = "fastqs/mcri-2020-08-05/200710_A00692_0117_ML205999_SFRC01233S1-T1_MAN-20200627_NEXTERAFLEXWGS_L002";
      suffix = "";
      site = "S1_T1";
      pdx = true;
      class = "tumours";
      sha256-1 = "2f9384b2dc4d9411d72523afce5c791b36893df2701b07af81ebd8b47706312f";
      sha256-2 = "3993040bc85e0734127821302a5603bf5c26dcf10e2011ab7a64468f2e3ff575";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "OCS";
      meeting_discussions_follow_up = "RC Meeting 2020.09.03\nDiscussed PDX WGS results (summarised in Analysis_DNA)\n\nMeeting notes 2020.05.21\nMutations suggest endometrioid pathology and endometrial origin. Gayanie to review again (with PDX?). Briony and Damien to organise report to clinician.\n\nMeeting notes 31.01.2020\nGen will attempt organoids when organoid media ready\n\nMeeting notes 2019.12.05\nGet snap frozen piece blocked in OCT and sectioned to hopefully send DNA for WGS";
      date_of_death = "8/2020";
      date_consented = "2019-10-23";
      tumour_type = "Ovarian Carcinosarcoma";
      tumour_details = "Ovarian Carcinosarcoma";
      case_details = "WGS clinical notes \n51 yo ovarian carcinosarcoma Consented at RWH\n\nHad Carbo/Taxol Dec-April but lots of toxicity, has mets in all the regular ovarian cancer locations. But CA125 dropped from 1200 to 37.";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Rapid Progressor";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01233";
  }
