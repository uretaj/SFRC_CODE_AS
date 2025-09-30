with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "6Q/m8/SHA256E-s45297724060--5cf9fc4726c6ef9848df2b49c352ecf84aa56f2ba45583cf07e2f756fbc9e207.gz/SHA256E-s45297724060--5cf9fc4726c6ef9848df2b49c352ecf84aa56f2ba45583cf07e2f756fbc9e207.gz";
      r2 = "k6/fv/SHA256E-s47380602005--c3493be382319673c7bc5f9ee58c424e3377d16708e6f324a603cdd821355adf.gz/SHA256E-s47380602005--c3493be382319673c7bc5f9ee58c424e3377d16708e6f324a603cdd821355adf.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "xk/67/SHA256E-s88186702344--3686ac6c0133d35975aad570be900d00fd67eea63f63961a3dc3ea482e8dfc30.gz/SHA256E-s88186702344--3686ac6c0133d35975aad570be900d00fd67eea63f63961a3dc3ea482e8dfc30.gz";
      r2 = "jV/5P/SHA256E-s93830470258--65f0e9a300f4a64b0225e67dc8d7a66a4aad8d23936210d3a83971b476b99ebd.gz/SHA256E-s93830470258--65f0e9a300f4a64b0225e67dc8d7a66a4aad8d23936210d3a83971b476b99ebd.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "gynae cancer other";
      meeting_discussions_follow_up = "RC Meeting 23.06.2022\nLooked at SFRC WGS data.\nNothing major was found that was not reported by Grimmond.\nHigh Sig 3, but not enough evidence to say HRD. \n\nRC Meeting 14.04.2022\nDiscussed WGS report.\nDiscussion: TP53 mutations are on the same haplotype. Damien to issue report if Tony is happy with these findings. Will re-assess this case for research purposes once Justin has the data from UoM (later in the month/next month).  \n\nClare's meeting 10.02.2022\nSend for WGS after microdissection (DNA only). Ask team if getting RNA afterwards is ok, or better at once. \nMake new OCT block from SF, then can do RNA on that \nCheck to see if this is cervix or uterus (Mandy and Clare) \n\nNew Diganosis is \"Neuroendocrine carcinoma of likely genitourinary/ureteric primary origin (not cervix primary)\" As per letter from Alison Freimund on 6 Jan 22. Will upload letter to RedCap.\n\nCurrently reasonably well with minimal side effects to treatment.  \n\nMeeting with Clare 16.12.2021\nS1; No tumour, waiting for tissue from next surgery";
      date_of_death = "9/2022";
      d_case_summary = "Metastatic genitourinary neuroendocrine carcinoma\nDiagnosed December 2021, commenced Carboplatin/etoposide completed 6 cycles with PD\n- Commenced ipilimumab / nivolumab  May 2022 received 2 cycles with rapid progresson";
      date_consented = "2021-12-15";
      tumour_type = "Gynae NET";
      tumour_details = "Neuroendocrine carcinoma of likely genitourinary/ureteric primary origin (not cervix primary)";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01494";
  }
