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
      r1 = "FK/XX/SHA256E-s34972258474--ddbfcb6033346682e0bc10ba1d650c9f15a8d01b66581d16948e065cf34f3e06.gz/SHA256E-s34972258474--ddbfcb6033346682e0bc10ba1d650c9f15a8d01b66581d16948e065cf34f3e06.gz";
      r2 = "1p/64/SHA256E-s37730742812--02e6b8f63bea92185a9ddd5b771cd82b8043382e8e42481b3db9819b08f6efce.gz/SHA256E-s37730742812--02e6b8f63bea92185a9ddd5b771cd82b8043382e8e42481b3db9819b08f6efce.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "8J/jf/SHA256E-s76704925377--2b0ff5794f504dabdceeea421bb298457d21eadcac6df1f026a4a24abe2f3fe5.gz/SHA256E-s76704925377--2b0ff5794f504dabdceeea421bb298457d21eadcac6df1f026a4a24abe2f3fe5.gz";
      r2 = "vg/z4/SHA256E-s81947542320--7baf6db2a9958b956d82f28ec4a93a1add59df52954a560de7b34e38cc82dd90.gz/SHA256E-s81947542320--7baf6db2a9958b956d82f28ec4a93a1add59df52954a560de7b34e38cc82dd90.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "LGSOC";
      meeting_discussions_follow_up = "Meeting notes 2019.11.28\nWGS: Patient in 40s, already had chemo, been on letrozole, panel test didn't show anything, 40% of LGSOC have no standard molecular variants \nNot much known about RASA1 mutation, frequency is 31%, now eligible for RAF/MEK beigene clinical trial, seems to work well in LGSOC \n\nMeeting note 2019.08.15\nQuery of whether low or high grade - send for WGS \nOlga reports Allocate findings from earlier sample (some years ago): no TP53 mutation, SMARCA4 at 9%, low copy number changes, suggests low grade (grade 2) \nPrue Allan reports (from July sample): high TP53 staining (strong nuclear staining in more than 50% of tumour cells) suggests high grade (still grade 2) so perhaps has become high grade? \nAlthough Gayanie's review is low grade \nPatient has gone on to Arimidex (aromatase inhibitor) ";
      date_consented = "2019-06-18";
      tumour_type = "LGSOC";
      tumour_details = "LGSOC";
      case_details = "WGS clinical notes\nDiagnosis 2015: Presumed Recurrent Low Grade Serous Ovarian Cancer (not HGSOC). Biopsy July 2019 reviewed by Drs Allan and Prall - indeterminant grade, small molecular panel p53 UV; larger panel/WGS pending. Likely low grade serous. On Arimidex; ? anything for the BGB283/MEKi trial";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01192";
  }
