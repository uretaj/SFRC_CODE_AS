with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "4.1";
      class = "tumours";
      pdx = false;
      r1 = "gp/qp/SHA256E-s19516660037--e20e90f152e934d03f19ce84897e41b100b07d10cfd233cb7707ada0d3db60e4.gz/SHA256E-s19516660037--e20e90f152e934d03f19ce84897e41b100b07d10cfd233cb7707ada0d3db60e4.gz";
      r2 = "76/vP/SHA256E-s20360013649--7c9cf01777adb1e687ee6f78f036a09a2b2de714ac71306c9650e28becdc6358.gz/SHA256E-s20360013649--7c9cf01777adb1e687ee6f78f036a09a2b2de714ac71306c9650e28becdc6358.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "VW/MV/SHA256E-s5950599085--9fadc7a36faafd22973989425d084d111e265e3247290dbe21f1a781d70f9fcf.gz/SHA256E-s5950599085--9fadc7a36faafd22973989425d084d111e265e3247290dbe21f1a781d70f9fcf.gz";
      r2 = "xw/P8/SHA256E-s6039078965--36d0da0ca1956a7982c251d9fd32236aa19e47a4b26ea2371eed8dd6b455a2c3.gz/SHA256E-s6039078965--36d0da0ca1956a7982c251d9fd32236aa19e47a4b26ea2371eed8dd6b455a2c3.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare, Ratana, Rae 04.03.2023\nBROCA for FFPE Block 4.1\n\nRC Meeting 23.02.2023\nDiscussed WES report\nHER2 amp in the first FFPE sample, the TSO500 (later sample) did not pick up an amplification. Wait for IHC/ISH. \nPMS1 - report as VUS \nWill report with HER2.\n\nRC meeting 29.09.2022\nDiscussed TSO500 report.\nWould the PPP2R1A make her sensitive to PARPi? Combo treatment is still the aim.  \nNo evidence for direction of therapy. \n\nClare Meeting 19.09.2022\nReviewed FFPE block 4.1. Still do WES on this sample.\nCheck if HER2 has been done.\nIs a repeat responder to platinum.\n\nAugust 2022\nMicrodissect S1 OCT block for DNA only and submit for TSO500.\nBaseline block has been recalled; after review, can do WES.\n\nClare's Meeting 30.05.2022\n-Classic case acting like HGSOC (BRCA-like), good responses to platinum (not usual HGSEC) \n-Would like WGS - cut into the OCT block. Holly's project. \n-Can do TSO500 (for HRD genes) - but our FFPE block is a challenge \n-Need the path report. If there is a diagnostic block in the Austin, can do TSO500 on that. Ask Mandy for a letter from Austin, see if patient is having chemo now. ";
      d_case_summary = "Uterine serous ca- exceptional responder.";
      date_consented = "2022-04-20";
      tumour_type = "HGSEC";
      tumour_details = "HGSEC Dx 2016";
      case_details = "74F\n\n2016: Diagnosed FIGO 4 high grade serous uterine cancer, platinum sensitive\n\n2016-03 - 2016-09: Treatment: carboplatin/paclitaxel x6. Complete response.\n\n2016-04: Surgery: BSO, D&C, polypectomy\n\n2016-05: Surgery: laparotomy, radical hysterectomy, omentectomy, peritoneal biopsy. (FFPE Block 4.1)\nIHC positive: p53 (diffuse), p16 (diffuse), ER (<5% weak focal)\nIHC negative: PR, WT1\n\n2017-10: Recurrence with multifocal deposits near the bowel. Commenced carboplatin/Caelyx x6 until 2018-03. \n\n2018: Commenced Tamoxifen\n\n2019 - 2020: rising CA-125\n\n2020-12: CT scan confirmed extensive omental tumour. Commencement of chemo.\n\n2022-04: Fresh HGSOC omental biopsy S1 received (no formal histology performed), Blood B1 received. \n\n2022-07: Completed 6x cycles single agent carboplatin\n\n2022-09: S1 DNA sent for TSO500:\nTier IID\nTP53 NM_000546.5 c.818G>A p.R273H, VAF 7%  \nPPP2R1A NM_014225.5 c.767C>T p.S256F, VAF 3.5%  \nTier III (VUS) \nFAT1 NM_005245.3 c.7628delA p.N2543Mfs*21, VAF 11.7 % \n\n2022-09: Sections from FFPE Block 4.1 (from 2016-05 surgery) received.\n\n2022-11: 4.1 and B1 DNA sent for WES.\n\n2023-02: Sections from FFPE Block 4.1 sent for HER2 IHC and ISH - results pending.\n";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "22/08/2022: 2016 sample requested from Austin pathology by Devindee.\n01/09/2022: 2016 sample slides received from Austin pathology by Devindee.\n02/09/2022: 2016 (block 4.1) H&E slide requested from Austin pathology by Devindee.\n28/09/2022: 2016 H&E slide received.";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01569";
    capture = CREv2;
  }
