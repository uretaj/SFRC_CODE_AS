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
      r1 = "6W/p5/SHA256E-s55479430452--b9579e8f2a7f99d87c10e8dd88b7d416d1e1c6d3e0a00a77689d14d74b0d648c.gz/SHA256E-s55479430452--b9579e8f2a7f99d87c10e8dd88b7d416d1e1c6d3e0a00a77689d14d74b0d648c.gz";
      r2 = "Jp/4W/SHA256E-s57737794025--194141c61b062e652905b4462d9785c4995ca6a285d4bfee322d80c811f47297.gz/SHA256E-s57737794025--194141c61b062e652905b4462d9785c4995ca6a285d4bfee322d80c811f47297.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "Jg/Q8/SHA256E-s103190985628--2f108c34e89373ca16cb54406d64dce96bd91838413b5cd840e75c434ce2d2fc.gz/SHA256E-s103190985628--2f108c34e89373ca16cb54406d64dce96bd91838413b5cd840e75c434ce2d2fc.gz";
      r2 = "54/q2/SHA256E-s108265793636--15c027e6aed2e028932b600fbc9b57c8c8694572c071d96a0d6bf1578081bee8.gz/SHA256E-s108265793636--15c027e6aed2e028932b600fbc9b57c8c8694572c071d96a0d6bf1578081bee8.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "clear cell";
      meeting_discussions_follow_up = "BROCA meeting Amandine/Clare 04.03.2022\nSend S1 for BROCA";
      date_of_death = "06/2019";
      date_consented = "2019-04-16";
      tumour_type = "Clear cell gynae other";
      tumour_details = "High Grade Endometrial Clear Cell";
      case_details = "Diagnosis originally carcinoma of endometrium, Stage IIIC with a component of high grade serous but also clear cell, known to be drug resistant. Treated with surgery and combined Chemo radiotherapy. March 2019, umbilical recurrence with clear cell cancer endometrium, biopsied for histological and molecular clarification. \n\nReceived fresh tissue (umbilical lesion biopsy) 28-Mar-19\n";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01160";
  }
