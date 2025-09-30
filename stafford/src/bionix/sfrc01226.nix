with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        facets.reporting.preprocess = def facets.reporting.preprocess {
          mem = 30;
        };
      })
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "jx/F5/SHA256E-s36975481568--8aa2ff9f31bb63344e07a221f1fd61cd53bb286b5707d82c9b4709eef6aab3bc.gz/SHA256E-s36975481568--8aa2ff9f31bb63344e07a221f1fd61cd53bb286b5707d82c9b4709eef6aab3bc.gz";
      r2 = "wW/QV/SHA256E-s39578081704--8a66a955e84a69e4b08e16d3ab23ab9606aaf7d06fb28f3784e4f11cd3dc3663.gz/SHA256E-s39578081704--8a66a955e84a69e4b08e16d3ab23ab9606aaf7d06fb28f3784e4f11cd3dc3663.gz";
    }
    {
      site = "S3";
      class = "tumours";
      pdx = false;
      r1 = "0M/wP/SHA256E-s70273688821--92dc257673dfe0af21285f1cfaf430c146b830bedd06422f0a826b47cb2e0b7d.gz/SHA256E-s70273688821--92dc257673dfe0af21285f1cfaf430c146b830bedd06422f0a826b47cb2e0b7d.gz";
      r2 = "ZK/XW/SHA256E-s75396641247--be00910698946dbd86189deff2ae72d56e11f4bd944aa6294efe68716f1e31d9.gz/SHA256E-s75396641247--be00910698946dbd86189deff2ae72d56e11f4bd944aa6294efe68716f1e31d9.gz";
    }
    {
      site = "S3";
      class = "rna";
      pdx = false;
      r1 = "j9/mM/SHA256E-s4276531194--2a65b4ae8f499b6a4b73f8412b7e5a8b9af238063885874515ef4ef2a98e8dee.gz/SHA256E-s4276531194--2a65b4ae8f499b6a4b73f8412b7e5a8b9af238063885874515ef4ef2a98e8dee.gz";
      r2 = "4K/X5/SHA256E-s4369213692--3035f44a3e483af4c1b547826a54f04892e998c4c204117a1cc6ec58014e4ba9.gz/SHA256E-s4369213692--3035f44a3e483af4c1b547826a54f04892e998c4c204117a1cc6ec58014e4ba9.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "HGSEC";
      meeting_discussions_follow_up = "RC Meeting 15.09.2022\nDiscussed results - BROCA, WES and WGS.\nNo TP53 by BROCA. Check transcript.\nHER2 amplification is low, but drug target? \nPDX has never grown.\nRatana to check cases that have all modalities (BROCA/WES/WGS).\nAlso looking for mechanisms of resistance to the lenvatinib (Ratana to check HGSEC cases who have had len/pembro)\n\nBroca meeting 2021.10.07\nOrganise Broca on both FFPE block 4B and fresh tissue S3\n\nMeeting notes 18.06.2020\nTwo PDX's have come up on baseline tumour measuring, including recent ascites sample. May just be Matrigel . Will wait to see if those PDX's progress before doing tumour cell enrichment.  \n\nRC Meeting notes 11.06.2020\nBoth EP300 and NF1 on haplo-insufficiency involved in DNA repair and replication \nSignature 3 is 3rd (774 mutations) at 13% \nPDX are growing for S4 and S5 \n\nMeeting notes 12.12.2019\nNo TP53 mutation find with WES on FFPE (p53 is negative on pathology report) - Clare to check why she's HGSEC \n\nMeeting notes 2019.12.05\nCurrently on lenvatinib and pembro, go ahead with WGS of S3 \n\n2019.10.17\nBlock received, organise WES asap \n\nWhatsApp text on 2019.10.08\nOrganise WES on archival tissue, archival tissue to be retrieved.\n";
      date_of_death = "07/2020";
      date_consented = "2019-10-08";
      tumour_type = "HGSEC";
      tumour_details = "HGSEC";
      case_details = "Dx with HGSEC with intraperitoneal spread on 11/2/2015 from TAHBSO\n\nReceived 6x carboplatin and paclitaxel in 2015, with good CA125 response. Remained in remission until 10/2018.\n\nReeieved another 6x carboplatin and taxotere in 11/2018, again with good response.\n\nCT Scan in 7/2019 showed multifocal intraperitoneal recurrence. Started on Provera.\n\nCTCAP on 2/102019 showed increased ascites and peritoneal metastatic nodularity.\n\nMerck 775 study, receiving lenvatinib/ pembrolizumab from 29/10/2019 until March 2020. Dx of grade 3 adrenal/pituitary insufficiency, requiring hydrocortisone, now on prednisolone.\nfor WES\n\nWGS clinical notes\n47 yo HGSOC consented at the RWH";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "Hysterectomy - Melbourne/Epworth Pathology\nCollected:11-Feb-15\nAccession no: 15T20205\nRecalled: 9-Oct-19 EO\nReceived: 15-Oct-19, block 4B ";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01226";
  }
