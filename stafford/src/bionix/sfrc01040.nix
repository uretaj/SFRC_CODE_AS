with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        octopus.callSomatic = def octopus.callSomatic {mem = 180;};
        minimap2.align = def minimap2.align {
          mem = 50;
          walltime = "48:00:00";
        };
      })
  ];
}; let
  samples = [
    {
      site = "2B";
      class = "normals";
      pdx = false;
      r1 = "jx/16/SHA256E-s12168075286--64547a3ae70ee328b0649111c3a572cf2be872173f0eb5aca2fe48ab7d11d5be.gz/SHA256E-s12168075286--64547a3ae70ee328b0649111c3a572cf2be872173f0eb5aca2fe48ab7d11d5be.gz";
      r2 = "K2/6j/SHA256E-s12340899655--01bbf55fef87d1d73874972a3c437da976bc438314299c1ab70a0e0c49fccca4.gz/SHA256E-s12340899655--01bbf55fef87d1d73874972a3c437da976bc438314299c1ab70a0e0c49fccca4.gz";
    }
    {
      site = "2B";
      class = "normals";
      pdx = false;
      r1 = "6J/5p/SHA256E-s21452358181--3159c8949c6fec46f4be3f9f07bfde587d48d8031a9c25dc1be56cca5f2f34ec.gz/SHA256E-s21452358181--3159c8949c6fec46f4be3f9f07bfde587d48d8031a9c25dc1be56cca5f2f34ec.gz";
      r2 = "3X/w3/SHA256E-s21466873765--da04164804a7310a965fb3b310ccba308416a9d7d098142b83e7316d67855244.gz/SHA256E-s21466873765--da04164804a7310a965fb3b310ccba308416a9d7d098142b83e7316d67855244.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "qq/4W/SHA256E-s61912051927--862a71123545426203e461e039a15efd0a716203fd6184b6224ce7ffbfcd9e14.gz/SHA256E-s61912051927--862a71123545426203e461e039a15efd0a716203fd6184b6224ce7ffbfcd9e14.gz";
      r2 = "61/G9/SHA256E-s66884981817--fc136ec84807f213db30d8e875fae9e5d4e85ac2532112e3c238d25e972d95dd.gz/SHA256E-s66884981817--fc136ec84807f213db30d8e875fae9e5d4e85ac2532112e3c238d25e972d95dd.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "AOCS 134107";
      genomes100_tumour_types = "OCS";
      meeting_discussions_follow_up = "Redcap meeting with Clare 09.03.2020\nSend for BROCA";
      date_of_death = "2/2014";
      date_consented = "2017-03-10";
      tumour_type = "Ovarian Carcinosarcoma";
      tumour_details = "ovarian Carcinosarcoma, deceased 16/02/2014";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01040";
  }
