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
      prefix = "grimmond/s3/batch8/L2000062_S4";
      suffix = "_001";
      site = "B1";
      class = "normals";
      sha256-1 = "19f185f05198105a5b45259f9458217bad63c30288939c73d7368274a85769e1";
      sha256-2 = "0f1ea8599f9ebcb6557173f28030a53039de54f585c762ed5d4a07bfed852e31";
    }
    {
      site = "S1_24586_org1_100fresh";
      class = "tumours";
      pdx = true;
      r1 = "Zm/wv/SHA256E-s6125636461--8433b53195b795a7f538dacbaad7588b4db5a8f4e3252e9140f00fe3e68c11c8.gz/SHA256E-s6125636461--8433b53195b795a7f538dacbaad7588b4db5a8f4e3252e9140f00fe3e68c11c8.gz";
      r2 = "Q0/XG/SHA256E-s6351600787--d07b7230f6903313582c62130a751317d85881c557480acbec67906d72441fec.gz/SHA256E-s6351600787--d07b7230f6903313582c62130a751317d85881c557480acbec67906d72441fec.gz";
    }
    {
      site = "S1_24586_org1_100frozen";
      class = "tumours";
      pdx = true;
      r1 = "Q0/0F/SHA256E-s5898786530--407febd150ccc69e658b62dfe343457c3c015e1c987aa5b9870ff7ed0dc97d1f.gz/SHA256E-s5898786530--407febd150ccc69e658b62dfe343457c3c015e1c987aa5b9870ff7ed0dc97d1f.gz";
      r2 = "q4/vK/SHA256E-s6175403473--759400028c1fb0a15cdd576c7c8a50b414db39e2abb2306bff31901bd8b65294.gz/SHA256E-s6175403473--759400028c1fb0a15cdd576c7c8a50b414db39e2abb2306bff31901bd8b65294.gz";
    }
    {
      site = "S1_24586_org1_5fresh";
      class = "tumours";
      pdx = true;
      r1 = "fq/QG/SHA256E-s6102454820--b7c1a8b351f2022d134a1518f5fafb7adea705ba18bcfde6d252a10b998a22ee.gz/SHA256E-s6102454820--b7c1a8b351f2022d134a1518f5fafb7adea705ba18bcfde6d252a10b998a22ee.gz";
      r2 = "09/J2/SHA256E-s6346305465--7a6622aac054664c3a0e35290bb544f8772b49a6de303b97c90e1f005bcf1753.gz/SHA256E-s6346305465--7a6622aac054664c3a0e35290bb544f8772b49a6de303b97c90e1f005bcf1753.gz";
    }
    {
      site = "S1_24586_org1_5frozen";
      class = "tumours";
      pdx = true;
      r1 = "31/K9/SHA256E-s8007682770--a92621fade7d0eb33798d4bc69292dab3cf515bcf34f797505fc471fd730ce52.gz/SHA256E-s8007682770--a92621fade7d0eb33798d4bc69292dab3cf515bcf34f797505fc471fd730ce52.gz";
      r2 = "fp/V6/SHA256E-s8528903587--1d7892c59f8692bb111cac7581e1a27f89c69f0982eefe91ba27d60a1d66c034.gz/SHA256E-s8528903587--1d7892c59f8692bb111cac7581e1a27f89c69f0982eefe91ba27d60a1d66c034.gz";
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
    inherit samples;
    name = "SFRC01233";
    capture = TWISTv2;
  }
