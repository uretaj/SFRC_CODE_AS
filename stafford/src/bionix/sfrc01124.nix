with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        samtools.sort = def super.samtools.sort {
          walltime = "48:00:00";
          ppn = 10;
          mem = 15;
          flags = "-m 1G";
        };
        gridss = with super.gridss; {
          softClipsToSplitReads = def softClipsToSplitReads {
            mem = 20;
            heapSize = "31g";
          };
          collectMetrics = def collectMetrics {
            mem = 40;
            heapSize = "31g";
          };
          callVariants = def callVariants {
            mem = 40;
            heapSize = "31g";
          };
          assemble = def assemble {
            mem = 40;
            heapSize = "31g";
          };
        };
      })
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      prefix = "fastqs/190621_NB501056_0321_AHNKGJBGXB/Sample_SFRC01124-B1/SFRC01124-B1_S5";
      suffix = "_001";
      hash1 = "20beafca83e18639e2ab85b1fa3e0d02f2823bb6d202defad96af394d0e3d3b9819e5e025b38777419996630f7b0181edd8ea672b83272ef9138043d2dd0d692";
      hash2 = "c51103ab39f34b333273c81d5440ef2fa927a465eb9134d7bf16ad06affb3b276c391ca2ecb21c83d50256a87d4566b7d4eee2155a8671f0a81f2ea92424ef41";
    }
    {
      site = "1C";
      class = "tumours";
      suffix = "_001";
      prefix = "fastqs/190621_NB501056_0321_AHNKGJBGXB/Sample_SFRC01124-1C/SFRC01124-1C_S4";
      hash1 = "cc4170781e032c34882be88e53859318d6e81c4a02347c0aaf55dcbe03a76cecd715fe3ccdb4ec407024dcf28c8a9caed08154687a66a93603b5e39fc99fd9aa";
      hash2 = "691f3482f88b7f6582e9048d91c7ff80b575acbb9123f2b3273dea42d8f536647f77d0ae44d1faeb46482d66e07260832b469b57ca2853642f8ae46fa3680927";
    }
    {
      site = "2A";
      class = "tumours";
      suffix = "_001";
      prefix = "fastqs/190621_NB501056_0321_AHNKGJBGXB/Sample_SFRC01124-2A/SFRC01124-2A_S3";
      hash1 = "956e9748f085d4c56f806d2ebe7857e1e90237d8ab743908533fe66672003d57c7b6272b34a7923296061b9a4f8bf5d5fb9d2671b4efa63f24a7170fd3dc2595";
      hash2 = "c449697721d2f01aae2e01eefac1d83b3c1615a644150491f93afab209cb856026172db03efeb7f47f869d1486989e8867ce6a26927c3371f1a49811e3c29887";
    }
    {
      site = "2A_v2";
      class = "tumours";
      pdx = false;
      r1 = "P6/F9/SHA256E-s15205727410--8fdacac9694077b1d3d841ac8dd7444111b1c47303ad8578e227106f35eb2818.gz/SHA256E-s15205727410--8fdacac9694077b1d3d841ac8dd7444111b1c47303ad8578e227106f35eb2818.gz";
      r2 = "44/5Q/SHA256E-s15575108815--21bc9d99b587974aec011009c457a9e022afdd9d31ada787619e3a9ccacfa5ff.gz/SHA256E-s15575108815--21bc9d99b587974aec011009c457a9e022afdd9d31ada787619e3a9ccacfa5ff.gz";
    }
    {
      site = "2V";
      class = "tumours";
      suffix = "_001";
      prefix = "fastqs/190621_NB501056_0321_AHNKGJBGXB/Sample_SFRC01124-2V/SFRC01124-2V_S2";
      hash1 = "a1c8728b75027258b36d6a2bd0d63bab9d4c3720436a8ef8c7d642dfab6fda08bf52864ecd6d08a85e1999e6d06787cebc77db5e48ad76a914ed4958c00fffee";
      hash2 = "105b3e5ea8ddc836dd715e31811251de71fdfd7a33efc621c49790af8f1569367f68bfa2816b27a026c798cf964f4733129558ba1cdf56bdb83ae644e0ec8e6e";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "CARTWHEEL 4966";
      meeting_discussions_follow_up = "RC Meeting 02.09.2021\nHad discussed WES results previously. Clare was to follow up with significance of germline mutations.\n\nMeeting note 19.09.2019\nTony to look at copy number before we investigate further. \n\nMeeting notes 05.09.2019\nWES discussion: Case is interstate (NSW) and don't have PBMCs. Can we organise to get a new blood for PBMCs?  \nDamian is wondering if there is a possible sample mix up after Gayanie had a second look on the set of 3 slides on 05.09.2019. Justin is looking at BAMS to check if we need to extract DNA again. \n\nMeeting notes 15.08.2019\nWES results: NUP188 (common to all 3 tumours) - nucleoporin - what does it do? \nKristy to look at this data further for the multiple primary case \n";
      d_case_summary = "Uterine Leiomyosarcoma, Thyroid Papillary Ca, Pancreatic NET\n\nPancreatic NET treated with splenectomy, Pancreatectomy";
      date_consented = "2018-12-27";
      tumour_type = "uLMS";
      tumour_details = "Uterine Leiomyosarcoma; Thyroid Papillary Cancer; Pancreatic NET";
      case_details = "Patient in her mid 50 (CARTWHEEL 4966)\n2000-2001: Papillary thyroid cancer, thyroidectomy\n\n02-2016: uLMS, hysterectomy (Block 2V)\n- Positive: Desmin, SMMHc, \n- Weak positive staining SMA\n- Negative: HMB45, p53\n- Estrogen receptor patchy moderate staining up to 50% of tumour nuclei\n- Progesterone moderate staining in up to 20% of nuclei\n\n03-2016: Docetaxel + Gemcitabine x 3 and Gemcitabine x 1\n\n02-2017: Neuroendocrine lesion of the pancreas (Block 2A)\n- Positive: chromogranin, synaptophysin, cytokeratinAE1/AE3.\n- Negative: CD56\n- Ki67 low (1%)\n\n07-2018:  uLMS metastatic recurrence, lobectomy (block 1C)\n- Positive: SMA, desmin (focal), SMMHC (focal), ER and PR (focal)\n- Negative: HMB45, S100, AE1/AE3\n- Ki-67 around 20-30%\n- Estrogen receptor weak to moderate staining, 20% of tumour nuclei\n- Progesterone receptor moderate staining, 30% of tumour nuclei\n \n08-2018: Anastrazole\n\nBRCA 1 and 2 testing performed but unsatisfactory DNA\n\n----------------------------------------------------------------------\nPapillary thyroid cancer 2000/2001\nLeiomyosarcoma of the uterus 2016\nNeuroendocrine lesion of the pancreas in Feb 2017.\n\nTAH in Feb 2016. \nDocetaxel + Gemcitabine x 3 and Gemcitabine x 1 in March 2016.\nDistal pancreatectomy and splenectomy performed to remove neuroendocrine lesion of the pancreas.\nLeft lower lobectomy for metastatic recurrence of LMS in July 2018.\nCommenced Anastrazole in August 2018.\n";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "24/10/2022: Feb 2016 block requested from DHM pathology by Devindee for uLMS Procan study. \n08/11/2022: 2016 block received.\n---------\nuLMS (TAH) -Douglass Hanly Moir\nCollected 08-Feb-16\nAccession no: 16MP8802: Block 2P, 2Q \nRequested 7-May-19 (EO) \nReceived 17-May-19\n----------------------\nuLMS (Lung mets)- Sydney South West Pathology\nCollected 26-Jul-18\nAccession no: SP-18-018180: Block 1C\nRequested 22-Feb-19 (EO) \nReceived 27-Feb-19\n-------------------------\nPancreatic NET- Sydney South West Pathology\nCollected 28-Feb-17\nAccession no: SP-17-004442: Block 2A\nRequested 22-Feb-19 EO\nReceived 27-Feb-19";
      mp_subgroup_sfrcp4_new_id = "3 or more primary";
      histology_summary = "BRCA 1/2 negative\n\nIHC: Leiomyosarcoma\n- Positive: SMA, Desmin, SMMHc, SMA, \n- Negative: S100, HMB45, AE1/AE3, p35 \n- ER positive (focal); PR positive (focal) \n\nIHC: NET of pancreas\n- Positive: chromogranin, synaptophysin, cytokeratin AE1/AE3\n- Negative: CD56\n";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01124";
    capture = bionix.fetchers.CREv2;
    predictNeoantigens = true;
  }
