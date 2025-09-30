with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "FV/m8/SHA256E-s25308000856--d05d322868b8c5cfa40838b505fec827527f3b6949734096ae18d5541ca20bba.gz/SHA256E-s25308000856--d05d322868b8c5cfa40838b505fec827527f3b6949734096ae18d5541ca20bba.gz";
      r2 = "jG/7g/SHA256E-s26648385152--eae21051bd42e7d177d0ff230e38cc9527c6f4039ae34fabfafd776535fc5547.gz/SHA256E-s26648385152--eae21051bd42e7d177d0ff230e38cc9527c6f4039ae34fabfafd776535fc5547.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "gJ/Fq/SHA256E-s13528324052--b96990b67705ed4fa4663110444b27c2dd87b4298e70e75b833b3f22fd9a1670.gz/SHA256E-s13528324052--b96990b67705ed4fa4663110444b27c2dd87b4298e70e75b833b3f22fd9a1670.gz";
      r2 = "0v/0w/SHA256E-s14352860345--3de41155f8d759d1930b2091d039eb8dbdc9aec865b8a299b29b0349a53c0cf0.gz/SHA256E-s14352860345--3de41155f8d759d1930b2091d039eb8dbdc9aec865b8a299b29b0349a53c0cf0.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "kM/P4/SHA256E-s13656642766--97a8f72f7680d1b2cfd131c7d4df61bb0ac7d16c707ba8e8f64ef24b75661acc.gz/SHA256E-s13656642766--97a8f72f7680d1b2cfd131c7d4df61bb0ac7d16c707ba8e8f64ef24b75661acc.gz";
      r2 = "jf/x8/SHA256E-s14501995538--dfc6807c73bae9a4c6841c707112b48213482da69618cabbf1890df23ac47d19.gz/SHA256E-s14501995538--dfc6807c73bae9a4c6841c707112b48213482da69618cabbf1890df23ac47d19.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "ZQ/vk/SHA256E-s37114217976--8fd9c9df8cd663166500045182e4bcf78f2e9ae93aebf42924787a5807a70908.gz/SHA256E-s37114217976--8fd9c9df8cd663166500045182e4bcf78f2e9ae93aebf42924787a5807a70908.gz";
      r2 = "0J/q4/SHA256E-s39792385571--7cbc6edba88b350359c049595eda5d0c141b8dc31d78a700f7cccf7e66c67c9d.gz/SHA256E-s39792385571--7cbc6edba88b350359c049595eda5d0c141b8dc31d78a700f7cccf7e66c67c9d.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "mK/wX/SHA256E-s37268973700--f5061ad2f7464bde834691c223d3f6f5a432d42c2fba3bdec5c15963b6495f3f.gz/SHA256E-s37268973700--f5061ad2f7464bde834691c223d3f6f5a432d42c2fba3bdec5c15963b6495f3f.gz";
      r2 = "Mj/gM/SHA256E-s40008918793--3392599181cabdf6016cd0f174940d5f6c701d2b27a7f97af3a350e1a4729470.gz/SHA256E-s40008918793--3392599181cabdf6016cd0f174940d5f6c701d2b27a7f97af3a350e1a4729470.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "0j/jz/SHA256E-s5045579699--046e6a32e711d6db0850725cafec9ab8395d53bf289658e2f62bd4da3288b88d.gz/SHA256E-s5045579699--046e6a32e711d6db0850725cafec9ab8395d53bf289658e2f62bd4da3288b88d.gz";
      r2 = "fx/vX/SHA256E-s4879418059--ee324061b31b409119b85b7c062ba7422bdda20564da379c823877282415a6da.gz/SHA256E-s4879418059--ee324061b31b409119b85b7c062ba7422bdda20564da379c823877282415a6da.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 29.02.2024\nDiscussed WGS report (Grimmond and SFRC).\nWaiting on PDX.\n\nClare meeting 05.10.2023\nReviewed S1 OCT block (55-60%) tumour purity.  submit for WGTS.\n\nSample meeting with Clare 2023.06.16\nPlan for FFPE block 2N: WES, yes, not for BROCA as BRCA1 mutation known.\n\nClare to organise biopsy when suitable. Prioritise fresh tissue for WGS, check back about WES after processing and review.\n\nPatient is post-PETRA (mark it in Redcap) - when suitable, can get fresh biopsy (and PDX) \n\nWill not send known BRCA mutations for future BROCA. ";
      d_case_summary = "55 yo HGSOC Dx May 2017\ngBRCA1\n2nd line olaparib - did not tolerate\nPD - PETRA for 11 mo - now post PARPi ? secondary mutation\n3rdline carbo pacli now still on Bev with slow PD\nB7H4 pos - awaiting AZD8205 but only if can have biopsy - awaiting CTCAP on 21/3/23";
      date_consented = "2023-03-07";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC, gBRCA1\npost-PETRA";
      case_details = "55 years old female, Platinum-resistant relapsed HGSC; BRCA1 mutation, FIGO Stage IIIC \n\n2017-05: TAHBSO, 1st line treatment, -6 cycles of carbo/taxol (finished 2017-10), FFPE block 2N received \nIHC positive: PAX8 and WT1, P53, CK7  \nIHC negative: CK20 \n\n2017-09:\tFamilial cancer panel \nBRCA1, exon 17, NM_007294.3, Likely pathogenic \n\n2019- 01 to 2019-06: C6 carbo/caelyx, com \n\n2019-08:\tstarted Olaparib, stopped, could not tolerate \n\n2020-04 to 2020-08:\trecurrence, 3rd line chemo, carbo/gem, \n\n2020-12:\tPD: platinum resistant  \n\n2021-02\tAZD5305 , PARP inhibitor on PETRA trial, partial response (64%) \n\n2022-01\tcame off PETRA trial  \n\n2022-05 to 2022-10 Carboplatin/paclitaxel\n\n2022-10 to 2023-06: Bevacizumab\n\n2023-03\tBlood B1 received \n\n2023-08 S1 received: Core biopsy of L axilla node.\nAZD8205 (ADC (anti-B7-H4 antibody)). Ceased due to toxicity 2023-10. \n\n2023-11 S2 received: Core biopsy of L axilla node. \nRe-commenced bevacizumab. \n";
      brca_report = "SFRC01731_GeneticTesting_16Nov2017_Redacted.pdf";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "20Apr23: May2017 sample requested from RWH pathology by Monica\n24May23: May2017 sample received from RWH pathology by Monica ";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_germline_mutations = "BRCA1";
    };
    inherit samples;
    name = "SFRC01731";
    disableManta = true;
  }
