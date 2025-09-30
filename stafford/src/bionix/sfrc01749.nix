with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "ZQ/1x/SHA256E-s684050786--bca6b733e2c2503f9bd98f102cdab7fd61154a152194a90af508abfd400ddbea.gz/SHA256E-s684050786--bca6b733e2c2503f9bd98f102cdab7fd61154a152194a90af508abfd400ddbea.gz";
      r2 = "fz/Jf/SHA256E-s681885011--8e6359414bdad11eaeb9000053e22e35d1d9cd7a43af58a16ab37f399ffcee46.gz/SHA256E-s681885011--8e6359414bdad11eaeb9000053e22e35d1d9cd7a43af58a16ab37f399ffcee46.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "9j/94/SHA256E-s687646176--59a2c7525184baa5748f39c8e18f2a188b60ef4b17587cb6ab9c7b3c8c843397.gz/SHA256E-s687646176--59a2c7525184baa5748f39c8e18f2a188b60ef4b17587cb6ab9c7b3c8c843397.gz";
      r2 = "gJ/FJ/SHA256E-s689600562--f81c2cff03f81744351c02685ee7437413b6439acd66c448f0083082abb51e83.gz/SHA256E-s689600562--f81c2cff03f81744351c02685ee7437413b6439acd66c448f0083082abb51e83.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "WJ/XP/SHA256E-s683611802--c2f5444d9a16f4c92b6f6e66f5c06d5823900ad1cf498d6a539528c4609a1bfd.gz/SHA256E-s683611802--c2f5444d9a16f4c92b6f6e66f5c06d5823900ad1cf498d6a539528c4609a1bfd.gz";
      r2 = "z3/MQ/SHA256E-s683520709--ee328b58be116669a68fbf7b3e797ee3bb91061673fea4ed544e362e0b2caf16.gz/SHA256E-s683520709--ee328b58be116669a68fbf7b3e797ee3bb91061673fea4ed544e362e0b2caf16.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "gx/4Z/SHA256E-s709103438--404e9bd4ba9482b401077b9efce1f2311a74210907744683044f600484cc3a08.gz/SHA256E-s709103438--404e9bd4ba9482b401077b9efce1f2311a74210907744683044f600484cc3a08.gz";
      r2 = "wm/GG/SHA256E-s713156458--608326b55a38c9c480ae11a560fabc5eaa671554bbf20b29af1d9fac7ff04ab1.gz/SHA256E-s713156458--608326b55a38c9c480ae11a560fabc5eaa671554bbf20b29af1d9fac7ff04ab1.gz";
    }
    {
      site = "1K";
      class = "tumours";
      pdx = false;
      r1 = "X3/6q/SHA256E-s1608164891--dbc97ef838860fddf852ef1885958209fed17097f6f5e071654cd2f375887a94.gz/SHA256E-s1608164891--dbc97ef838860fddf852ef1885958209fed17097f6f5e071654cd2f375887a94.gz";
      r2 = "jM/gX/SHA256E-s1632636923--f2d9c31bcca24f2aaf1061189782132ddc3908a612599bae17729888d951e4e8.gz/SHA256E-s1632636923--f2d9c31bcca24f2aaf1061189782132ddc3908a612599bae17729888d951e4e8.gz";
    }
    {
      site = "1K";
      class = "tumours";
      pdx = false;
      r1 = "mK/m9/SHA256E-s1603277090--db826b2159431c6b247fd08bd84575338f98d12fc6b453b7cbd8e9106520daea.gz/SHA256E-s1603277090--db826b2159431c6b247fd08bd84575338f98d12fc6b453b7cbd8e9106520daea.gz";
      r2 = "fM/86/SHA256E-s1628156360--7b4177355fe36e02dcb667d0a83c62e5eb213b3957c4c373eb907f0e283b9d7b.gz/SHA256E-s1628156360--7b4177355fe36e02dcb667d0a83c62e5eb213b3957c4c373eb907f0e283b9d7b.gz";
    }
    {
      site = "1K";
      class = "tumours";
      pdx = false;
      r1 = "3k/JF/SHA256E-s1804133259--7cddfd4fa7d9b8b2b84d979c08ad2339b23bb9091d011d7ac431bc69abfbd75d.gz/SHA256E-s1804133259--7cddfd4fa7d9b8b2b84d979c08ad2339b23bb9091d011d7ac431bc69abfbd75d.gz";
      r2 = "P2/Mz/SHA256E-s1837482890--c0da94f09a49c43786e09801a9ad6a83024e1c5ce1592592d933dcc390b19680.gz/SHA256E-s1837482890--c0da94f09a49c43786e09801a9ad6a83024e1c5ce1592592d933dcc390b19680.gz";
    }
    {
      site = "1K";
      class = "tumours";
      pdx = false;
      r1 = "0K/VP/SHA256E-s156722436--6a3ee2f72b0d554d09ea422537cd623f49d0c43ff86e351fa957f1d849f2e45e.gz/SHA256E-s156722436--6a3ee2f72b0d554d09ea422537cd623f49d0c43ff86e351fa957f1d849f2e45e.gz";
      r2 = "jV/Mv/SHA256E-s156554669--4513d024cbb426096ecae0e43e0240bed8a80368bd0b04850165c34407f62ece.gz/SHA256E-s156554669--4513d024cbb426096ecae0e43e0240bed8a80368bd0b04850165c34407f62ece.gz";
    }
    {
      site = "1K";
      class = "tumours";
      pdx = false;
      r1 = "12/k6/SHA256E-s85367779--1667afe50c2ecb6dbf6c708d5e5b25769a3976a7338aa7ba83b3943b89b98aa4.gz/SHA256E-s85367779--1667afe50c2ecb6dbf6c708d5e5b25769a3976a7338aa7ba83b3943b89b98aa4.gz";
      r2 = "Z3/8Z/SHA256E-s84519405--96a27c4e7483a472c745e09d88608bf93f0cbc76c1414f07bc98312a396cd900.gz/SHA256E-s84519405--96a27c4e7483a472c745e09d88608bf93f0cbc76c1414f07bc98312a396cd900.gz";
    }
    {
      site = "1K";
      class = "tumours";
      pdx = false;
      r1 = "53/mF/SHA256E-s199329074--8074969f6affcf83cdfcaaf79ce0cbdcc4763d214e9d3170d1b6561e227ed3bd.gz/SHA256E-s199329074--8074969f6affcf83cdfcaaf79ce0cbdcc4763d214e9d3170d1b6561e227ed3bd.gz";
      r2 = "gv/3m/SHA256E-s199588158--526d627617505cd16131a32094150af57b9a344f9366314c8893c6ef9cc0630f.gz/SHA256E-s199588158--526d627617505cd16131a32094150af57b9a344f9366314c8893c6ef9cc0630f.gz";
    }
    {
      site = "1K";
      class = "tumours";
      pdx = false;
      r1 = "Zq/55/SHA256E-s240934482--7a82c04ad0da30f48b19c0a20a0600eb2b4ca5abb59542e2479de7795d1739ca.gz/SHA256E-s240934482--7a82c04ad0da30f48b19c0a20a0600eb2b4ca5abb59542e2479de7795d1739ca.gz";
      r2 = "qP/Jx/SHA256E-s242489460--ff081a7af88fe13bd642bac0bb98d878e3456c0da76c2cc8ec2f4b873bee1a4a.gz/SHA256E-s242489460--ff081a7af88fe13bd642bac0bb98d878e3456c0da76c2cc8ec2f4b873bee1a4a.gz";
    }
    {
      site = "1K";
      class = "tumours";
      pdx = false;
      r1 = "K4/7q/SHA256E-s565215997--af266babcefe36c035de0ccfdf80854eb22c2a62026954f76231a6c28d1e68c6.gz/SHA256E-s565215997--af266babcefe36c035de0ccfdf80854eb22c2a62026954f76231a6c28d1e68c6.gz";
      r2 = "Qx/XW/SHA256E-s568023709--a22bc66d85460f1937551e172fd94d286e4a974adaa282c24550dc2ee4c39acb.gz/SHA256E-s568023709--a22bc66d85460f1937551e172fd94d286e4a974adaa282c24550dc2ee4c39acb.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 14.3.24:\nIMPARP-HRD trial (potentially) - Matt to have a think - decided not an option. \n\nSample meeting 2023.06.15\nPlan for FFPE block 1K: Plan: Send for WES ";
      urgency_details = "As per Clare: Newly diagnosed stage IV uLMS\nneeds urgent BRCA assay at FOX lab at Petermac - Ratana can arrange also do WES.";
      d_case_summary = "Newly diagnosed stage IV uLMS\nBRCAwt\nIn MoST Circuit";
      date_consented = "2023-04-04";
      tumour_type = "uLMS";
      tumour_details = "uLMS";
      case_details = "57 years old female (ARC portal), ULMS stage IV \n\n2023-02\tInitial diagnosis, TAHBSO, FFPE block 1K received \n\n\t\tIHC negative: CD10, cytokeratin AE1/3 and EMA \n\n\t\tIHC positive: strong positive staining for SMA, patchy strong desmin \n\n\t\tER and PR negative, P53 shows strongly diffuse nuclear staining within tumour cells \n\n2023-03\tnew lung lesion \n\n2023-05\tBlood B1 received  \n\nPotentially eligible for MoST-CIRCUIT (IPI/NIVO) Options of DOX, MOST-CIRCUIT, Pazopanib (and PARPi if BRCA mutation) \nBRCA WT on BRCA assay ";
      brca_report = "SFRC01749_BRCAPanel_19May2023_Redacted.pdf";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      arc_enrol_date = "2023-04-17";
      case_urgent = "Yes";
      portal_letter = "SFRC01749_ARCPortalLetter_16Apr2023_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "17Apr23: Feb23 sample requested from Hobart pathology by Monica \n24Apr2023: Peritoneal washings (negative for malignancy) from Feb2023 received on slides from Hobart pathology, rather than sections of tumour. Not logged (unlikely to be useful). BM spoke with pathologist and they will re-cut sections of tumour and send. No need to resubmit request. \n03Mar23: Feb23 tumour sample received from Hobart pathology by Monica";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01749";
  }
