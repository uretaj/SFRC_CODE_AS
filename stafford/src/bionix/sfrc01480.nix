with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A6";
      class = "tumours";
      pdx = false;
      r1 = "q1/Gv/SHA256E-s22764001213--4c9566bd675eed7de9ea6ff10c863eb8c0e77a7ca2fcf78e6f2581ccc5cc89cb.gz/SHA256E-s22764001213--4c9566bd675eed7de9ea6ff10c863eb8c0e77a7ca2fcf78e6f2581ccc5cc89cb.gz";
      r2 = "MQ/f9/SHA256E-s25627414819--7dd9aba1ab73d5de23f1af186fdbfbc54f6accd883a53cbcbe56df1be412ac54.gz/SHA256E-s25627414819--7dd9aba1ab73d5de23f1af186fdbfbc54f6accd883a53cbcbe56df1be412ac54.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "8j/Jp/SHA256E-s5459033451--fdce6712756acc588ba9a10d5ec36b4c4a0873cf15009c02683a6b01b720447a.gz/SHA256E-s5459033451--fdce6712756acc588ba9a10d5ec36b4c4a0873cf15009c02683a6b01b720447a.gz";
      r2 = "fG/fF/SHA256E-s5598850036--8ed6bcef2036dece7f634aff42f3dc1f1e3927c0df16db6b69e2b93e2907f9ea.gz/SHA256E-s5598850036--8ed6bcef2036dece7f634aff42f3dc1f1e3927c0df16db6b69e2b93e2907f9ea.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      sophia_report = "SFRC01480_SOPHiAReport_16May2024_Redacted.pdf";
      meeting_discussions_follow_up = "BROCA meeting 18.02.2022\nBROCA on block A6\n\nMeeting discussion 16.12.2021\nBlock A6: WES, macrodissect, Briony to organise blood";
      myriad_report = "SFRC01480_MyriadResult_6Dec21_Redacted.pdf";
      d_case_summary = "HGSOC, germline BRIP1 mutation";
      date_consented = "2021-10-26";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC";
      case_details = "2021-04: Diagnosed FIGO stage 4a HGSC based on positive pleural cytology, bilateral pelvic masses.\n\n2021-05: Treatment: carboplatin and paclitaxel \n\n2021-06: Treatment: Debulking surgery: TAH/BSO. Histopath conducted, no IHC: right ovary and right fallopian tube fixed and blocked (block A6)\n-BRCA1/2 test: No pathogenic variants detected.\n-FCC test: BRIP1 likely pathogenic variant\n\n2021-07 - 2021-09: carboplatin and paclitaxel. Continued Bevacizumab maintenance.\n\n2021-11: Block A6 received\n\n2022-03: Blood B1 received. Submitted for WES\n";
      brca_report = "SFRC01480_BRCAPanel_04Oct2021_Redacted.pdf";
      myriad_submission = "Yes";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "SOPHiA HRD positive (5.1)";
      fcc_report = "SFRC01480_FCCPanel_30Jul2021_Redacted.pdf";
      portal_letter = "SFRC01480_ARCPortal_05Nov2021_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "2021 block received from St George Hospital by Warren 26/11/21";
      patient_germline_mutations = "BRIP1";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01480";
  }
