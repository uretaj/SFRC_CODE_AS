with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "F1/z7/SHA256E-s13743104657--d8b214ba78523a5873cf7bb1ea9eaaeea51307f382dbcc731a6aa55c7b659e15.gz/SHA256E-s13743104657--d8b214ba78523a5873cf7bb1ea9eaaeea51307f382dbcc731a6aa55c7b659e15.gz";
      r2 = "kM/3z/SHA256E-s15518372835--0e649dfd695d67a921b867f9375de56b529c3eaa090ae32dde7c9f71a49fd86f.gz/SHA256E-s15518372835--0e649dfd695d67a921b867f9375de56b529c3eaa090ae32dde7c9f71a49fd86f.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "gF/17/SHA256E-s26999710348--67e9865ae158df42347b2b02feed74ea22d420a3dd3f98c713ef5cc70915e191.gz/SHA256E-s26999710348--67e9865ae158df42347b2b02feed74ea22d420a3dd3f98c713ef5cc70915e191.gz";
      r2 = "5z/jM/SHA256E-s28963539472--d7ad1f66335a0ea63527a61818d7a8554b8f96d6cc83ac1ffe9f3dccbf2e1917.gz/SHA256E-s28963539472--d7ad1f66335a0ea63527a61818d7a8554b8f96d6cc83ac1ffe9f3dccbf2e1917.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "WF/6m/SHA256E-s92128459929--311e4173660b1cfd4bf821edfa0ee0b58e5dfc94edb116a9cc9456c81677453c.gz/SHA256E-s92128459929--311e4173660b1cfd4bf821edfa0ee0b58e5dfc94edb116a9cc9456c81677453c.gz";
      r2 = "JK/82/SHA256E-s98716366887--ed63b0d838436a0180fd992f14edc306db8c30a2222baf5e2999abc771630d5f.gz/SHA256E-s98716366887--ed63b0d838436a0180fd992f14edc306db8c30a2222baf5e2999abc771630d5f.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "Jz/46/SHA256E-s8571970319--11eeffd9e21c00fb9dad3db6ffbba413ea4b37c7f8b9dccbf7805490e3247627.gz/SHA256E-s8571970319--11eeffd9e21c00fb9dad3db6ffbba413ea4b37c7f8b9dccbf7805490e3247627.gz";
      r2 = "PF/64/SHA256E-s8374275730--b40200a8a19859ac7bc365c3061833f09b7bdcbae03c92723d06d763d4f9d964.gz/SHA256E-s8374275730--b40200a8a19859ac7bc365c3061833f09b7bdcbae03c92723d06d763d4f9d964.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "LGSOC";
      meeting_discussions_follow_up = "RC Meeting 31.03.2022\nDiscussed WGS report.\nLow purity sample, and failed QC. \ngBRCA2 pathogenic variant confirm. Retained WT allele \nNo mutation signature/HR Chord/HRDetect - proficient \nChr8q gain -> MYC amplification (19 copies) \nTRIALS:\nPARPi - not indicated as BRCA2 WT allele not lost. \nPOLi (for the MYC amp).\n\nDiscussion: \n\nJocelyn: Copy Number modelling gave error message. Reported purity as 25% but somatic HF values indicate true purity probably approx 40% \n\nNo need for methylation analysis \n\nSample meeting catch up 06.12.2021\nS1: WGS, both micro dissect DNA and RNA";
      date_of_death = "05/2023";
      d_case_summary = "Recurrent LGSOC on background BRCA2 mutation carrier\nInitial diagnosed 18/01/2002, recurrence 6/6/2018\nTreatment: 18/01/2002: TLH BS RO @ other hospital,  06/06/2018: Laparoscopic excision of left ovary, washing, 2021: recurrence - low grade serous ovarian cancer - Optimal debulking (RWH) - Adjuvant";
      date_consented = "2021-11-23";
      tumour_type = "LGSOC";
      tumour_details = "LGSOC";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01485";
  }
