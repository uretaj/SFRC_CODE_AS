with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "j6/f0/SHA256E-s50616211836--85a3b489c1380432e3e5fbca81b2fe9a9e3a4f6e02ed67d9933d8126155bb99a.gz/SHA256E-s50616211836--85a3b489c1380432e3e5fbca81b2fe9a9e3a4f6e02ed67d9933d8126155bb99a.gz";
      r2 = "Z1/FJ/SHA256E-s55563179938--afcf5b8d697cc70f35a51df655deeca2f6f9b4a360fb9edbd0d53aaee084e9e5.gz/SHA256E-s55563179938--afcf5b8d697cc70f35a51df655deeca2f6f9b4a360fb9edbd0d53aaee084e9e5.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "7f/qz/SHA256E-s95400845698--177e23fb99717550a555fe4343418cefcfc0a659587073577fec2c35726f0dec.gz/SHA256E-s95400845698--177e23fb99717550a555fe4343418cefcfc0a659587073577fec2c35726f0dec.gz";
      r2 = "JK/Xz/SHA256E-s104419747077--22880f139c07097384c57fd46aae07da50217d233a32a1fcf5990879196e5f1f.gz/SHA256E-s104419747077--22880f139c07097384c57fd46aae07da50217d233a32a1fcf5990879196e5f1f.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "fZ/vF/SHA256E-s5990872360--0601822d3d3848d8a1568d4eb9677be65c3f15ad966bc61066db10574381bf4a.gz/SHA256E-s5990872360--0601822d3d3848d8a1568d4eb9677be65c3f15ad966bc61066db10574381bf4a.gz";
      r2 = "fk/60/SHA256E-s6098160917--ea9fc67c052202ea885b5ab1279e87888dc0e0318240c6a00e9d57f9fb06305a.gz/SHA256E-s6098160917--ea9fc67c052202ea885b5ab1279e87888dc0e0318240c6a00e9d57f9fb06305a.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "uLMS";
      meeting_discussions_follow_up = "RC Meeting 08.07.2021\nDiscussed WGS again, with RNA data. \nSFRC01382 has lower expression of p16 and p14ARF than most other SFRC cases. Is this enough to be treated with palbociclib, which works best for homozygous deletion of CDKN2A? Holly mentioned other CDKN2A deleted cases that did not respond well to palbo. \nClare to email about this to Isabelle or Martee Hensley.\n\n\nRC Meeting 27.05.2021\nWGS discussion.\nMatt: HR Detect is not trained on this tumour type, and tumour type is known to impact its results.  \nDespite the lack of an obvious driver this tumour deserves serious consideration as being HRD. A non typical driver would also diminish the HRDetect signal. CHORD is less impacted by these factors due to its larger and more varied training cohort. \nAdaption in HRD pathway supports HRD but may complicate therapy. This is not a clear resistance mutation. Potent parpi combo would be good if available. \nBRCA1& RAD51C expression and methylation? \nConfirm absence of HPV E6/E7 as this scaring pattern is also consistent with HPV induced HRD. \n \nPathology is mixed - may need a formal pathology review (in a clinical setting), in light of this WGS. \nOur analysis: HR Proficient \nGermline ATM, PTEN, SCG5 - are on FCC list, but no matching clinvar, need to be checked \nSomatic CDKN2A (same as Grimmond WGS) \nDominant Sig 3 - 23 \nNo focal amplifications \nThis is HR Proficient.\n\n2021.03.15\nS1 tissue review - 90% tumour. Submit for WGS";
      date_of_death = "7/2021";
      d_case_summary = "69 year old female with initial pathology of high grade endometrial stromal sarcoma. Final pathology isn't done yet, and pathologist has said it will be a hard pathology. \nOrla has said it is very unusual looking tumour. The patient had a large fast growing tumour on her clitoris and large uterine tumour. WGS 5/2021: Low TMB, HRD: Sig 3, CHORD 70%, HRDetect. No HR mutation. TERT promoter detected. CDKN2A MT and rearrangement.";
      tumour_type = "uLMS";
      tumour_details = "High grade endometrial stromal sarcoma (initial pathology); suspected ovarian cystadenocarcinoma, but maybe uterine?  New pathology reports this is uLMS";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "30JAN2023: March 2021 block RECEIVED from RWH by Briony\n\n07/11/2022: March 2021 block requested from RWH pathology by Devindee for uLMS project.";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01382";
  }
