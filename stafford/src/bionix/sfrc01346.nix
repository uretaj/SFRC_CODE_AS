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
      r1 = "81/F5/SHA256E-s54791930087--bb00bcf005bcdd0811dec8aeba99878ae88cfe1111258372b2626bec93374e4d.gz/SHA256E-s54791930087--bb00bcf005bcdd0811dec8aeba99878ae88cfe1111258372b2626bec93374e4d.gz";
      r2 = "Wx/Zv/SHA256E-s59323180340--50c1c9f3e15a9e458045bd95e00e03efeaed20babe8fcc9292000f9a862783b8.gz/SHA256E-s59323180340--50c1c9f3e15a9e458045bd95e00e03efeaed20babe8fcc9292000f9a862783b8.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "wk/Mk/SHA256E-s83009308557--e98b3037263d4d4e90816ad98761fc75a7cd0d2c8eac622d0d423124afc8d068.gz/SHA256E-s83009308557--e98b3037263d4d4e90816ad98761fc75a7cd0d2c8eac622d0d423124afc8d068.gz";
      r2 = "VQ/JQ/SHA256E-s88787946229--f689cdbd4d3a76382d9aaf44ec5e03c922425aae9f7a64d1bb17feeed347f5f2.gz/SHA256E-s88787946229--f689cdbd4d3a76382d9aaf44ec5e03c922425aae9f7a64d1bb17feeed347f5f2.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "76/X9/SHA256E-s4405227127--8bc38e32af5a21c6444de3d23080e8014f9b343643637b8d4422b0cc4e5857f5.gz/SHA256E-s4405227127--8bc38e32af5a21c6444de3d23080e8014f9b343643637b8d4422b0cc4e5857f5.gz";
      r2 = "27/05/SHA256E-s4421334719--d589d513479b65c6b4d274b64bfb96bb4d42fa5a1c1dc625ac5df381e50fefce.gz/SHA256E-s4421334719--d589d513479b65c6b4d274b64bfb96bb4d42fa5a1c1dc625ac5df381e50fefce.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "uLMS";
      meeting_discussions_follow_up = "RC Meeting 01/04/2021\nWGS Report did not show anything. Discussed results from Justin's analysis.\nTMB is 14 (WGS reports 0.9). Not HRD, both report this. \nThe gTP53 is a \"drug response\" variant. Ask what Grimmond do - if not cancer related, do they do something different? To not report out? \nSomatic: a lot of subclonal variants. CSF3R, ERBB2 is subclonal. No TP53, RB, ATRX, DAXX. \nSig 3 top mutational signature, but it's not HRD (not a lot of mutations assigned to it) \nNo focal amplifications \nCould look at viral and translocation drivers. There are enough structural variants. \nCurrent report doesn't need to be amended with these new findings. No separate clinical report needed (PARPi is not warranted). \n\n18/03/21 - Justin: \"very interesting structural variants\" - include in the 'deserts' cohort. WGS discussion: HR competent, but some structural variants. Will come back to this.\n\n03.12.2020\nReviewed S1. Send \"yellow\" SF for WGS";
      d_case_summary = "Stage 1 Leiomyosarcoma diagnosed 2017. Initially underwent hysteroscopic resection of fibroid in Frankston, May'17 (benign). Later, open myomectomy with intraoperative spillage at RWH Oct'17 with mass confirmed as leiomyosarcoma. TAH   BSO Nov 2017. WGS result received 29 Jan 2021.";
      tumour_type = "uLMS";
      tumour_details = "uLMS";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "30Jan2023: 2017 block received from RWH  by Briony\n\n04/11/2022: 2017 block requested from RWH pathology by Devindee for uLMS study. ";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01346";
  }
