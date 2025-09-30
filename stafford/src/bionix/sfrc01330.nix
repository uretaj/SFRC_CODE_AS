with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {samtools.sort = def samtools.sort {walltime = "48:00:00";};})
  ];
}; let
  samples = [
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "0K/Pf/SHA256E-s7931892188--697fcbf6f5bdeaeef3b0f0a5a1dc39338780e3accf19bed8b3b2075ddf7dd5af.gz/SHA256E-s7931892188--697fcbf6f5bdeaeef3b0f0a5a1dc39338780e3accf19bed8b3b2075ddf7dd5af.gz";
      r2 = "K6/Qw/SHA256E-s7964882523--dbcc4dc5622df7e23f1202573545a33be4db84e6b40c0c5b88054917e733a234.gz/SHA256E-s7964882523--dbcc4dc5622df7e23f1202573545a33be4db84e6b40c0c5b88054917e733a234.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "J5/0k/SHA256E-s35242596899--60f11f15fd00b5b9589ff7a2d4baa4cccab1a2d9fd24320607fac392545b7e01.gz/SHA256E-s35242596899--60f11f15fd00b5b9589ff7a2d4baa4cccab1a2d9fd24320607fac392545b7e01.gz";
      r2 = "9Q/1W/SHA256E-s38117342997--bd3de6d385dce832f0fb632c3fe4e464a85c8d8b4a66026405cb90bf9abefeed.gz/SHA256E-s38117342997--bd3de6d385dce832f0fb632c3fe4e464a85c8d8b4a66026405cb90bf9abefeed.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "JK/fw/SHA256E-s75451452550--784a3384be6b67e9bcabb26c1e27b9f797144252150b1a3cc82cac86da27f664.gz/SHA256E-s75451452550--784a3384be6b67e9bcabb26c1e27b9f797144252150b1a3cc82cac86da27f664.gz";
      r2 = "pj/pk/SHA256E-s84006742591--aa2217c09d8125320193bcb1fbb96621d85149cfc0db1be640caf987df9ef4a2.gz/SHA256E-s84006742591--aa2217c09d8125320193bcb1fbb96621d85149cfc0db1be640caf987df9ef4a2.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "HGSEC";
      meeting_discussions_follow_up = "Clare sample meeting 09.02.2024 (through email)\nPlan on S2: Unfortunately, this block also has no tumour. We do have mince available, for some reason this sample has not been transplanted yet. Would you like to attempt a PDX? Should the treating clinician be made aware that we do not have any tumour in our fresh sample? \n\nCS:  Yes - please attempt a PDX asap \nI will let med onc know that we have no tumour in our blocks but that we will wait to see if we get a PDX. \n\nClare sample meeting 21.12.2023\nPlan on fresh tissue S2: Both OCT and FFPE have no tumour. There is one vial of snap frozen available, we could attempt another OCT but is it worth it? \nCS: DID WE PUT MINCE INTO MICE? YES, DO AN OCT H+E TO SEE IF TUMOR PRESENT. I HAVE EMAILED THE MED ONC RE THERE IS LIKELY NO TUMOUR. THERE ARE OTHER HITS FROM THE ORIGINAL ANALYSES SO THEY MIGHT BE ABLE TO FOLLOW THOSE UP. \n\nEmails from Clare 17.11.2023 \nPatient having surgery at Epworth Freemasons this Friday evening, sample post lenvatinib, hoping to do a second WGS. Anthony to take MACS buffer and collect, Ratana to process Saturday.\n\nBROCA meeting with Clare 15.10.2021\nOrganise BROCA on same sample as WGS (S1)\n\nRC Meeting 10.06.2021\nDiscussed findings from RNAseq data to complement WGS (DNA only) data.\nThere's interesting focal amps on 12 that don't seem to be mentioned \nNo changes needed to existing Stafford Report.  \nTMB calculated by WEHI is usually higher than UMCCR, haplotype threshold differences. Can do internal validation. \n\n15.03.2021\nMade new OCT blocks to review and make RNA for Sean's lab to do transcriptome analysis.\n\nWhen we have both WGS and RNASeq, we can then line these cases up for Proteomics with Roger Reddell - he would prefer a lot of cases to a few. We need 40um (eg 4 x 10 um) - so have a think about which cases we could put forward for that! \n\nRC Meeting 18.02.2021\nTo make RNA and send to Sean's lab for RNAseq to compare with large cancer dataset\n\nRC Meeting 10.12.2020\nERBB2 >6 copies would be amplified. These 4 copies line up with the equivocal HER2 IHC.\nKRAS amp - is a large region, not focal amplification? - could get onto BGB282 MEKi trial ";
      d_case_summary = "A a 67 year old, female GP who presented initially with minor post menopausal bleeding. Was diagnosed on 24/08/2020 with Stage IV high grade serous uterine carcinoma. Has commenced chemo.";
      date_consented = "2020-09-08";
      tumour_type = "HGSEC";
      tumour_details = "HGSEC";
      sfrcp_her2_report = "SFRC01330_HER2ISH_04Sep2023_Redacted.pdf";
      case_details = "Aug 2020: TLH BSO + Omentectomy, optimal debulking (R1). Dx HGSOC FIGO stage IVB.\n\t- ER 1-2+ in 20%. Ki-67 ≤50%. \n\t- IHC positive: p53, PAX8.\n\t- IHC negative: PR, pMMR, HER2, WT1.\n\nSep 2020: 1st line carboplatin / paclitaxel. Paclitaxel ceased after C1. \n\t\nOct 2020: FCC Panel report - no pathogenic variants detected.\n\nNov 2020: SFRC WGS\n\t- Mutation of uncertain clinical significance and loss of heterozygosity\n\tTP53 detected.\n\t- Mutation of uncertain clinical significance in ATM detected.\n\t- Activating mutation of uncertain clinical significance and copy number\n\tneutral-loss of heterozygosity PIK3CA detected.\n\t- Inactivating mutation of uncertain clinical significance in PPP2R1A detected.\n\t- Amplification of large region of Chr12p containing KRAS (12 copies) detected.\n\t\nJan 2021: Progressive disease.\n\nFeb 2021: 2nd line Pembrolizumab/Lenvatinib. Partial metabolic response.\n\nOct 2022: Oligo-progressive disease. \n\nJan 2023: Radiotherapy. 36Gy/3# to oligo-progressive disease. Complete metabolic response.\n\nApr 2023: Progressive disease to peritoneum.\n\nOct 2023: Ceased pembrolizumab. ";
      patient_information_complete = "Incomplete";
      fcc_report = "SFRC01330_FCC_Panel_Report_14Oct2020_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01330";
  }
