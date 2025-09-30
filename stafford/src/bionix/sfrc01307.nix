with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        samtools.sort = def samtools.sort {walltime = "48:00:00";};
        minimap2.align = def minimap2.align {walltime = "48:00:00";};
      })
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "gk/ZF/SHA256E-s67701923630--3307af7d7ee2c9626d268d949bfb17f7b4cca9cf9ab76310d6d627dede4c68c3.gz/SHA256E-s67701923630--3307af7d7ee2c9626d268d949bfb17f7b4cca9cf9ab76310d6d627dede4c68c3.gz";
      r2 = "0g/6W/SHA256E-s74041134106--3cd1c3a1079af216d6050bab87b3cd340e608559fa6ddb4b67ef87f4d7759361.gz/SHA256E-s74041134106--3cd1c3a1079af216d6050bab87b3cd340e608559fa6ddb4b67ef87f4d7759361.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "qk/F9/SHA256E-s139588527070--a16261a71d7e2dd2d74cc204e07488aba35791ae65833f49e1c9024a349e8c31.gz/SHA256E-s139588527070--a16261a71d7e2dd2d74cc204e07488aba35791ae65833f49e1c9024a349e8c31.gz";
      r2 = "MX/V7/SHA256E-s153601525560--2ef4ef7a67cbef9777635be750a0b0da7654db0c16a967e3d18a50eb1f04ef23.gz/SHA256E-s153601525560--2ef4ef7a67cbef9777635be750a0b0da7654db0c16a967e3d18a50eb1f04ef23.gz";
    }
    {
      site = "S2";
      class = "rna";
      pdx = false;
      r1 = "1x/KW/SHA256E-s5102137976--711a04e09a44e89844942004c64f925e2ef39b9ecdf849f771259c932ca01a60.gz/SHA256E-s5102137976--711a04e09a44e89844942004c64f925e2ef39b9ecdf849f771259c932ca01a60.gz";
      r2 = "Qf/p4/SHA256E-s5213931908--252f4074060b4c94976ae72fa798bec96f0794fdee64a68979dd75ebc9949fc6.gz/SHA256E-s5213931908--252f4074060b4c94976ae72fa798bec96f0794fdee64a68979dd75ebc9949fc6.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "HGSOC";
      meeting_discussions_follow_up = "RC Meeting 04.02.2021\nDiscussed WGS report. Heterogeneous meRAD51C confirmed by Kas.\nDiscussion: She will get single agent PARPi \nClinical notes - 45yo, initially thought to be clear cell \n\nMeeting notes 08.10.2020\nSubmit S2 SF tissue to Sean for WGS (Sean's unmet need funding).\nPDX is growing fast (T1 came up in 3 months, on the faster side for HGSOC) and needs to be validated.\n\nMeeting notes 13.08.2020\nS1 was sent for BROCA - should follow this case up with Marc in a couple of months.\nHad whole panel for BRCA germline and was WT for everything.\n\nMeeting with Clare 02.07.2020\nGayanie reviewed S1 (ovary) and S2 (omentum). \nPlan: Sounds BRCA-like given bilateral occurrences. Quite young as well.  Macrodissect S1 and extract DNA. Send for BROCA but keep some for WGS if needed. Re-visit this case in 1 month so see what is happening clinically (will help us decided whether or not to do WGS).  ";
      myriad_report = "SFRC01307_MyriadResult_08Dec2022_Redacted.pdf";
      d_case_summary = "Metastatic HGSOC (right ovary) and High Grade Serous Tubal Intraepithelial Carcinoma (left Fallopian tube).";
      date_consented = "2020-06-09";
      tumour_type = "HGSOC";
      tumour_details = "Metastatic HGSOC (right ovary) and High Grade Serous Tubal Intraepithelial Carcinoma (left Fallopian tube).";
      case_details = "01July23 - Clare asked if another biopsy is possible, patient is not feeling up to it at the moment, may be able to get extra bloods but. Will let us know if a biopsy is possible in future. ";
      myriad_submission = "Yes";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "Myriad HRD Positive (BRCA neg) score 57";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "Laparotomy + primary debulking surgery including hysterectomy, Stage 3C R ovarian HGSOC\n\nPelvic US showing R ovarian mass with papillary projections + vascularity";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01307";
    disableManta = true;
    disableGridss = true;
  }
