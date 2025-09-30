with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A";
      class = "tumours";
      pdx = false;
      r1 = "x1/5w/SHA256E-s12603241705--c1b8289048187a81153744ea9351018d11bccac2e09d5cd3dd7b082fb2861f74.gz/SHA256E-s12603241705--c1b8289048187a81153744ea9351018d11bccac2e09d5cd3dd7b082fb2861f74.gz";
      r2 = "Mp/F2/SHA256E-s11627416521--f935810c83006948150d78969fc9a63b9b4258d25290254a145e21c3d0e6159e.gz/SHA256E-s11627416521--f935810c83006948150d78969fc9a63b9b4258d25290254a145e21c3d0e6159e.gz";
    }
    {
      site = "A";
      class = "tumours";
      pdx = false;
      r1 = "wj/p5/SHA256E-s5451687643--fd7e576d3d8524b30c2a45b6c59bb374351a34f8cce9c38d3bab27944c722f98.gz/SHA256E-s5451687643--fd7e576d3d8524b30c2a45b6c59bb374351a34f8cce9c38d3bab27944c722f98.gz";
      r2 = "PM/ZP/SHA256E-s5633918974--28862230745dc1ac4becf885e2a052a898f1910dcee83e4af8cf5d2afffdec46.gz/SHA256E-s5633918974--28862230745dc1ac4becf885e2a052a898f1910dcee83e4af8cf5d2afffdec46.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "9f/9w/SHA256E-s5116287417--9612e016470f3e40ab9d78cdc92b6583694a197f6ffd03034bac79e7e0d7299c.gz/SHA256E-s5116287417--9612e016470f3e40ab9d78cdc92b6583694a197f6ffd03034bac79e7e0d7299c.gz";
      r2 = "Jf/18/SHA256E-s4946067660--9df9b03c2bc1d635e6d2543a19f3595937f1709ce6459ac2a608f4e696844f16.gz/SHA256E-s4946067660--9df9b03c2bc1d635e6d2543a19f3595937f1709ce6459ac2a608f4e696844f16.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "8G/4J/SHA256E-s1944047457--2fa805f062bf9f5d0cb4f05a53ca145a7e3ad2b4546a496dd188a7a238219bf2.gz/SHA256E-s1944047457--2fa805f062bf9f5d0cb4f05a53ca145a7e3ad2b4546a496dd188a7a238219bf2.gz";
      r2 = "6v/wg/SHA256E-s2071955416--5b3c55f631549986137fba37ab086541ad3527dbfde7742b8d70f5f45532ac70.gz/SHA256E-s2071955416--5b3c55f631549986137fba37ab086541ad3527dbfde7742b8d70f5f45532ac70.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC meeting 02.2022\nBioinformatic to check if TFPT CNOT3 ZNF331 (deletion) are part of an interesting pathway. Jocelyn checked: TFTP very relevant, Interesting but not enough to go on for clinical or research purposes, other 2 not relevant. \n\nRC meeting 20.01.2022\nre discuss  TFPT CNOT3 ZNF331 deletion to see if they are involved in an interesting pathway. if so need to include then in WES report. \n\nClare's meeting notes  2021.07.29\nSFRC01390_A,Plan: do WES. Donor funds ";
      d_case_summary = "diagnosed with metastatic Uterine Leiomyosarcoma in October 2019. In MoST program.";
      date_consented = "2021-02-18";
      tumour_type = "uLMS";
      tumour_details = "uLMS";
      case_details = "Female in her late 40s.  \n04.2020 \tRight Modified Radical Neck Dissection\nChemo \nCycle 1 - 06.01.2020 and 13.01.2020 \nCycle 2 - 28.01.2020 and 04.02.2020  \nCycle 3 - 17.02.2020 and 24.02.2020 \nDay 1 Gemcitabine Day 8 Gemcitabine and Docetaxel Ceased due to Pneumonitis \n29.11.2019 \tAnastrozole 1mg one daily Stopped due to commencing chemo \n11.11.2019\t Excision of Right Groin Lymph Node \n11-2019.  \t Radiation Treatment to Right Neck Mass  6 weeks (30 treatments)  \n10-2019   \tRadical Hysterectomy Bilateral Salpingo Oophorectomy \n09-2019\tOpen Biopsy Right Supraclavicular Mass (This block) \n08-2019\tDeep Organ Biopsy (Core) \n07-2019\tFine Needle Biopsy - Neck Ultrasound \n\n14/10/2019\tsurgery TAHBSO\n4/11/2019\tstart radiation. End 13/12/19\n11/11/2019\tsurgery right groin lymph node\n29/11/2019\tstart Anastrazole\n6/1/2020\tstop Anastrazole\n6/1/2020\tstart GEM/TXT\n24/2/2020\tlast GEM/TXT\n5/3/2020\tpneumonitis\n24/4/2020\tsurgery radical neck dissection\n13/1/2023\thad 4th cycle of chemo(?) week before\n30/1/2023\tsurgery vaginal lesions";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "16Mar2023- primary block requested from DHM by Briony for uLMS project, follow up sent 30Mar.\n\n07/11/2022: 2019 block requested from NSW Health pathology North by Devindee for uLMS project.\n\n2019 block requested from NSWP by Warren 30/04/21\n2019 DHM right supraclavicular block received 29/6/21 by Warren";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01390";
  }
