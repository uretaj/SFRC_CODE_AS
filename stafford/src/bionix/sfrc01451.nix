with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "2g/Qf/SHA256E-s43250335658--8b60ebfe993909953b8bd5d7fc6ba436ec6bee462d81292a5238f8cca6b97708.gz/SHA256E-s43250335658--8b60ebfe993909953b8bd5d7fc6ba436ec6bee462d81292a5238f8cca6b97708.gz";
      r2 = "8z/Fk/SHA256E-s45707119129--37a9400195bdf43e3c16b4c4b5a886eea3c01c8edce53e5ae0ff6d38c2b9aa06.gz/SHA256E-s45707119129--37a9400195bdf43e3c16b4c4b5a886eea3c01c8edce53e5ae0ff6d38c2b9aa06.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "x1/mJ/SHA256E-s82729315306--be4d8178c313383a0d989ced973ea8b371f8189aaff9b6edcbd694b85b2d1658.gz/SHA256E-s82729315306--be4d8178c313383a0d989ced973ea8b371f8189aaff9b6edcbd694b85b2d1658.gz";
      r2 = "KP/P7/SHA256E-s88787407554--dc757c71b63b3ca41b6a9e923c9d30e75a1e22bb4fefb372470dafb60fe2699f.gz/SHA256E-s88787407554--dc757c71b63b3ca41b6a9e923c9d30e75a1e22bb4fefb372470dafb60fe2699f.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "CA0157";
      genomes100_tumour_types = "clear cell";
      meeting_discussions_follow_up = "Clare's meeting 2023.05.18\nPlan for sample from the warm autopsy:\n8 Different sites \n\nKelly Bolton - subclonal haematopoesis - might be interested. She published Ovarian Cancer paper \n\nThe Cascade blocks are coming. Will get Gayanie to review those as well. \n\nWe do not have funding to do more sequencing on all of these samples. \n\n \n\nBROCA meeting Clare/Amandine/Rachael\n07.04.2022\nSend S1 for BROCA\n\nRC Meeting 2021.10.28\nDiscussed WGS report (Grimmond only).\nDamien's notes from Variant meeting: Low purity - 22% (below QC cut-off 30%).\nPIK3CA Q546K (less common hot spot) \nARID1A fs MT + LOH - ??PARPi, ATRX, BET i \n- tested in preclinical studies in ovarian? \nAmplification of ZNF217 \nAll findings consistent with CCOV \n\nTrials: \nFirst choice is at Monash: CYH33 (PIK3CA inhibitor + Olaparib) \nPamiparib + tislelizumab (IMPARP HRD - still a few months away) \nHDAC inhibitors - ZNF217. But might depend on tumour type? \n\nQuestion to all: do you want RNAseq data? YES.  \n\nIf we can get a Clear Cell cohort, can do more RNAs. Revisit this group. \n\nMeeting with Clare 2021.09.10\nExtract DNA and RNA on S1 and send for WGS. Warn Sean about low purity, but she is young. \nhttps://www.ncbi.nlm.nih.gov/pmc/articles/PMC5564530/\nIf WGS unsuccessful send for WES\n\nRC Meeting 02.09.2021, plus emails\nSample review by Gayanie next week. Discuss what to do then, would be urgent WGS.";
      date_of_death = "3/2023";
      d_case_summary = "High grade clear cell carcinoma of left ovary. Size 50mm in aggregate. Surface spread present. LVSI negative. ER/PR negative. Napsin A: patchy strong positive. Pax8 strongly positive. Normal MSI. \nLeft ovary also contains an endometriotic cyst with occasional deposits of clear cell carcinoma are present on the cyst wall.\nRight ovary: deposits of clear cell carcinoma with background endometriosis. \nOmentum and Pouch of Douglas biopsies: metastatic clear cell carcinoma. Washing positive. \nBoth fallopian tubes, endometrium and cervix: unremarkable. Other finding: multiple leiomyomas.";
      date_consented = "2021-08-27";
      tumour_type = "Clear cell ovary";
      tumour_details = "High grade clear cell carcinoma of left ovary";
      case_details = "34 years old  female  \n\n2021-08:\tInitial diagnosis, TAHBSO. (fresh tissue S1 and blood B1 received) \nIHC positive:  Napsin A: patchy strong positive, Pax8 strongly positive.    \nER/PR negative \n\n9/9/2021 -23/12/2021: Taxol 50% C4-6, cARBOplatin AUC 6 / PACLitaxel\n\n2021-10 : \tWGS in house  \n-low purity DNA 22% \n - Activating mutation of potential clinical significance detected in PIK3CA.  \n- Inactivating mutation of uncertain clinical significance and copy number neutral loss of heterozygosity ARID1A detected.  \n- A PI3K inhibitor in combination with PARP inhibitor trial is ongoing in Victoria (trial ID: NCT04586335).  \n- A PARP inhibitor in combination with immune checkpoint inhibitor is to commence at the Peter MacCallum Cancer Centre (trial ID: NCT04985721).  \n- Amplification of the recurrent chr20q13 amplicon encompassing ZNF217 (25 copies) detected. \n\n2022-05: recurrence, MRI\n\n2022-06: Clinical trial AK112\n\n2022-12: pleural tap,  \nConsent to MoST CIRCUIT trial (doublet\n(Ipilimumab / Nivolumab) immunotherapy) \n\n2023-01:\tBROCA \nSomatic PIK3CA - substitution, c.1636C>A, p.Q546K, 30.1% \nSomatic ARID1A - deletion-insertion, c.666dupC, p.Y222fs, 16.0% \n\n2023-03: warm autopsy, cascade tissues received ";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01451";
  }
