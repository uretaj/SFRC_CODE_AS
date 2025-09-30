with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "3x/J9/SHA256E-s49114760654--f2a15af372b41bd4cdab1e082179ff2c0ee813be31d33b06f2943ab36ec1bf3c.gz/SHA256E-s49114760654--f2a15af372b41bd4cdab1e082179ff2c0ee813be31d33b06f2943ab36ec1bf3c.gz";
      r2 = "WF/fp/SHA256E-s51359990447--b061ace8e422b2741c40263c67fa3fc8d99009eddd2d77a91728986910211a0f.gz/SHA256E-s51359990447--b061ace8e422b2741c40263c67fa3fc8d99009eddd2d77a91728986910211a0f.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "11/JF/SHA256E-s82350515258--d276ef14e3cc36eac009ecbdf7e441502c07c2a52dd94cacaf12fa9fc37b9be5.gz/SHA256E-s82350515258--d276ef14e3cc36eac009ecbdf7e441502c07c2a52dd94cacaf12fa9fc37b9be5.gz";
      r2 = "pp/qZ/SHA256E-s86196397129--e2fdd31c9affba89e6494a9be69fb22e2eab056cd424bf0f09db515439d6ceba.gz/SHA256E-s86196397129--e2fdd31c9affba89e6494a9be69fb22e2eab056cd424bf0f09db515439d6ceba.gz";
    }
    {
      site = "S2";
      class = "rna";
      pdx = false;
      r1 = "Wf/6Q/SHA256E-s8333974948--dd991fde965b66b96d7b333be0f463df6e51dafcb398e39a76fff4412a659159.gz/SHA256E-s8333974948--dd991fde965b66b96d7b333be0f463df6e51dafcb398e39a76fff4412a659159.gz";
      r2 = "kq/5v/SHA256E-s8254641313--c43cb1c1673e4f530c31b8f6525a322fc4ef390719ed96ebdb96d5dfe01e2ec8.gz/SHA256E-s8254641313--c43cb1c1673e4f530c31b8f6525a322fc4ef390719ed96ebdb96d5dfe01e2ec8.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "HGSOC";
      meeting_discussions_follow_up = "RC Meeting 31.03.2022\nDiscussed WGS report.\nModel for Liz \nClassic CIRCOS plot for HRD \nNo mechanism for PARPi resistance, as sample was pre-Olaparib. \nWould be good to include in liquid TSO500 from Sean's lab, which would pick up reversions, but not resistance genes. \nFuture blood capture panel. \nSHP2 inhibitor works through MAPK signaling, which NF1 is a regulator of. Unsure of importance for HGSOC. \n\nBROCA meeting 18.02.2022\nSend S2 for BROCA\n\nMeeting with Clare 20.12.2021\n2 ug RNA extracted, so DNA should be good. Proceed with WGS? Or was there a patient issue to assess? \nLooking for mechanism to the resistance to PARPi. \nSend for WGS and BROCA \n\nMeeting with Clare 16.12.2021\nS2: Extract DNA and RNA then reassess if going for WGS \n\nSample catch up 06.12.2021\nS1: barely any tumour, recall frozen tissue from Trisha\n\nS1 - Omental biopsy; Trisha also has frozen tissue from original surgery.";
      d_case_summary = "Stage IV HGSOC\nSomatic BRCA2 mutant (Olaparib 300mg since Nov 2019)\nGermline BRCA WT";
      date_consented = "2021-10-08";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC";
      case_details = "62 years old female, stage IV \n\nSomatic BRCA2 mutant (Olaparib 300mg since Nov 2019) Germline BRCA WT Linked with OCA \n\n2019-04: resection, Not suitable for Bevacizumab, initial diagnosis \n\n2019-09: Completed 6 cycles of adjuvant Carboplatin/Paclitaxel Somatic BRCA2 mutation. Germline BRCA wild-type \n\n2019-11: Commenced compassionate access maintenance Olaparib ";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01470";
  }
