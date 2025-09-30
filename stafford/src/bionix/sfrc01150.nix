with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "98/8P/SHA256E-s37107539195--0129f7acd9ee59a4edcffd58cf6640cd49ebb0fab7bf4886a8bd8433c4e7a81d.gz/SHA256E-s37107539195--0129f7acd9ee59a4edcffd58cf6640cd49ebb0fab7bf4886a8bd8433c4e7a81d.gz";
      r2 = "gp/w2/SHA256E-s39828640598--d82318a1f4fa1c546f4be076f0569fb576cecb0b53fd18faa82fd54711b3fb77.gz/SHA256E-s39828640598--d82318a1f4fa1c546f4be076f0569fb576cecb0b53fd18faa82fd54711b3fb77.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "f1/VP/SHA256E-s78985054305--9a6e3f736c8fb63b9da7ff306278a01d5a6f08934c11e4a6d8f54ba2118f933c.gz/SHA256E-s78985054305--9a6e3f736c8fb63b9da7ff306278a01d5a6f08934c11e4a6d8f54ba2118f933c.gz";
      r2 = "jg/5W/SHA256E-s87516545425--e5b1c8d258da2a0958a2d4b8e69d8640a09ddc51b4cf8b74db2b662844017acf.gz/SHA256E-s87516545425--e5b1c8d258da2a0958a2d4b8e69d8640a09ddc51b4cf8b74db2b662844017acf.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "wK/x3/SHA256E-s6220974221--8ecaab7d1f2d04920c33a5ac5ec199570d02169bd26e538a5e20c05d66b31b8c.gz/SHA256E-s6220974221--8ecaab7d1f2d04920c33a5ac5ec199570d02169bd26e538a5e20c05d66b31b8c.gz";
      r2 = "mZ/k6/SHA256E-s6409065032--fe0e15a88bb480aca206a9d57f13fee253bd5e2053bc49abfc9ad0c591ac1763.gz/SHA256E-s6409065032--fe0e15a88bb480aca206a9d57f13fee253bd5e2053bc49abfc9ad0c591ac1763.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "uLMS";
      meeting_discussions_follow_up = "RC Meeting 10.12.2020\nClassic RB1 and ATRX mutations. Sig 3 not top signature, is HR Competent ";
      date_of_death = "4/2022";
      date_consented = "2019-03-13";
      tumour_type = "uLMS";
      tumour_details = "Undifferentiated Uterine Sarcoma; ? LMS";
      case_details = "28/10/2022: 2016 block requested from RWH pathology by Devindee for uLMS study. \n____\nHigh grade, undifferentiated uterine sarcoma, FIGO Stage IB, diagnosed 7/7/2016 from TAHBSO\n\nAdjuvant pelvic radiotherapy (54Gy/30 fractions, & Aug-27 Sep 2018)\nPET in Feb 18 found lung mets, resected in April 2018.\n";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "RWH Pathology\nHisto Number: 16975978\nCollected: 07Jul2016\nRequested 18Apr2019 (Briony)\nReceived slides (block 1L) 9-May-19\n\n2016 uLMS block recalled on 23/06/2020 from RWH via email  on 23/06/2020 by Josh for uLMS project\n\n2016 uLMS tissue Block 1D received on 30/08/2020 by Josh for uLMS project";
      histology_summary = "TAH BSO\n- Weakly ER positive\n- PR negative\n- Desmin, vimentin positive\n- SMA, Caldesmon, CD10 patchy weak positivity\n- HMB45, AE1/3 - very focal positivity \n- 3100, Cyclin D1, C-kit, HMB 45, Melan A negative";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01150";
  }
