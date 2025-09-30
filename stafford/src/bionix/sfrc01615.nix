with import ./milton-slurm.nix {
  overlays = [(_: super: with super; {xHLA = def xHLA {mem = 30;};})];
}; let
  samples = [
    {
      site = "1H";
      class = "tumours";
      pdx = false;
      r1 = "WG/15/SHA256E-s26884823217--ced7199d9ba3943f9f42d1eb2b085412588f361c85215414911aac8b8e26c4e5.gz/SHA256E-s26884823217--ced7199d9ba3943f9f42d1eb2b085412588f361c85215414911aac8b8e26c4e5.gz";
      r2 = "Fj/pG/SHA256E-s27146884539--3723e2346d6d8884712aa259ddc63ab1554ff283769b02e1d92b69ce4811e3d9.gz/SHA256E-s27146884539--3723e2346d6d8884712aa259ddc63ab1554ff283769b02e1d92b69ce4811e3d9.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "p2/W4/SHA256E-s5095640545--553b385caf7d0a04ea2e92e67eec2d7820f9f7cc56af225a32ad957c2a3893a0.gz/SHA256E-s5095640545--553b385caf7d0a04ea2e92e67eec2d7820f9f7cc56af225a32ad957c2a3893a0.gz";
      r2 = "F8/JF/SHA256E-s5281083909--e42f416375a9509844e1f3ea13a0b51414f88d94c1a714e519a0b0ea718a8c9e.gz/SHA256E-s5281083909--e42f416375a9509844e1f3ea13a0b51414f88d94c1a714e519a0b0ea718a8c9e.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare's Meeting 09.03.2023\nNew FFPE Block 1H has 20% purity. To do WES on this block. \n\nClare, Ratana, Rae 04.03.2023\nBROCA for FFPE Block 1H\n\nClare, Ratana, Rae, Briony 08.02.2023\nFFPE Block 1F has 15% tumour purity - too low for sequencing. Monica to recall tissue from March 2021 pleural biopsy and another block from June 2021 TAH/BSO.\n\nClare email 23.11.2022\nTo do WES when blocks come in";
      myriad_report = "SFRC01615_MyriadResult_03Nov2022_16_4VUS_Redacted.pdf";
      blood_recall_history = "bloods booked 08 Sep 22";
      date_of_death = "07/2023";
      d_case_summary = "68F, Met HGSFTC, stage IV @ Dx, PFI currently 10mo\nRx pleurodesis -> Carbo / Taxol  -> IDB -> Carbo / Taxol / BEV\nGermline ovarian panel: BRCA1 , PALB2, MLH1 VUS's (all C3)\nSomatic BRCA: BRCA1 VUS 12/08/2021\nClinically stable on BEV, but grumbling Ca125 / pleural uptake on PET (?post op ? disease)\nPHx lymphoma 2017, probably ineligible for trials";
      date_consented = "2022-07-05";
      tumour_type = "HGS Fallopian tube";
      tumour_details = "HGS Fallopian tube  NHL ?Mantel cell type, Dx 2017";
      case_details = "69F, deceased\n\n2017: Dx Non-Hodgkin lymphoma. Indolent, on surveillance.\n\n2020-12: Dx HGS fallopian tube. \nPleural fluid collected.\nIHC Positive: CK7, PAX8, WT1, p53 (strong diffuse);  ER (weak); p16 (patchy); cyclin D1\nIHC negative: CK20, PR, GATA3, calretinin, p40, p63, TTF-1, napsin-A, p40, ALK K (D5F3), ROS1 (clone not\nstated), PD-L 1 (clone not stated).\nARID1A, PTEN and BAP1: preserved\npMMR (IHC performed)\n\n2021-03: Surgery: Pleural Bx\n\n2021-03 - 2021-08: Carboplatin/Paclitaxel x6. 4x cycles NACT.\n\n2021-06: Surgery: TAH/BSO, complete debulk (Block 2F - omentum, Block 1H - right ovary)\nIHC Positive: CK7, P16, Pax8, WT-1, p53, ER (2+, 40%)\nIHC negative: PR, CK20\n\n2021-06: BRCA Tissue test:\nBRCA1 VUS: NM_007294.3: c.509G>A, p.(Arg170Gln)\n\nFCC Report: FCC Report: VUS BRCA1 c.509G>A, MLH1 c.1087A>G, PALB2 c.841A>T\n\n2021-08: Commenced Bevacizumab, ongoing.\n\n2022-09: Blood B1 received.\n\n2022-10: Myriad MyChoice HRD status: Negative; GIS Score 16.\nBRCA1/2 Status: Negative for clinically significant mutation\nNon-clinincally significant finding: PALB2 c.841A>T (p.Ile281Phe) Uncertain Significance\n\n2022-12: Sections from FFPE Block 2F from 2021-06 TAH/BSO received (15% purity in circled areas - too low for sequencing)\n\n2023-02: Sections from FFPE Block 1H from 2021-06 TAH/BSO received\n\n2023-06: 1H DNA sent for methylation: Not methylated for BRCA1 or RAD51C.\n1H and B1 DNA sent for WES\n\n2023-07: Deceased.";
      brca_report = "SFRC01615_BRCAPannel_23Jun21_Redacted.pdf";
      myriad_submission = "Yes";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "Myriad HRD Negative (BRCA neg) score 16";
      fcc_report = "SFRC01615_FCCPanel_03May2021_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "27Feb23: June 2021 sample (block 1H) received from RWH pathology by Monica\n\n08Feb2023: Second block from Jun2021 sample requested from RWH as low tumour purity in 1F. They have said no blocks look like more tumour, very scattered and surrounded by lots of stroma and calcium. But they will give us block 1H to try. \n\n13/07/2022: June 2021 sample requested from RWH pathology by Devindee. \n\n12/12/2022: 2021 sample slides received.";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01615";
  }
