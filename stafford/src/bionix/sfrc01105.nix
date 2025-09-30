with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        minimap2.align = def minimap2.align {
          walltime = "72:00:00";
          partition = "long";
        };
      })
  ];
}; let
  samples = [
    {
      site = "B2";
      class = "normals";
      pdx = false;
      r1 = "mK/5W/SHA256E-s52645538292--5bad10781d17a3e8ca835a9f0c1e04cadbbc989c72e70cacc26ab044f76675df.gz/SHA256E-s52645538292--5bad10781d17a3e8ca835a9f0c1e04cadbbc989c72e70cacc26ab044f76675df.gz";
      r2 = "f3/Qw/SHA256E-s56181916447--e92eb1c74dbc4bf784e346ec913badbbb9c6db3379b2920a8cbde77c0cd96be5.gz/SHA256E-s56181916447--e92eb1c74dbc4bf784e346ec913badbbb9c6db3379b2920a8cbde77c0cd96be5.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "2p/40/SHA256E-s78790513452--23df297979f428aa33ea987fdc629d514d3c40c52b55594296f7dab0d76330f7.gz/SHA256E-s78790513452--23df297979f428aa33ea987fdc629d514d3c40c52b55594296f7dab0d76330f7.gz";
      r2 = "w8/fg/SHA256E-s82677530220--79491dee061716230daa14ac1a429a3412e2b469932109b463d10aae7418192c.gz/SHA256E-s82677530220--79491dee061716230daa14ac1a429a3412e2b469932109b463d10aae7418192c.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "/fm/Z9/SHA256E-s31417705557--b5eb753b445c8d0008172ccd6962b33d71cf5a7dbdd829c858bce5c5fa765fc8.gz/SHA256E-s31417705557--b5eb753b445c8d0008172ccd6962b33d71cf5a7dbdd829c858bce5c5fa765fc8.gz";
      r2 = "5P/PP/SHA256E-s32247357060--5433c5664238fb53a73ed4573c511b2077a77ada113d110031d145ff54b571d4.gz/SHA256E-s32247357060--5433c5664238fb53a73ed4573c511b2077a77ada113d110031d145ff54b571d4.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "Q7/xj/SHA256E-s4918568357--4874d82335259b3c9876d3f27f0c8a52a7b26d2328f79a9016078799cc249b36.gz/SHA256E-s4918568357--4874d82335259b3c9876d3f27f0c8a52a7b26d2328f79a9016078799cc249b36.gz";
      r2 = "8K/PZ/SHA256E-s4892806477--9f818a4f1b15222a27d717e67a9b770d33c38a61f7d72221ccfe58ea4c399d94.gz/SHA256E-s4892806477--9f818a4f1b15222a27d717e67a9b770d33c38a61f7d72221ccfe58ea4c399d94.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "NOM01071";
      genomes100_tumour_types = "OCS";
      meeting_discussions_follow_up = "Please do not use SFRC01105_B2 as there is mix up with SFRC01112_B1\nAll derivatives to be discarded \n\nMeeting notes 2019.05.09\nClare has responded to Sean, WGS report should javascript:;be ready soon.\n\nMeeting discussion 22.08.2019\nDecision:  Clare will respond to Sean once she can check Verdi.  Will get fresh sample from patient if possible and send with B1 to confirm all are correct. \n\nMeeting discussion 25.07.2019\nDiscussed on 23.05.2019, to recall DNA from nominator for WES, is this still what we want to do? Been processed for WGS, waiting for the report. \nDecision:  Not to do WES for now as haven't done it for other carcinosarcoma samples \n\nMeeting notes 27.06.2019\nS3 organoids growing well (straight from patient and continuing after 2 passages).  \nCan probably expand to 100 wells of a 96-well plate. What drugs should be optimised? \nFGFRi (Ben Tran, Huang lab, screening lab) - Erdafitinib (Janssen) TAS120 (Taihio), BGJ-398 (Novartis) Pazopanib, Eribulin, vinorelbine mTORi (MLN0128) Trastuzumab ";
      date_of_death = "05/2021";
      date_consented = "2018-08-28";
      tumour_type = "Ovarian Carcinosarcoma";
      tumour_details = "Carcinosarcoma, progressing on carbo/taxol";
      case_details = "Meeting notes 8.5.20 - on maintenance PARPi with no evidence of disease\n\nCentral exenteration by Dr Kym Reid on 19/5/2019, Mismatch repair proficient still.\nRemoval of segment of rectosigmoid with associated cystic lesion containing residual carcinosarcoma (pathology confirmed). Surgery required creation of an ileostomy and temporary insertion of bilateral ureteric stents due to need to resection of part of right ureter. Resection margins reported to be clear with no tumour seen in colonic wall, ureter or seven associated resected lymph nodes.\nPost-op - Removal of the ureteric stents and further antibiotics.\nCommenced chemotherapy with monthly IV Carboplatin and Caelyx chemotherapy, commenced on 4/7/19, cycle 2 due on 7/8/19.";
      pre_analysis_mutations = "TP53, RB1 somatic mutations\nFGFR3 and BCL2L1 copy number amplifications\nRB1 loss";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      histology_summary = "FGFR3 FISH been done previously, images in block analysis";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01105";
  }
