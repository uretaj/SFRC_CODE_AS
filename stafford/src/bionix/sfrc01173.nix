with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "1j/JK/SHA256E-s2899720067--2ba8ffc69296a3812afb806409fe0b3b530a7c1d935f201469c93565b9ec668f.gz/SHA256E-s2899720067--2ba8ffc69296a3812afb806409fe0b3b530a7c1d935f201469c93565b9ec668f.gz";
      r2 = "gg/vm/SHA256E-s3131164120--c49d87fcdd567af93ed31a3eb4fe2272c0a91f3d1bee879673830af732543154.gz/SHA256E-s3131164120--c49d87fcdd567af93ed31a3eb4fe2272c0a91f3d1bee879673830af732543154.gz";
    }
    {
      site = "S1_T1";
      class = "tumours";
      pdx = true;
      r1 = "8M/F2/SHA256E-s4980938728--c5579da469020bae4762eed82bdebce71c9a121a610520c70ce9dc91993a6d7c.gz/SHA256E-s4980938728--c5579da469020bae4762eed82bdebce71c9a121a610520c70ce9dc91993a6d7c.gz";
      r2 = "f7/9p/SHA256E-s5307832277--e76d58a75754ba9f960a43c6842234495b58f19b6113becc99bb484f50ad995c.gz/SHA256E-s5307832277--e76d58a75754ba9f960a43c6842234495b58f19b6113becc99bb484f50ad995c.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting notes 18.03.2021\nS1 was sent for BROCA, as well as PDX S1_T1. Have new WES report (PDX).  \nBRCA testing (block from May 2019, a few weeks after our S1) found somatic BRCA1 (a large rearrangement), which wasn't detected by WES or BROCA.  \ngCHEK2 by BROCA (c.470T>C p.I157T) and WES (c.599T>C, p.Ile200Thr) - same mutation on different transcripts. \n\nTony's comment: The copy number calls are completely flat across BRCA1. Presumably the deletion is quite focal. Both FFPE and exome hybridisation are noise amplifying, making highly focal deletions the hardest events to call at the typical depths we get for WES. \nHere there was a high% but non-dominant Sig3. No indication in logR that there is a deep deletion. We might be able to add in more details of the raw data at key genes. We'll dig into this case further to see what else if anything might be useful. \n\nPDX data from Cass: some mice respond to cisplatin and rucaparib and some mice don't. Two separate tumours? HGS FT, previous bowel cancer \n\nDiscussion: CHEK2 fine, follow up the BRCA1. To look closer in the reports. \nRetrieved DNA from the Fox lab used for the BRCA report (same surgery date as our sample). Holly has ordered CHEK2 primers. \n\nMeeting notes 19.03.2020\nBroca result:Plan: Check P53 IHC, check with Liz Swisher for opinion on lack of P53,  \nCan Ygal Haupt (petermac) run MDM2 or HDM IHC on a block, do we have a block?  To explain lack of TP53 mutation. \nPrioritise for WES? Priority for Clare and Briony to follow up to privide clinical report \n\nMeeting notes 27.06.2019\nAdd  this sample  to BROCA list ";
      myriad_report = "SFRC01173_MyriadResult_28Jan22_Redacted.pdf";
      date_of_death = "10/2022";
      d_case_summary = "80-yo female with HGSC of the Fallopian Tube.";
      date_consented = "2019-05-09";
      tumour_type = "HGS Fallopian tube";
      tumour_details = "HGSOC of FT";
      case_details = "Silverberg Grade 3 HGCFT\ngBRCA WT\n\nTAHBSO on 6/5/2019\n\nPrevious bowel cancer.\n";
      pre_analysis_mutations = "Query somatic BRCA1 and germline CHEK2. Clare following up.";
      myriad_submission = "Yes";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "Myriad HRD Negative (BRCA neg) score 12";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2019 HGSOC Tissue requested via email from RWH on 31/03/2020 by Josh\n\n2019 HGSOC Tissue (Slides from block 2J) received on 03/04/2020 from RWH ";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      histology_summary = "TAH-LSO\n- p53 WT\n- p16 positive <90% of cells";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01173";
    capture = CREv2;
  }
