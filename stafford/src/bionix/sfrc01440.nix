with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Kz/GP/SHA256E-s43041904278--f6ea0a1abc61290069e6c6909d518c7319461aa2d99f902fc85610d1e0970709.gz/SHA256E-s43041904278--f6ea0a1abc61290069e6c6909d518c7319461aa2d99f902fc85610d1e0970709.gz";
      r2 = "87/K9/SHA256E-s45469899226--a9167b85117d7c0e6cb2a53257e565008fd5eeccf66030f262f21360463352f1.gz/SHA256E-s45469899226--a9167b85117d7c0e6cb2a53257e565008fd5eeccf66030f262f21360463352f1.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "0p/fJ/SHA256E-s98837478032--744d25824d1986e554a9a1543da4b006ba7df7d48fd0025f78a0e8fda12ad33d.gz/SHA256E-s98837478032--744d25824d1986e554a9a1543da4b006ba7df7d48fd0025f78a0e8fda12ad33d.gz";
      r2 = "M3/Zv/SHA256E-s103429704070--95b33853263b580274aada51f72594a9b72beaec4883402033010f67bf748a04.gz/SHA256E-s103429704070--95b33853263b580274aada51f72594a9b72beaec4883402033010f67bf748a04.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "73/1m/SHA256E-s8041483598--2993ffd5f1d5f1b9d577cd036d3a7957d485ac42ac3e69cc322f7af421eb3719.gz/SHA256E-s8041483598--2993ffd5f1d5f1b9d577cd036d3a7957d485ac42ac3e69cc322f7af421eb3719.gz";
      r2 = "JF/zZ/SHA256E-s7890625816--9e40970cdc653a347a484c2c8faabb7c8571c2c01ef299f6850aa0e16fe0351a.gz/SHA256E-s7890625816--9e40970cdc653a347a484c2c8faabb7c8571c2c01ef299f6850aa0e16fe0351a.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "vulval vaginal";
      meeting_discussions_follow_up = "Email chaine btw Clare, Briony, Damien, Ratana and Amandine 08.02.2022\nGet Her2 ISH organised on FFPE sample from fresh tissue S1.\nOutcome: her2 ISH 2+, positive\n\nRC Meeting 2021.11.11\nDiscussed WGS report.\nTrials: \nMoST 9 (HER2) \nPOLE1 inhibitor targets MYC?? (Phase I, no efficacy yet) \nHER2 ADCs. MJW: Is Trastuzumab Emtansine (DM1 tubulin targeting) an option? Will be relying on conjugate toxicity as unlikely to still be HER2 dependent. \nNot eligible for Ignite, is not ovarian \nAmplifications in Chr 1, 8 ,12 \n    Is there a reason for so many amplifications? \n    Low tumour purity a problem? \n    CIRCOS plot to be explained \n    Double minute chromosomes (dmin) - can we discuss/ have this explained? \n\nAmplifications in Chr 12 are common in liposarcomas. \n\nThis case is probably not dmin. The MYC amplification is big. \nPlan to do long reach/range sequencing in GRIDSS \nThe copy numbers are likely to be even higher than estimated, given low tumour purity. \nATRX deletion has low allele frequency, not actionable. \nSFRC Report to be as Grimmond report. \n\n\nClare's meeting 2021.08.26\nSFRC01440_S1 (OCT1-11) and FFPE: WGS on snap frozen directly. ";
      date_of_death = "5/2023";
      d_case_summary = "40 yo Advanced vaginal adenocarcinoma of mucinous/GI type/non-HPV. Presumed endodocervial primary (tumour bulk predominantly in the vagina, also involves bladder trigone)\nClinician is quite concerned about this patient and after sequencing if possible.";
      tumour_type = "Gynae cancer other";
      tumour_details = "Advanced vaginal adenocarcinoma of mucinous/GI type/non-HPV. Presumed endocervical primary (tumour bulk predominantly in the vagina, also involves bladder trigone)";
      case_details = "On SOLACE2\nAdvanced vaginal adenocarcinoma of mucinous/GI type/non-HPV. Presumed endocervical primary (tumour bulk predominantly in the vagina, also involves bladder trigone) \n\nClinician is quite concerned about this patient and after sequencing if possible. \n07-2021: \tVaginal biopsy  \nPositive: CK7, p16,  p53 (mutation type) \nNegative: ER, PR, PAX8, PAX2, SATb2, WT1, D240, calretinin, CK20 \nHPV ISH negative \nMUC6 sparse cytoplasmic staining \nCDX2: patchy moderate positive staining \n___________________________________________________\nAdvanced vaginal adenocarcinoma of mucinous/GI type/non-HPV. Presumed endocervial primary (tumour bulk predominantly in the vagina, also involves bladder trigone) \nClinician is quite concerned about this patient and after sequencing if possible. \n07-2021: \tVaginal biopsy  \nPositive: CK7, p16,  p53 (mutation type) \nNegative: ER, PR, PAX8, PAX2, SATb2, WT1, D240, calretinin, CK20 \nHPV ISH negative \nMUC6 sparse cytoplasmic staining \nCDX2: patchy moderate positive staining ";
      pre_analysis_mutations = "strongly positive for CK7, p16\n p53 mutatiion type\n HPV ISH -ve\n -ve Er, R, PAX8, PAX2, SATb2, WT1";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01440";
  }
