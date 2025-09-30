with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Gw/JP/SHA256E-s50186978083--11bc546730946074d3697d39144e459e01771cd454a3a3a4cf8e91a6c1e4a5d9.gz/SHA256E-s50186978083--11bc546730946074d3697d39144e459e01771cd454a3a3a4cf8e91a6c1e4a5d9.gz";
      r2 = "34/fG/SHA256E-s53969428791--b9af76198d0ac89ac57c9be7b883add40807c21836ce0dd94bd0e7b2da7403ea.gz/SHA256E-s53969428791--b9af76198d0ac89ac57c9be7b883add40807c21836ce0dd94bd0e7b2da7403ea.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "V4/PM/SHA256E-s68918775473--1f904f4bc504a8c07148343f316eb5d14554ddf573c97a8d08706011f1d442fb.gz/SHA256E-s68918775473--1f904f4bc504a8c07148343f316eb5d14554ddf573c97a8d08706011f1d442fb.gz";
      r2 = "8k/49/SHA256E-s72848716158--524dde99d986584755f13b4663ed94b00818eebc596e2958eb042c0251579330.gz/SHA256E-s72848716158--524dde99d986584755f13b4663ed94b00818eebc596e2958eb042c0251579330.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "CA0131, AOCS 234182";
      genomes100_tumour_types = "OCS";
      meeting_discussions_follow_up = "08.07.21\nEmail from Lisa Devereux\n'This patient was on the PRECISE trial so they asked if you could keep an eye on the FFPE blocks to make sure that there is still some tissue remaining'.\n\nRC meeting 24.06.2021\nWES or WGS? Discuss in context of project. Ratana, Clare, Matt, Kas discussion.  \nS2 best sample? SF at the time still at Peter Mac.\n\nNote from Kas:  here are my notes on SFRC01340 53BP1 mutation: \n\nHave gone through with Justin as I was trying to design primers for targeted NGS \nIt was very unclear what the rearrangement was doing from WGS Manta analysis \nJustin then ran GRIDDS, giving a different results to Manta analysis \nSo still not clear what actual rearrangement is... best way to work this out will be with RNAseq to look at the transcripts produced (if any). \nCan we get RNAseq on this case? \n \nClare's meeting 2021.06.03\nPlan: Need to decide WES or WGS on this FFPE sample. Bring for discussion at  a RC meeting. \n\nWanted to look for the rearrangement of TP53BP1 that was found in WGS, in an earlier sample. Kas and Matt to decide if feasible. \n\nGet clarification from Gayanie about the arrows, to double check. \n\nRC Meeting 01.04.2021\nWGS findings: Rearrangement of TP53BP1 - directed dsDNA break repair - leads to HR DNA repair. Potential resistance mechanism. Does this mean the rearrangement leads to complete loss? \n\nWarren to recall baseline FFPE block. Clare to help Warren. Lisa Deveraux has original pathology? \nNOTE: Lisa Devaraux has SF and FFPE from time of collection (our FFPE was from samples stored in MACS tissure storage solution overnight). \n\nThe CASCADE samples to be discussed in Carcinosarcoma Project Discussion.\n\nRC Meeting 18.03.2021\nBrought up WGS report and CASCADE sample reviews (all images and notes). To discuss with Holly present.\n\n08.02.2021 Clare and Ratana\nHaven't discussed WGS report yet on S1, have review back on S2-S6. Bring up at RC Meeting with WGS report, with these images. Let Holly know. \nWould want to make DNA from best site, and comparative sites. But need funding. \nPlan could be mice from the different sites, see if there are differential responses. \n\n03.12.2020\nMade new OCT blocks and reviewed again. Has PRECISE results, no BRCA1 reversions or ABCB1 fusion. Microdissect for WGS\n\nMeeting notes 09.11.2020 (Clare and Ratana)\nS1 review shows <10% tumour. Very important cases, so Ratana made another OCT block from SF vials to review again";
      date_of_death = "01/2021";
      d_case_summary = "65 year old woman gBRCA1 mutant FT carcinosarcoma, very rare cancer\nRequiring biopsy for progressive disease and clinical direction for treatment. \nDied on 10 Jan 2021. Is a Cascade harvest which took place on 11 Jan 2021.";
      tumour_type = "Ovarian Carcinosarcoma";
      tumour_details = "Carcinosarcoma of FT";
      case_details = "gBRCA1 mutant FT carcinosarcome, Dx in 2016. Received 6x carbo.paclitaxel. BRCA1 mutation found in 2017 at MMC\n\nFT carcinosarcoma recurrence in Jan 2018, recurrent in R groin, irradiated. 2nd line carboplatin HSR during Cycle 3 (21/3/2018) + Paclitaxel C1-4 until 11/4/2018. Maintenance PARPi therapy with olaparib on PBS for 6 months\n\n3rd line ipi/nivo Think Rare Monash, C1 5/11/2018. Off study for PD June 2019.\n\n4th line 2019-2020 pegylated doxorubicin, with mixed response\n5th line May 2020 weekly paclitaxel with mixed response\n\nConsented for PRECISE Study, no BRCA1 reversion and no fusion\n\n6th line cisplatin. However developed HR to cIsplatin after 2 cycles. Commenced topotecan 9/2020, didn't response after 6 cycles.\n\nSingle agent eribulin 1.4mg/m2 D1, D8 q21 until PD";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2016 block requested from Monash by Warren on 15/4/21, received 17/5/21";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_germline_mutations = "BRCA1";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01340";
  }
