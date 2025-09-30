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
      r1 = "Wk/47/SHA256E-s44551395008--f4d43ecf5d573040e633fd619d841cb373fff25ea8b01b540a7cf942f010c38b.gz/SHA256E-s44551395008--f4d43ecf5d573040e633fd619d841cb373fff25ea8b01b540a7cf942f010c38b.gz";
      r2 = "w8/92/SHA256E-s46688578757--94286e864682b333d885b44628cd84d55e33957f447be0aaad176d3c7010d645.gz/SHA256E-s46688578757--94286e864682b333d885b44628cd84d55e33957f447be0aaad176d3c7010d645.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "z4/zM/SHA256E-s93816369881--b82b34376dd5126ff4e9f538757d1de884c583477d89de9537574d2c49b4f7b4.gz/SHA256E-s93816369881--b82b34376dd5126ff4e9f538757d1de884c583477d89de9537574d2c49b4f7b4.gz";
      r2 = "9P/gx/SHA256E-s99027189864--96eba58d8067a5adb71b1d7b91dac36c606953c1ecc80012fb259f869633f114.gz/SHA256E-s99027189864--96eba58d8067a5adb71b1d7b91dac36c606953c1ecc80012fb259f869633f114.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "4J/xz/SHA256E-s11178452360--1e85219bdc51a5e22abd00b266eb6235c2a134e80d1d621312ba86bd206be8d6.gz/SHA256E-s11178452360--1e85219bdc51a5e22abd00b266eb6235c2a134e80d1d621312ba86bd206be8d6.gz";
      r2 = "gj/Zk/SHA256E-s10803675664--dad683cfeb0b35a47ea8c141806fd837034ad2f135474c3b4e2f4140e9c5a3ca.gz/SHA256E-s10803675664--dad683cfeb0b35a47ea8c141806fd837034ad2f135474c3b4e2f4140e9c5a3ca.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "LGSOC";
      meeting_discussions_follow_up = "RC Meeting 31.03.2022\nDiscussed WGS report. Had query if LGSOC or HGSOC.\nNo WTS as RNA quality poor \nGermline CHEK2 variant del 1100C, most common variant -> FCC referral \nWT Loss in tumour \nATM inactivating rearrangement \nBRIP1 rearrangement x2, loss of function (can't determine if in cis) \nHR-proficient \nTrials: IMPARP-HRD okay \n\nDiscussion: Does this look more like HGSOC rather than LGSOC? \nIts mixed. \nHGSOC almost always have TP53 inactivation. \nLGSOC rarely have HR-pathway mutations - but this one is HR-proficient so perhaps the BRIP1 isnt doing anything. No MAPK-pathway alterations either. \nSo, not enough data to challenge the histopathological diagnosis. \n\nWhat is FGA value? \n\nClare to forward WGS report to Dane Cheasley, Anna DeFazio, Ian Campbell \n\nClare's meeting 02.12.2021\nBoth DNA extraction on FFPE and OCT are good. Go ahead with extracting RNA and submit sample for WGS.\n\nMeeting with Clare 18.11.2021\nOCT on S1: Extract both DNA on OCT and FFPE and bring back up for discussion to decide either WGS or WES ";
      d_case_summary = "41 year old woman newly diagnosed with low-grade serous ovarian cancer stage IIIC. Commenced neoadjuvant chemotherapy carboplatin paclitaxel. Planned 3 cycles then reassess ? suitability for surgery. \nFor identification of guidelines, access to molecular testing, stafford fox substudy.";
      date_consented = "2021-06-09";
      tumour_type = "LGSOC";
      tumour_details = "LGSOC stage IIIC";
      case_details = "41 years old woman \n2021-03:\tInitial diagnosis, Biopsy \nIHC positive: CK7, PAX8, WT1, ostrogen  \nIHC negative: CK20, TTF1, TP53 WT \n2021-05:\tCommenced neoadjuvant chemotherapy carboplatin paclitaxel. Planned 3 cycles then\t\treassess  suitability for surgery.  \n2021-11:\tSurgery (Received fresh tissue S1 and blood B1) \nFor identification of guidelines, access to molecular testing, stafford fox substudy. ";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      portal_letter = "SFRC01423_ARCPortalReport_25Jun2021_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01423";
  }
