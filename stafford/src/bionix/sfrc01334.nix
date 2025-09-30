with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        samtools.sort = def samtools.sort {walltime = "48:00:00";};
        facets.reporting.preprocess = def facets.reporting.preprocess {
          preSeg = 100;
          segCrit = 700;
          widPerHet = 750;
        };
      })
  ];
}; let
  samples = [
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "zG/x3/SHA256E-s7870210884--236f84cb20c8503142b83eac85a928134288b82b3f3e03dd5246b043772a75f8.gz/SHA256E-s7870210884--236f84cb20c8503142b83eac85a928134288b82b3f3e03dd5246b043772a75f8.gz";
      r2 = "Gz/qM/SHA256E-s7970583682--c362fff90cbb1c4b997a7b85bb5ea285015ccfd30c49a1d5b2813256a25430ef.gz/SHA256E-s7970583682--c362fff90cbb1c4b997a7b85bb5ea285015ccfd30c49a1d5b2813256a25430ef.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "G2/Qx/SHA256E-s45819513242--96ef3cbbc91e0f82eeb3544b36bfab76e2020693433923833ef63098a33f87a0.gz/SHA256E-s45819513242--96ef3cbbc91e0f82eeb3544b36bfab76e2020693433923833ef63098a33f87a0.gz";
      r2 = "4m/Pk/SHA256E-s51142200446--29d68cacea6cff8d34e70b7e1c52594dc30cf11c49259b338c5e6b2c152e16c0.gz/SHA256E-s51142200446--29d68cacea6cff8d34e70b7e1c52594dc30cf11c49259b338c5e6b2c152e16c0.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "XP/Xm/SHA256E-s78848604901--887a61297bd5c32cebe6cd97d1d385449f45b238c16e2cf20dcd7c3c3398fa6e.gz/SHA256E-s78848604901--887a61297bd5c32cebe6cd97d1d385449f45b238c16e2cf20dcd7c3c3398fa6e.gz";
      r2 = "km/Wf/SHA256E-s84681298737--f064c20cdf5b09e523f3c81576b24d5a25695e02c9168ad4dcf69543747532b4.gz/SHA256E-s84681298737--f064c20cdf5b09e523f3c81576b24d5a25695e02c9168ad4dcf69543747532b4.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "HGSOC";
      meeting_discussions_follow_up = "RC Meeting 06.10.2022\nDiscussed new BROCa results (compare to all other results).\nWGS confirmed the BARD1 is germline (but benign)\n\nBROCA meeting with Clare 15.10.2021\nOrganise BROCA on FFPE block 2.2 from 2012 and fresh sample S1. Check with Cass to also send PDX. Send those 3 samples all together.\n\nClare's meeting 2021.08.12\nCyclin E on Recurrent sample = +3 in 40% of cells (earlier sample was +2/+3 in 50% of cells)\n\nClare's meeting 2021.07.29\nSFRC01334_2.2, Still do CCNE1 IHC on recurrence block matching our fresh sample (waiting to arrive).\n\nRC Meeting 22.07.2021\nThe html says 6 copies of CCNE1, but Joep says only 3.5 copies due to the average ploidy of the tumour being 3.1.\nOur analysis shows much of chrom 19 at total CN 5, with several small regions jumping to 6, so CCNE1 is not highly amplified against local chr19 background - relevant? \nThis is ok, Cyclin E IHC will still be done on the blocks we have/getting. \n\n19.07.2021\nPatient is progressing after chemo. Can see in WGS html report that CCNE1 has 6 copies. Do Cyclin E IHC on recurrence block (same time as our S1, Warren has requested block). We have 2012 block, can do IHC on both blocks, or just the recurrence if it's good enough. Could go on IGNITE trial.\n\nRC Meeting 10.06.2021\nDiscussed findings from RNAseq data to complement WGS (DNA only) data.\nDiscussion: Warren to get block (need histopath report as well). Kas to investigate further \nCHORD discrepancies to be investigated as well. \n\n\n15.03.2021\nMade new OCT blocks to review and make RNA for Sean's lab to do transcriptome analysis.\nWhen we have both WGS and RNASeq, we can then line these cases up for Proteomics with Roger Reddell - he would prefer a lot of cases to a few. We need 40um (eg 4 x 10 um) - so have a think about which cases we could put forward for that! \n\nRC Meeting 18.02.2021\nTo make RNA and send to Sean's lab for RNAseq to compare with large cancer dataset\n\nRC meeting 04.02.2021\nWGS report discussed. 100% BRCA1 methylation detected by Kas.\nPossible cause of BRCA1 methylation but reactivation of BRCA1 expression? Make RNA (Ratana), run qRT-PCR for BRCA1 (Kas) to check reactivation of BRCA1 \nMRE11 - Fork protection? \nWB to try on PDX sample => 53BP1 loss.\n\nClare and Ratana meeting 09.11.2020\nS1 reviewed. Microdissect for DNA and send for WGS (no RNA). \nAsk Gayanie if there is desmoplasia (C1 infiltrate, if there is. Hoping the answer is no!) \nGayanie's reply: Yes there is desmoplastic stroma around viable tumour. Also there is necrosis. I have marked some of those areas in the case center now. That's the reason for % of purity. If there is no or much less desmoplastic reaction purity will be higher. \n\n09.10.2020 Plan for samples:\n•full bloods with ctDNA and PBMCs important\n•WGS\n•PDX\n•methylation analysis\nThe plan is to design a vaccine for this case. Asha will be involved in this as will be the same process as for SOLACE2.";
      date_of_death = "05/2023";
      d_case_summary = "HGSOC - 5 years of complete response to PARPi. Recent progression seen on CT scan.";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC";
      case_details = "super-responder HGSOC to PARPi - was on ARIEL3, now progressing. \n\n67years old \n\n09-2020 Peritoneal laproscopy (block being recalled and we have fresh tissue with tumour) \n\n04-2020 Rucaparib / placebo since 07-2015 - 4 years and 9 months, Cycle 63 \n\n09-2014 Peritoneal recurrence  \n\n05-2012 total hysterectomy (got a block) ";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2012 block requested from Austin by Warren 14/6/21, received 2/7/21\n2020 block requested from RCH/RWH by Warren 19/7/21, received 4/8/21";
      mp_subgroup_sfrcp4_new_id = "Super Responder";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01334";
    disableManta = true;
    predictNeoantigens = true;
  }
