with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1K";
      class = "tumours";
      pdx = false;
      r1 = "Gm/mp/SHA256E-s13616444651--4e8931337376a740a02f3611612682844c30c46967ce10b95cb3f4cab33df734.gz/SHA256E-s13616444651--4e8931337376a740a02f3611612682844c30c46967ce10b95cb3f4cab33df734.gz";
      r2 = "zQ/k1/SHA256E-s13948899114--5a8e0cf6eafb08532e4a2f35d514137ebae8ff1a6d5e39360accf47e6dd07409.gz/SHA256E-s13948899114--5a8e0cf6eafb08532e4a2f35d514137ebae8ff1a6d5e39360accf47e6dd07409.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "KQ/Gq/SHA256E-s6378341996--98a887d42fc4c57ce7e8faf99523c338948d050bfa463db207d81824f647d871.gz/SHA256E-s6378341996--98a887d42fc4c57ce7e8faf99523c338948d050bfa463db207d81824f647d871.gz";
      r2 = "vF/x0/SHA256E-s6709011067--3cd86f9039c89aafc3ce3aca259363bdff289f946faadd059ee0f8e621f65a3f.gz/SHA256E-s6709011067--3cd86f9039c89aafc3ce3aca259363bdff289f946faadd059ee0f8e621f65a3f.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Meeting with Clare 16.12.2021\nBlock 1K: organise BROCA and WES \n\nBROCA meeting with Clare 04.11.2021\nRecall a block and then organise BROCA";
      d_case_summary = "female diagnosed on 9 Jan 2021 with Stage 1a HGSEC.";
      tumour_type = "HGSEC";
      tumour_details = "Stage 1a HGSEC";
      case_details = "72 years old \n\n2021-01:\t Diagnosis, hysterectomy (block 1K received, 80% within circle) \nTP53 mutated \nHER2: 3+ \nPMS2/MLH1, MSH6/ MSH2 positive in tumour cell \n\nmismatch repair proficient and HER 2/3+ but no FISH has been done \n\nReferred to FCC and SFRCP \n\n2021-04: Blood B1 received ";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "Slides received by Warren 26/11/21 from Melbourne Pathology";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01391";
  }
