with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        samtools.sort = def samtools.sort {walltime = "48:00:00";};
        neoantigens.antigens = def neoantigens.antigens {memory = 60;};
      })
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      suffix = "_001";
      prefix = "fastqs/pmcc/2020-02-11/SFRC01056-B1_S1";
      sha256-1 = "72119db673b4db6a8a4d95071824f35fc5df2d4c1e4d959928e77ba58059a2ed";
      sha256-2 = "7c13fdb35bacaf494abdb7ef783c6958c33cf6d7931c40425ad2c4c782382558";
    }
    {
      site = "1A";
      class = "tumours";
      suffix = "_001";
      prefix = "fastqs/pmcc/2020-02-11/SFRC01056-A1_S2";
      sha256-1 = "8ae74ec4300c3caef5073f96112f4becf98cd724b0ee509e6acecbbe26c2ae6f";
      sha256-2 = "5e74a37e23279fd2b53eabb24de4243eb566897fc58133d5229aed30ae9bf19b";
    }
    {
      site = "1A.2";
      class = "tumours";
      pdx = false;
      r1 = "Kj/pM/SHA256E-s10315986459--2913ba95d85c716a150750169d00c564f0414996ea4d1de28d3a5500906de51f.gz/SHA256E-s10315986459--2913ba95d85c716a150750169d00c564f0414996ea4d1de28d3a5500906de51f.gz";
      r2 = "2Z/32/SHA256E-s10781028898--a445f45bcabb02f8476addca5adcd6041189f90d23a157fdb2c03fce01cb310e.gz/SHA256E-s10781028898--a445f45bcabb02f8476addca5adcd6041189f90d23a157fdb2c03fce01cb310e.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "11Nov21- will have bloods 3x year for serial ctDNA and PBMCs as super responder.\n\nClare's meeting notes 2021.08.26\nSFRC01056_17H,WES \nFIGO Stage IIIC HGSEC Dx Feb 2017. No recurrence. Responded very well. For nanostring \n\nMeeting notes 2019.10.24:\nThis patient is potentially a super-responder to platinum \n\nSend DNA for WES - neoantigen analysis - Amandine to check quality of DNA made from block by Ellen on 28.10.17 before sending, otherwise make fresh DNA from block 1A ";
      d_case_summary = "HGS endometrium, low grade papillary urothelial bladder";
      date_consented = "2017-09-12";
      tumour_type = "HGSEC";
      tumour_details = "HGS endometrial carcinoma diagnosed Feb 2017,   In  remission March 2020;  low grade papillary urothelial bladder";
      case_details = "74yo woman with serous endometrial ca and incidental finding of low grade papillary urothelial \nca on cystoscopy post hysterectomy \n Number of primaries: 2 \nDiagnosis:  \nSerous endometrial ca FIGO stage IIIC diagnosed 12/1/2017 on D/C \nLow grade papillary urothelial ca diagnosed 2/2/2017 incidentally  \nHistory and Treatment \nJanuary 2017: d/c showing HGS endometrial carcinoma on curettings \n2 February 2017: surgery (robotic hysterectomy + BSO + pelvic lymph node dissection + omentectomy) confirmed diagnosis of HGS endometrial ca \nRx: adjuvant chemotherapy (6 cycles carboplatin/paclitaxel) and pelvic radiotherapy (50.4 and 54 Gy in 30#) - completed September 2017 \n2 February 2017: Incidental finding of low grade papillary urothelial ca on cystoscopy   \n\n\nResults \n\nPMCC Panel testing: TP53 EX6/11 pathogenic C5 46.5%, CDKN2A Ex2/3 likely pathogenic C4 43.7%, SPOP Ex 6/12 likely pathogenic  C4 20.4% \n\nFCC cancer panel report - BOPP (breast, ovarian, prostate, pancreas) panel - no mutations were detected \n\nBROCA: P 53 c.659A>G, p.Y220C (48%) \n\nWES on HGS endometrial curetting:  Genome doubling true, Somatic:TP53, KMT2C x3, Signatures - 1, 13, 3 (HRD). KMT2C mutations would explain HRD signature and cells with this mutation are sensitive to PARPi ";
      pre_analysis_mutations = "Petermac Panel- TP53, CDKN2A, SPOP";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "2 primary";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01056";
    capture = CREv2;
    predictNeoantigens = true;
  }
