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
      r1 = "V5/0f/SHA256E-s50758416919--3f195c33c9bcf66008a7039b1cdfe4783f3539af161f87733a714592b32d3e6a.gz/SHA256E-s50758416919--3f195c33c9bcf66008a7039b1cdfe4783f3539af161f87733a714592b32d3e6a.gz";
      r2 = "kJ/3G/SHA256E-s54521092135--d6554c5fdd96b98da7aacb3a9cd5c57d4eef86383f8d9ec9c915a6734d2e94a9.gz/SHA256E-s54521092135--d6554c5fdd96b98da7aacb3a9cd5c57d4eef86383f8d9ec9c915a6734d2e94a9.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "VX/kP/SHA256E-s89226026512--7cf297ea20f81cb9fc4cac3eac2f101bd66686f369e6ff0762a52f5bf86d0b8f.gz/SHA256E-s89226026512--7cf297ea20f81cb9fc4cac3eac2f101bd66686f369e6ff0762a52f5bf86d0b8f.gz";
      r2 = "xP/gp/SHA256E-s94969571517--b21416b63db790ba9d20df8c1d8db814bc77965f179145eefc08b7fcd731a5c8.gz/SHA256E-s94969571517--b21416b63db790ba9d20df8c1d8db814bc77965f179145eefc08b7fcd731a5c8.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "uLMS";
      meeting_discussions_follow_up = "RC Meeting 13.05.2021\nDiscussed WGS report - typical for uLMS.\nCould combine ATRi with PARPi? \nATRX -> PARPi + TOPOi https://www.thelancet.com/journals/ebiom/article/PIIS2352-3964(20)30347-9/fulltext \nWaiting for PDX.... \n\n2021.03.15\nS1 and S2 review back. Dissect tumour from S1 and submit for WGS";
      date_of_death = "04/2024";
      d_case_summary = "uLMS - metastatic";
      date_consented = "2020-08-21";
      tumour_type = "uLMS";
      tumour_details = "uLMS  Also had thyroid carcinoma March 2020";
      case_details = "Dx metastatic uLMS Stage 1B on TAHBSO on 31/1/2020. Adjuvant Pelvic RTx completed April 2020, Multiple lung nodules on CT Chest and PET July 2020\nMarch 2020, diagnosis of carcinoma of the thyroid (hemithyroidectomy)";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "2019 Tissue requested via email on 26/08/2020 from QML pathology by Josh";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01324";
  }
