with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {samtools.sort = def samtools.sort {walltime = "48:00:00";};})
  ];
}; let
  samples = [
    {
      prefix = "grimmond/s3/batch8/L2000166_S3";
      suffix = "_001";
      site = "B1";
      class = "normals";
      sha256-1 = "173ce62bec37fc95674753cbe4abd70db1dc7dc25d175280ff3206defdd26230";
      sha256-2 = "7466cf59ecf3236fa430273091a7f825c140529597a1beb909620e51527f6e13";
    }
    {
      prefix = "grimmond/s3/batch8/L2000167_S4";
      suffix = "_001";
      site = "S1+S3";
      class = "tumours";
      sha256-1 = "755cc2a648f2a97803f171d1b6917ff9bcf31ffde1750022ecc96336d95d6b2a";
      sha256-2 = "0f6a671b3e4cd8bdffaa64a9cec1ebd8d0df14987dd05d1b739695074d0d647e";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "LGSOC";
      meeting_discussions_follow_up = "RC Meeting notes 09.07.2020\nHave never found any actionable aberrations on previous analysis.  This tumour purity not high enough for analysis.  Could do WES in the future for a specific research project. \nClare will pass this on to clinician. \n\nMeeting notes 30.01.2020\nGet both S1 OCT and S3 OCT sectioned and microdissected for DNA to send for WGS \n\nMeeting notes 2019.11.21\nHaving another biopsy next month, wait to see what we get before going ahead with anything.\n\nMeeting notes 24.10.2019\nPlan:  Meant to be considering WES because knew there would be a problem with tumour purity \nBlock the SF tissue in OCT and section for dissection - check DNA quality and potentially send for WGS (WES if quality not so good) Calendar note 24.09.2019\nBiopsy 9am at PMCC Jo Casey to attend with media. LGSOC for WGS";
      date_of_death = "12/2020";
      date_consented = "2019-05-07";
      tumour_type = "LGSOC";
      tumour_details = "LGSOC metastatic  In frame insertion in ARHGEF7 in the LGSOC case (SFRC01172) - from Joep from failed WGS";
      case_details = "35 yo Diagnosed with LGSOC 2016 aged 32 yo; 6x carbo taxol 2017. Anastrazole 2018, Carbo/Caelyx x 1 2018 - ceased due to symptoms. Tamoxifen. Allocate panel - No actionable aberrations. 3 failed biopsies (one surgical groin biopsy - only fat).";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01172";
  }
