with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B2";
      class = "normals";
      pdx = false;
      r1 = "QM/q8/SHA256E-s25709019479--c1573b3413f6d23cabae503747c06ba3d66e398af5a63f456af165b4083ca458.gz/SHA256E-s25709019479--c1573b3413f6d23cabae503747c06ba3d66e398af5a63f456af165b4083ca458.gz";
      r2 = "JW/Xq/SHA256E-s26459176732--3e2bc0651d8769191a129b7ad57ee90afbbd1f69a886c27ebdab22ed6f8ef07f.gz/SHA256E-s26459176732--3e2bc0651d8769191a129b7ad57ee90afbbd1f69a886c27ebdab22ed6f8ef07f.gz";
    }
    {
      site = "B2";
      class = "normals";
      pdx = false;
      r1 = "zg/v1/SHA256E-s1767851784--9a94d8fa892bf76008df508bcd0b30845e1a1e896ecf3930301a8262176535fe.gz/SHA256E-s1767851784--9a94d8fa892bf76008df508bcd0b30845e1a1e896ecf3930301a8262176535fe.gz";
      r2 = "kZ/wM/SHA256E-s1806747531--04266b7002f1e60b1a0d0c20f770be5f0531ceff3dc124a869696c8fd4f3d495.gz/SHA256E-s1806747531--04266b7002f1e60b1a0d0c20f770be5f0531ceff3dc124a869696c8fd4f3d495.gz";
    }
    {
      site = "S1_T1";
      class = "tumours";
      pdx = true;
      r1 = "vZ/p6/SHA256E-s38531427545--921f56fdf79d5923ef774ba27e1f503db97cb13dcb466b4efc954e5cd0d64f76.gz/SHA256E-s38531427545--921f56fdf79d5923ef774ba27e1f503db97cb13dcb466b4efc954e5cd0d64f76.gz";
      r2 = "Gg/W8/SHA256E-s39845066506--16ac9aa8955eb34f4f1c2fc925fd2f7944048865336e0e01f358e7baf34dfdf9.gz/SHA256E-s39845066506--16ac9aa8955eb34f4f1c2fc925fd2f7944048865336e0e01f358e7baf34dfdf9.gz";
    }
    {
      site = "S1_T1";
      class = "tumours";
      pdx = true;
      r1 = "7W/xX/SHA256E-s30426257144--782c69baf1a03733c95e85e7967f1b9a2105700dcf44ff10124cee4d9f9a3a78.gz/SHA256E-s30426257144--782c69baf1a03733c95e85e7967f1b9a2105700dcf44ff10124cee4d9f9a3a78.gz";
      r2 = "V7/v9/SHA256E-s31093724712--6ce5e8ce902886f38eb4f15314e9a39cfb3f22270b33a83ddc291f98cc40850b.gz/SHA256E-s31093724712--6ce5e8ce902886f38eb4f15314e9a39cfb3f22270b33a83ddc291f98cc40850b.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "NOMINATOR 01012";
      genomes100_tumour_types = "HGSEC";
      meeting_discussions_follow_up = "RC meeting notes 01.10.2020\nDiscussed BROCA results S1, S1_T1, S2, S3, S4.\nThe same TP53 mutation in all samples is a good indication samples are correct. AKT mutation probably the driver.";
      date_of_death = "11/2018";
      date_consented = "2017-11-23";
      tumour_type = "HGSEC";
      tumour_details = "HGSendo";
      pre_analysis_mutations = "Nominator:\nAKT1 (c.49G>A, 75.4%), \nTP53 (c.733G>A, 60.4% Exon 7), \nKMT2D (c.9872del, 42.7%)";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01063";
  }
