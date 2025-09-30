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
      r1 = "6f/0J/SHA256E-s35339414699--7f4343c4c2ecba2b1f0a5a2208695cd4bceef4d8b91adeaba2b6934676f8dc1a.gz/SHA256E-s35339414699--7f4343c4c2ecba2b1f0a5a2208695cd4bceef4d8b91adeaba2b6934676f8dc1a.gz";
      r2 = "J2/1F/SHA256E-s38238744587--f81d736b69b07b3e100537a7af7dacbb50968d79819d773aea84d8d334bd1cea.gz/SHA256E-s38238744587--f81d736b69b07b3e100537a7af7dacbb50968d79819d773aea84d8d334bd1cea.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "1v/ZP/SHA256E-s81049400022--7d737cf0a749ac2d8e8275996289c57b91afcd16a85ed73396543d33bb0e1b63.gz/SHA256E-s81049400022--7d737cf0a749ac2d8e8275996289c57b91afcd16a85ed73396543d33bb0e1b63.gz";
      r2 = "2k/q5/SHA256E-s88087165326--0a1f4b670e1cc4c970ad872ca4c90513d5441fde4fcf4eb8ba521000916d140e.gz/SHA256E-s88087165326--0a1f4b670e1cc4c970ad872ca4c90513d5441fde4fcf4eb8ba521000916d140e.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "HGSEC";
      meeting_discussions_follow_up = "RC Meeting 2021.09.30\nDiscussed WGS report (html).\nGermline BARD1 is benign, as is PALB2.\nSomatic PIK3CA and RHOA. \nLoss of RB1 and FOXA1.\nSig 16 high, but unknown function.\nSig 3 high, but HRProficient according to Chord algorithm. Possibly telomeric instability in chrom 18 suggests borderline HRD even though called proficient by Chord. \n\n\nRC Meeting notes 2020.07.09\nS1 is best sample at 70% tumour purity and we have PBMCs. To do WGS (Clare will talk to Sean about analysis of this case)\nPDX (S1) is cisplatin refractory but responds to paclitaxel and vinorelbine \n\nMeeting discussion 2019.08.15\nOften freezing artifacts in OCT blocks so try to avoid OCT method if possible for DNA extraction in the future \nQuerying clear cell - Gayanie review says HGS of ovary or FT, path report also suggests HGS \nNothing to do until there is a PDX and then pass to Cass ";
      myriad_report = "SFRC01198_MyriadResult_06Jun2022_31_Redacted.pdf";
      date_of_death = "8/2019";
      date_consented = "2019-07-02";
      tumour_type = "HGSEC";
      tumour_details = "HGSEC  Initially thought to be high grade ovarian clear cell  Path report says HGSOC and gayanie confirmed HGSOC  Myriad rejected it as HGSEC  Our WGS analysis c/w HGSEC";
      case_details = "Patient deceased end Aug19.";
      myriad_submission = "Yes";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "Myriad rejected it as HGSEC";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Rapid Progressor";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01198";
    predictNeoantigens = true;
  }
