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
      site = "B2";
      class = "normals";
      pdx = false;
      r1 = "gV/28/SHA256E-s50852836856--dba802737759a115fc994ec2580ec3672e6f9487bb00a64870e75d534df39171.gz/SHA256E-s50852836856--dba802737759a115fc994ec2580ec3672e6f9487bb00a64870e75d534df39171.gz";
      r2 = "mX/1V/SHA256E-s53529925452--357df4f0ff6cb39ab0189f38ba43b6eb958f94c80df5b73749f01247616bde3f.gz/SHA256E-s53529925452--357df4f0ff6cb39ab0189f38ba43b6eb958f94c80df5b73749f01247616bde3f.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "X3/KP/SHA256E-s78068009134--a4522433d667ec68b1145ca04e9d8c26abb467a8df7247e1cf8589c2f175da3c.gz/SHA256E-s78068009134--a4522433d667ec68b1145ca04e9d8c26abb467a8df7247e1cf8589c2f175da3c.gz";
      r2 = "xq/1f/SHA256E-s82025988618--557f0341877a01f023c5c55d5ce73dd63025372c677dc894f916fd485217140e.gz/SHA256E-s82025988618--557f0341877a01f023c5c55d5ce73dd63025372c677dc894f916fd485217140e.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "fK/z5/SHA256E-s4774959365--a1c190e7ce17f383fdd40dbc8008631dc46015f39bc1cd41135db2c53e0e3bf0.gz/SHA256E-s4774959365--a1c190e7ce17f383fdd40dbc8008631dc46015f39bc1cd41135db2c53e0e3bf0.gz";
      r2 = "j2/w9/SHA256E-s4607629797--f5a0b418cda3a7f46ab5ac0d08fb988c09dd729eaa5cb89b4589de396f2b5c8f.gz/SHA256E-s4607629797--f5a0b418cda3a7f46ab5ac0d08fb988c09dd729eaa5cb89b4589de396f2b5c8f.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "QK/5Z/SHA256E-s80727665151--da024c6794fe6a4d682da77ab3d6e5902216f460426d0570b249d133bd3d82af.gz/SHA256E-s80727665151--da024c6794fe6a4d682da77ab3d6e5902216f460426d0570b249d133bd3d82af.gz";
      r2 = "4p/m3/SHA256E-s85649198308--e21c83805fb5ff1b73e51cbe7eaf5463a51eccd6e80e38b6f48c0529eab0044c.gz/SHA256E-s85649198308--e21c83805fb5ff1b73e51cbe7eaf5463a51eccd6e80e38b6f48c0529eab0044c.gz";
    }
    {
      site = "S2";
      class = "rna";
      pdx = false;
      r1 = "xj/zK/SHA256E-s6052400776--e9f49566835e2d472664b1859f97a612100aa10d6afa6edb7beec59f8eb099a2.gz/SHA256E-s6052400776--e9f49566835e2d472664b1859f97a612100aa10d6afa6edb7beec59f8eb099a2.gz";
      r2 = "ZG/0P/SHA256E-s6036859088--25718adbe7591f563ee5be9ca059b70865652d60b45cfda9fc0f507365646d23.gz/SHA256E-s6036859088--25718adbe7591f563ee5be9ca059b70865652d60b45cfda9fc0f507365646d23.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "non-gynae cancer";
      meeting_discussions_follow_up = "RC meeting 25.05.2023\nDiscussed WGS report with SFRC data.\n\nClare's Meeting 30.11.2022\nS2: 90 - 95% purity, entire sample is tumour. Send S2 for WGTS \nS3: No tumour.\nMandy to check EPIC notes for urgency \n\nRC Meeting 15.09.2022\nDiscussed WGS report (Grimmond + SFRC).\nSFRC data - found SDHB, MEN1, not FAT1. \nRAF1 amplification, 7 copies. But low tumour purity/DNA quality, can't trust the CN. \nRAF1 on Ch3 - the structural variant looks supportive of an amplification. Would like to validate this. Ask Andrew Fellowes for options, or design primers for qPCR (Kas). \n*Damien has asked Joep, he did not see the amplification. Asking Owen Prall about RAF1 IHC/FISH \nSee how patient is going. \nBRAF noted in GIST cases \n\nClare, Ratana and Rachael 25.07.2022\nDNA from Block 1.1 is not enough for WES. Leave it. Have WGS data to discuss. \n\nClare's meeting 30.06.2022\nWES on FFPE block 1.1 (liver biopsy) as it's a pre-immunotherapy sample. Can compare this to the WGS on S1 that is coming.\n\nClare's meeting 19.05.2022\nRatana to WGS asap on S1 OCT tissue (need DNA and RNA extraction) \nCase also for nanostring (300 ng RNA for Kristy, who will check the OCT/FFPE RNA requirements) \n\nRare cancer meeting 21/04/2022\nWill receive fresh tissue and blood from biopsy week beginning 25/04/2022. WGS on tissue. Is super responder (not a multiple primary, but a control) ";
      d_case_summary = "SDHB-mutant GIST; clinical trial of Nivolumab since March 2018 with impressive response";
      date_consented = "2019-11-26";
      tumour_type = "Bowel cancer";
      tumour_details = "SDHB-mutant GIST";
      case_details = "61F\n\n2017-02: Diagnosed Metastatic gastrointestinal stromal tumour. \nLiver biopsy (FFPE Block 1.1):\nIHC positive: CD117 (ckit) (strong diffuse positive staining), DOG-1.\nIHC negative: CD34, smooth muscle actin, desmin, S100, broad spectrum cytokeratins AE1/AE3\nGIST panel mutation analysis: No mutations in KIT or PDGFRa detected. \n\n2017-02 - 2017-04: Imatinib. PD.\n\n2017-04: Somatic panel mutation analysis: \nBRAF: no mutation detected\n\n2017-04 - 2017-07: Sunitinib. PD.\n\n2017-05: Comprehensive Cancer Panel:\nGermline variants: \n-SDH-B NM_003000.2:c.268C>T, NP_002991.2:p.(Arg90*), VRF 51.2%\n\nSomatic variants:\n-No clinically significant variants detected\n-VUS: MEN1, NM_130799.2:c.1811A>G, \nNP_570711.1:p.(Lys604Arg), VRF 58.5%\n-VUS: FAT1, NM_005245.3:c.571C>T, NP_005236.2:p.(Arg191*), VRF 49.7%.\n\n2017-08 - 2018-01: Clinical trial: RMH 16/096: Trametinib (TMT212) / Ribociclib\n\n2018: Dx SDHB-mutant GIST.\n\n2018-03 - 2020-04: Clinical trial: 17/172 ThincRARE\nIpilimumab / Nivolumab x 4 -> Nivo x 45\nSignificant PR (ongoing at end of trial)\nTransitioned to compassionate Nivo 04/2020\n\n2019-10:  Participating in a clinical trial of immunotherapy since March 2018, after being Dx with SDHB-mutant GIST, to good effect.\n\nTolerating immunotherapy relatively well, with some AEs which are managed\n\nImaging around 10/2019 showed ongoing response to treatment, with no evidence of response plateau\n\n2019-11: Met SDHB mutant (germline) GIST\nKIT/PDGF neg\nSOD: stomach / liver\nBlood-B1 received\n\n2021-02: Gastric biopsy\nIHC positive: KIT, DOG1, \nIHC negative: AE1/AE3, CAM5.2, S100.\nSDHB not expressed in tumour cells.\nSDHA preserved.\nGLUT1 not expressd.\nki67: <1%\n\n2022-04: Fresh tissue S1 from gastroscopy received. Blood B2 received.\nIHC positive: DOG1, C-KIT\nIHC negative: S100, desmin\n\n2022-05: FFPE Block 1.1 received - liver biopsy 2017-02. \nS1 and B2 DNA sent for WGS:\n-Sample failed quality control\n-Germline pathogenic SDHB variant that has been described in the literature confirmed (ClinVar ID: 12778). SDHB has undergone copy number neutral loss of heterozygosity in the tumour with retention of the mutant allele.\n-VUS: somatic MEN and FAT1.\n\n2022-11: Laparoscopic liver resection and partial gastrectomy\nFresh tissue S2 (stomach tumour) and S3 (liver tumour) received in lab.\nStomach tumour:\nIHC positive: CD117, DOG1\nIHC negative: CD34, S100, SMA, Desmin, AE1/AE3, Synaptophysin, chromogranin\nLoss of SDH-B, retention of SDH-A\n\nLiver tumour:\nIHC positive: CD117\nIHC negative: desmin\nki67: 40%";
      patient_information_complete = "Incomplete";
      bowel_tumour_type = "SDHB-mutant GIST";
      fcc_report = "SFRC01254_CancerPanel_02Feb2017_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "04/05/2022: 2017 sample tissue requested from PMCC pathology by Devindee.\n23/05/2022: 2017 sample block received from PMCC pathology by Devindee. ";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01254";
  }
