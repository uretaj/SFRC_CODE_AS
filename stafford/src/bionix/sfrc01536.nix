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
      r1 = "Mp/Wm/SHA256E-s45472362546--b6987db1724265989c853b76c9d37c91e493f8436a4bba43faf6e0f20df20427.gz/SHA256E-s45472362546--b6987db1724265989c853b76c9d37c91e493f8436a4bba43faf6e0f20df20427.gz";
      r2 = "73/Gg/SHA256E-s48566788966--20b18a9bb8f176b7cec425839996435e932ecd0cc08a85e5f4279452c1082f63.gz/SHA256E-s48566788966--20b18a9bb8f176b7cec425839996435e932ecd0cc08a85e5f4279452c1082f63.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "pf/7K/SHA256E-s8602782962--8f8b3d2f327d3104983cebe73ad9d6052d63c23d5ae08b4ab88e103d07951514.gz/SHA256E-s8602782962--8f8b3d2f327d3104983cebe73ad9d6052d63c23d5ae08b4ab88e103d07951514.gz";
      r2 = "6m/0p/SHA256E-s8521533471--be81f1ac5532b1e6b2293744044653b75cc8364ae151e22a8a759e8ed284e9aa.gz/SHA256E-s8521533471--be81f1ac5532b1e6b2293744044653b75cc8364ae151e22a8a759e8ed284e9aa.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "F3/xv/SHA256E-s77906141143--ebe22930ba67822c7310ef62e0e9324b98e1ed0bda7c1c2369bb578a87d26ad7.gz/SHA256E-s77906141143--ebe22930ba67822c7310ef62e0e9324b98e1ed0bda7c1c2369bb578a87d26ad7.gz";
      r2 = "1X/qZ/SHA256E-s83334208319--165b06c7745504928800bd396dfb577c2770f4fb3cacf7cbc8c5fd3cc9d2fd10.gz/SHA256E-s83334208319--165b06c7745504928800bd396dfb577c2770f4fb3cacf7cbc8c5fd3cc9d2fd10.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "non-gynae cancer";
      meeting_discussions_follow_up = "RC meeting 17.03.2022\nSend snap frozen from S1 for WGS\n\nSamples ready for WGS. \nNeed to find out from letters if report will be urgent.";
      date_of_death = "07/2023";
      d_case_summary = "Young patient (28) with multiple recurrences of Phylloides tumour of breast\nNow presents around 10 months post PMRT(50Gy/25";
      date_consented = "2022-03-02";
      tumour_type = "Breast cancer";
      tumour_details = "Phyllodes tumour of breast";
      case_details = "Young patient (28) with multiple recurrences of Phyllodes tumour of breast. Diagnosed 2010 and excised 2010, 2014, 2018; R mastectomy 25/11/2020, second surgery 9/12/2020 (nil residual tumour). Radiation March-April 2021. ";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      breast_tumour_type = "Phyllodes tumour of breast";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01536";
  }
