with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "7w/X9/SHA256E-s38694391399--c830cb67819b72c925c29646b4f01f75db8552718322fd91def3fca19b02c824.gz/SHA256E-s38694391399--c830cb67819b72c925c29646b4f01f75db8552718322fd91def3fca19b02c824.gz";
      r2 = "2v/Mv/SHA256E-s41131205210--6c772e58eb32b30ed821110ebc75540e8ae1a8e459ccfe9f711b0acb71920822.gz/SHA256E-s41131205210--6c772e58eb32b30ed821110ebc75540e8ae1a8e459ccfe9f711b0acb71920822.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "FK/wq/SHA256E-s80089224947--bf5d02c504465c7e6b58904cb790f392b37727b186d02587a60ddb0c34b1c4be.gz/SHA256E-s80089224947--bf5d02c504465c7e6b58904cb790f392b37727b186d02587a60ddb0c34b1c4be.gz";
      r2 = "8w/02/SHA256E-s86409492677--3667dc47184aca4d1db3788c012a913357336f067c7f5ee88383b0a283adce89.gz/SHA256E-s86409492677--3667dc47184aca4d1db3788c012a913357336f067c7f5ee88383b0a283adce89.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "kk/v8/SHA256E-s7039775377--fe341d87c14a1195a591028035cf7e35f9e1c361c34f1bc03688479f19b2e7eb.gz/SHA256E-s7039775377--fe341d87c14a1195a591028035cf7e35f9e1c361c34f1bc03688479f19b2e7eb.gz";
      r2 = "Mf/mz/SHA256E-s6894706872--aa98868635a468ea1d921a8df2be28d02e70a6b87f853036aeda03dc7fa78f6d.gz/SHA256E-s6894706872--aa98868635a468ea1d921a8df2be28d02e70a6b87f853036aeda03dc7fa78f6d.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "uLMS";
      meeting_discussions_follow_up = "RC Meeting 29.2.24:\nNothing to report.\n\nClare's meeting 2023.05.18\nPlan for block A5:  Extract DNA and WES? Yes  \nExtensive case - WES on baseline, WGS on recurrence, validated PDX \nMet block sent for ProCan, only received slides for this, no block. No proteomics on this block \n\n\nRC Meeting 2021.10.28\nDiscussed WGS report (Grimmond).\nAt Variant meeting there were discussions about ATRi but not a strong indication and no access.\nATRX is a potential target, need models to try. With potent PARPis.\nCIRCOS plot looked typical for RB1 and TP53 \n\nMeeting with Clare 2021.09.10\nSend a snap frozen piece of S1 straight for WGS";
      date_of_death = "05/2024";
      d_case_summary = "Metastatic uLMS";
      tso500_external = "SFRC01445_TSO500_04May2022_Redacted.pdf";
      date_consented = "2021-07-24";
      tumour_type = "uLMS";
      tumour_details = "uLMS";
      case_details = "48 years old  \n\n2020-06:\tuLMS diagnosis, total hysterectomy \n\n2020-09:\tMetastatic uLMS, surgery on upper lobe of lung  \nPositive: caldesmin, weakly positive for SMA.  \nNegative: Desmin, AE 1/3  \nKi67 proliferative 70%  \n\n2021-07:\tuLMS recurrence on lung lower lobe  \nFresh tissue received from surgery \n\n2021-08\tBlood B1 received \n\n2021-10: WGS \n- Tumour mutational burden is low (< 10 mutations / Mb).  \n- Homozygous deletion of PTEN detected. Whole transcriptome sequencing demonstrated low expression (bottom percentile when compared to the TCGA PANCAN cohort).  \n- Homozygous deletion and inactivating rearrangements of TP53 detected. Whole transcriptome sequencing demonstrated low expression (4th percentile when compared to the TCGA PANCAN cohort).  \n- Inactivating rearrangements and loss of heterozygosity RB1 detected. Whole transcriptome sequencing demonstrated low expression (bottom percentile when compared to the TCGA PANCAN cohort).  \n- Inactivating rearrangements of ATRX were detected. Whole transcriptome sequencing demonstrated low expression (bottom percentile when compared to the TCGA PANCAN cohort). \n\nValidated PDX ";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "07/11/2022: 2020 block requested from Alfred by Devindee for uLMS project.\n27Feb2023: 2020 block re-requested from Alfred by Monica for uLMS project.\n20Apr2023: 2020 block received from Alfred by Monica ";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01445";
  }
