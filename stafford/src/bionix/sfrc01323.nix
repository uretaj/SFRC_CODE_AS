with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        facets.reporting.preprocess = def facets.reporting.preprocess {
          dipLogR = -0.3096054;
        };
      })
  ];
}; let
  samples = [
    {
      site = "1.1";
      class = "tumours";
      pdx = false;
      r1 = "WV/Zq/SHA256E-s7362735995--a68b5f3f7c3c05e049d31bfc34006c546b66e97b850950542495f16bbdda47aa.gz/SHA256E-s7362735995--a68b5f3f7c3c05e049d31bfc34006c546b66e97b850950542495f16bbdda47aa.gz";
      r2 = "Jj/VX/SHA256E-s7411919567--71bc618f3ee4f1bb7be1b1c07a1ddd701e9c929341dac85e15aa4b17da8cc9cd.gz/SHA256E-s7411919567--71bc618f3ee4f1bb7be1b1c07a1ddd701e9c929341dac85e15aa4b17da8cc9cd.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Kx/8f/SHA256E-s3612451863--138a7e379625d47263263176558f016b78c7400c6d71cd8be074542a1f0ee9a7.gz/SHA256E-s3612451863--138a7e379625d47263263176558f016b78c7400c6d71cd8be074542a1f0ee9a7.gz";
      r2 = "60/kv/SHA256E-s3631128806--beb8b337dbc843b4801985383c3b2584acc30193937cf8eabfbdd205c568e694.gz/SHA256E-s3631128806--beb8b337dbc843b4801985383c3b2584acc30193937cf8eabfbdd205c568e694.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 2021.12.16\nDiscussed non-SFRC WGS report, to compare with our WES data.\nLast clinical letter from Aug 2021. Did not mention any surgery. WGS performed on hysterectomy tissue Sept-Oct 2021? \nNF2 deletion - Chr22, focal, 30kb - this would be under-called in our analysis of WES.\nPerhaps good to be aware of limitations of each platform and analysis so we know what can be missed.\nNeed Tony's input if we have a statement/comment of any limitations. \n\nRC Meeting 2021.04.29\nWES report discussed.\nTMB 9. Low tumour purity (was macrodissected) = 0.27 \nMUC4 in mesothelioma - there are 5 in this case - only 1 relevant? \nhttps://jitc.bmj.com/content/jitc/8/1/e000713.full.pdf \nSomatic sorted by frequency - no Clinvar hits \nNo focal amplifications or deletions \n\nRC Meeting 2021.04.01\nCome back to WES report when Jocelyn is back.\n\nRC Meeting 2021.03.18\nCopy number analysis on WES report needs work. Come back to this.\n\n2021.01.28\nPlan: Make DNA - see what quantity I get (WGS/WES/TSO500).  \nUpdate: Have 97 ng/ul DNA - over 4 µg. But how much tumour DNA? \nPlan: Do WES - Justin to do deeper sequencing \n\n2021.01.07 Clare and Ratana meeting\nTo do WES. Make DNA from FFPE sections. Angela to get blood.";
      d_case_summary = "59 yo female diagnosed with peritoneal mesothelioma in 2018. Initially treated with 6 cycles of pemetrexed and carboplatin in addition to bevacizumab. On completion, has been on maintenance bevacizumab and pemetrexed. Blood collection scheduled for 28th Jan 2021 at Petermac.";
      tumour_type = "Other rare";
      tumour_details = "Peritoneal Mesothelioma";
      case_details = "Peritoneal mesothelioma Dx in late 2018. PET scan showed low grade uptake in preitoneal fluid and some nodal uptake.Treated with 6 cycles of pemetrxed and bevacizumab, in addition to bevacizumab. Then changed to maintenance bev and pemetrexed. Recent PET-CT showed ongoing response.";
      patient_information_complete = "Incomplete";
      other_tumour_type = "Peritoneal Mesothelioma";
      receipt_eyebrow_hairs_complete = "Incomplete";
      umccr_wgs = "SFRC01323_NonSFRCWGS - VCCC-Column_Redacted.pdf";
      multiple_primary_project = "Yes";
      block_recall_history = "2018 mesothelioma block requested routinely from Austin health via fax on 22/10/2020 by Josh\nReceived by Warren 17/12/2020";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01323";
    capture = CREv2;
  }
