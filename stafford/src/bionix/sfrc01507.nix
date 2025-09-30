with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        facets.reporting.preprocess = def facets.reporting.preprocess {
          mem = 50;
        };
      })
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "9x/83/SHA256E-s38795052648--3856e4fe5327edbc3a57dc6432fd9d80a0a59ace5ffe07596a014884649de939.gz/SHA256E-s38795052648--3856e4fe5327edbc3a57dc6432fd9d80a0a59ace5ffe07596a014884649de939.gz";
      r2 = "M1/2K/SHA256E-s41634331055--e129bc8a6bd00c7452c1106a49bd42804bd3d0d2f3f14f4dd19e9b8193bbc7a1.gz/SHA256E-s41634331055--e129bc8a6bd00c7452c1106a49bd42804bd3d0d2f3f14f4dd19e9b8193bbc7a1.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "k4/47/SHA256E-s80222936320--811cb8e09b0d7b4aa8d081d5cbf40bf99acaf3dae078308c76638bc441c9e4cb.gz/SHA256E-s80222936320--811cb8e09b0d7b4aa8d081d5cbf40bf99acaf3dae078308c76638bc441c9e4cb.gz";
      r2 = "9j/XV/SHA256E-s84314618443--c101eb7db9c8141d5541904bb981677eae6fba3d470aebb3fede059cf4db7ed8.gz/SHA256E-s84314618443--c101eb7db9c8141d5541904bb981677eae6fba3d470aebb3fede059cf4db7ed8.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "1V/65/SHA256E-s6598105264--9288522aec2a21dbe4744b2ca04219efb02c4856e59e48c21d3c4e54c929e62f.gz/SHA256E-s6598105264--9288522aec2a21dbe4744b2ca04219efb02c4856e59e48c21d3c4e54c929e62f.gz";
      r2 = "wg/Z4/SHA256E-s7207528716--797c02b7f5dfc4f5f75165af97840bde33bbe7ca3c36f77dcb82984dc48a5363.gz/SHA256E-s7207528716--797c02b7f5dfc4f5f75165af97840bde33bbe7ca3c36f77dcb82984dc48a5363.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "ECS";
      meeting_discussions_follow_up = "RC Meeting 14.04.2022\nDiscussed WGS report.\nDiscussion: Based on ARID1A mutation patient will be eligible for IMPARP-HRD trial - unknown whether the PTEN mutation will improve response. \n\nMatt: as mutations are in Cis a wt copy of ARID1A is still present. Check eligibility and note clearly in report \n\nMeeting with Clare 10.02.2022\nFresh tissue S1: Send snap frozen for WGS ";
      date_of_death = "9/2022";
      d_case_summary = "Recurrent endometrial carcinosarcoma";
      date_consented = "2022-01-14";
      tumour_type = "Endometrial carcinosarcoma";
      tumour_details = "Endometrial carcinosarcoma";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01507";
  }
