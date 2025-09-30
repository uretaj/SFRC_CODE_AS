with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1D";
      class = "tumours";
      pdx = false;
      r1 = "KJ/7G/SHA256E-s1784372614--fe37fcb7181902aef122cf7d6ee2256152d60c07d21137997040a70b872dafd0.gz/SHA256E-s1784372614--fe37fcb7181902aef122cf7d6ee2256152d60c07d21137997040a70b872dafd0.gz";
      r2 = "1f/G8/SHA256E-s1761807722--bd87cef11eb2401160df30a6884df1a0e08aa3991ba4608b14900220239db011.gz/SHA256E-s1761807722--bd87cef11eb2401160df30a6884df1a0e08aa3991ba4608b14900220239db011.gz";
    }
    {
      site = "1D";
      class = "tumours";
      pdx = false;
      r1 = "jG/Mv/SHA256E-s1783669717--10feb2b395293c317a45e6f9c93323b46ba15909cb1ed41fb184ea0a6f9eca6a.gz/SHA256E-s1783669717--10feb2b395293c317a45e6f9c93323b46ba15909cb1ed41fb184ea0a6f9eca6a.gz";
      r2 = "3j/2P/SHA256E-s1770685469--a30aa64ffb0ca2c277e4667f70c43e5f9aa0626538c260499dc87ef5aae94b56.gz/SHA256E-s1770685469--a30aa64ffb0ca2c277e4667f70c43e5f9aa0626538c260499dc87ef5aae94b56.gz";
    }
    {
      site = "1D";
      class = "tumours";
      pdx = false;
      r1 = "xg/Xm/SHA256E-s1780241428--4e2f1130062c69b61ce6a3750c349d78160623d838c4f0c5c70c36640edc1588.gz/SHA256E-s1780241428--4e2f1130062c69b61ce6a3750c349d78160623d838c4f0c5c70c36640edc1588.gz";
      r2 = "6z/Jx/SHA256E-s1763114106--d03e522b0942c1840811d150da3ae71aa5a7aa425eb36f53695d1decbe0f6ed9.gz/SHA256E-s1763114106--d03e522b0942c1840811d150da3ae71aa5a7aa425eb36f53695d1decbe0f6ed9.gz";
    }
    {
      site = "1D";
      class = "tumours";
      pdx = false;
      r1 = "gq/p7/SHA256E-s1787392475--c2121c15d124965ec3d698452ad8c810d13a58e4f5cfb372881a42a2182d90b6.gz/SHA256E-s1787392475--c2121c15d124965ec3d698452ad8c810d13a58e4f5cfb372881a42a2182d90b6.gz";
      r2 = "J6/vK/SHA256E-s1779095716--8002554db69e00618230a790746b8ccd257a46a063e007190e8a1711e56c58e4.gz/SHA256E-s1779095716--8002554db69e00618230a790746b8ccd257a46a063e007190e8a1711e56c58e4.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Qz/vQ/SHA256E-s731820757--e86799036102979008b5cc1d8ecab11219efd0b6eea0a50e8957ef3ff02b56b7.gz/SHA256E-s731820757--e86799036102979008b5cc1d8ecab11219efd0b6eea0a50e8957ef3ff02b56b7.gz";
      r2 = "7M/5k/SHA256E-s727860784--9eb0f3d89f74a5fc769d9c61de8df71376c01fe79a0895ec6db0d91df8a6ec33.gz/SHA256E-s727860784--9eb0f3d89f74a5fc769d9c61de8df71376c01fe79a0895ec6db0d91df8a6ec33.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "43/fw/SHA256E-s736154442--fc0a326ecfb3ef90d67063f1e84a0f43cb36169dd000eea332917ab927817a5d.gz/SHA256E-s736154442--fc0a326ecfb3ef90d67063f1e84a0f43cb36169dd000eea332917ab927817a5d.gz";
      r2 = "PJ/zF/SHA256E-s736754198--fe438326327111dde4b259a423ffef683583f9aa6d697733539d3a5e5ed94ff7.gz/SHA256E-s736754198--fe438326327111dde4b259a423ffef683583f9aa6d697733539d3a5e5ed94ff7.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "3P/6w/SHA256E-s730325923--79713a4cd3df0b42d9d8cb45fa699a1b6f503eeb46d7202d970a8bfe2b2c0bb9.gz/SHA256E-s730325923--79713a4cd3df0b42d9d8cb45fa699a1b6f503eeb46d7202d970a8bfe2b2c0bb9.gz";
      r2 = "Q8/0k/SHA256E-s728918376--5406963a49dc81937d2fea2852ad810b7fd0d00b70b70f1ab1e57daffac01c9a.gz/SHA256E-s728918376--5406963a49dc81937d2fea2852ad810b7fd0d00b70b70f1ab1e57daffac01c9a.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "2w/Mw/SHA256E-s765124911--e8a9aca2a3ad1a93966b9f200825d35826e7aecad9b7b67302142bb9041d6105.gz/SHA256E-s765124911--e8a9aca2a3ad1a93966b9f200825d35826e7aecad9b7b67302142bb9041d6105.gz";
      r2 = "Qw/7k/SHA256E-s768613493--5d7270b6334978996ef397d109f79dc2704d4d2587a747c92a923fac43b42277.gz/SHA256E-s768613493--5d7270b6334978996ef397d109f79dc2704d4d2587a747c92a923fac43b42277.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 1.2.2024 - TWIST WES Block 1D\nIMPARP might be possible - accepts ATRX and also signature 3 (MYRIAD equivalent) \n\nClare's sample meeting 2023.10.05\nPlan on FFPE block 1D: WES Twist with HRD, urgent \n13 year TFI, new recurrence. ";
      blood_recall_history = "15Aug2023 - Currently in C6 of immuno. Multiple upcoming appts at PMCC. LR\n11Sep2023 Has appt at peter mac tomorrow, trying to organise to have bloods done at the same time now.\n11-Sep-2023 Bloods booked for tomorrow LR";
      urgency_details = "??";
      d_case_summary = "uLMS, ER/PR neg, but 13yr DFI.";
      date_consented = "2023-02-06";
      tumour_type = "uLMS";
      tumour_details = "uLMS";
      brca_report = "SFRC01713_BRCA_Test_21Nov2022_Redacted.pdf";
      patient_information_complete = "Incomplete";
      case_urgent = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "24Aug23: Nov22 sample requested from Melbourne Pathology by Monica\n05Sep23:  Nov22 sample received from Melbourne Pathology by Monica";
    };
    inherit samples;
    name = "SFRC01713";
    capture = TwistV2HR;
  }
