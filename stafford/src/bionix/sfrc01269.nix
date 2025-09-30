with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "gP/pp/SHA256E-s1793745877--165402e39a8ceda181428de47a85ae6da5a98ae7b579ce9900176201c541b540.gz/SHA256E-s1793745877--165402e39a8ceda181428de47a85ae6da5a98ae7b579ce9900176201c541b540.gz";
      r2 = "fv/07/SHA256E-s1805760209--04c4700cb9bb154266b0a971a19e7070d8b8b61d1e75af3f6deddbe0a56c8a69.gz/SHA256E-s1805760209--04c4700cb9bb154266b0a971a19e7070d8b8b61d1e75af3f6deddbe0a56c8a69.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "gJ/Mz/SHA256E-s1806000611--a1a403ee4c76567e4e50837770ec3a1141b57a13edcab3cbca45e375b4a69e4e.gz/SHA256E-s1806000611--a1a403ee4c76567e4e50837770ec3a1141b57a13edcab3cbca45e375b4a69e4e.gz";
      r2 = "72/p3/SHA256E-s1831104786--c2a496be02b190a160c82e84ea80015fcdc7a787231cdc0c64baa8696caba08c.gz/SHA256E-s1831104786--c2a496be02b190a160c82e84ea80015fcdc7a787231cdc0c64baa8696caba08c.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "jG/q0/SHA256E-s1776526974--290812a62954ff79e86bbb0e3545fd64cf4dc0a13478122201265457f1a37804.gz/SHA256E-s1776526974--290812a62954ff79e86bbb0e3545fd64cf4dc0a13478122201265457f1a37804.gz";
      r2 = "5v/x7/SHA256E-s1796491750--7730b7d7f45ee04610ca75d67ca0fa8aba5231ef2ddc62415c25464e0d7a4b12.gz/SHA256E-s1796491750--7730b7d7f45ee04610ca75d67ca0fa8aba5231ef2ddc62415c25464e0d7a4b12.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "2f/4v/SHA256E-s1909627414--d9fc12bc787b5babcf903fc40587b94f45eba7fe9279993b74a8b3ddee1cf8fa.gz/SHA256E-s1909627414--d9fc12bc787b5babcf903fc40587b94f45eba7fe9279993b74a8b3ddee1cf8fa.gz";
      r2 = "q2/88/SHA256E-s1945015368--cdbd47bb4464c34b04bda769a05a9cbbcb59163d5562571d93fbf933baaf1337.gz/SHA256E-s1945015368--cdbd47bb4464c34b04bda769a05a9cbbcb59163d5562571d93fbf933baaf1337.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "P9/6X/SHA256E-s2047494551--f8be3f93b89d8877f9471857b14b65bf111955986f7816578a6686c7ba4c31e2.gz/SHA256E-s2047494551--f8be3f93b89d8877f9471857b14b65bf111955986f7816578a6686c7ba4c31e2.gz";
      r2 = "kq/Pw/SHA256E-s2073240717--a2ba9b9e6f511979c7d8b0b74396ac3eaa72423d1a5dbe9aeb269a37551214fa.gz/SHA256E-s2073240717--a2ba9b9e6f511979c7d8b0b74396ac3eaa72423d1a5dbe9aeb269a37551214fa.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "Qg/5G/SHA256E-s2069121408--c0233b118fafbb8950485985aef61d04e18ccac15d7f60a0cae513e95e530115.gz/SHA256E-s2069121408--c0233b118fafbb8950485985aef61d04e18ccac15d7f60a0cae513e95e530115.gz";
      r2 = "V6/5v/SHA256E-s2109223486--ba62469fe5eb82bd89cc730109edb5fa793c60f813164489e143b8fefa21ca1f.gz/SHA256E-s2109223486--ba62469fe5eb82bd89cc730109edb5fa793c60f813164489e143b8fefa21ca1f.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "f4/Mp/SHA256E-s2038872759--42e20f97e978d7b93ad38d1e2e6a904ec91fb698aad6c46a19e071e60fecad12.gz/SHA256E-s2038872759--42e20f97e978d7b93ad38d1e2e6a904ec91fb698aad6c46a19e071e60fecad12.gz";
      r2 = "3V/m8/SHA256E-s2073635127--0acfda6b7433f9389a4c375297555f60677a53dda812fd120be8c7289e0f86f1.gz/SHA256E-s2073635127--0acfda6b7433f9389a4c375297555f60677a53dda812fd120be8c7289e0f86f1.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "GZ/Xm/SHA256E-s2217868698--84ec70ef6c1bdfee3fbe2df28aa77a1b8db5caa5a6e868d0a2ddce93f6367d42.gz/SHA256E-s2217868698--84ec70ef6c1bdfee3fbe2df28aa77a1b8db5caa5a6e868d0a2ddce93f6367d42.gz";
      r2 = "27/0w/SHA256E-s2272752492--e1b47fea94d1eebdeb3ee981eda9ca246d9a0ef3748fae5f6bfd185109f01f60.gz/SHA256E-s2272752492--e1b47fea94d1eebdeb3ee981eda9ca246d9a0ef3748fae5f6bfd185109f01f60.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 15.02.2024\nNo changes in this new sample, compared to S1 (S1 add BROCA done). \n\nClare meeting 05.10.2023\nReviewed OCT from S2.\nPoor quality, to do WES (not WGS). \nExtract DNA from OCT.\nTreating clinician to be updated\n\nMeeting notes 2020.03.26\nTumour type and Project:  HGSOC and rare BROCA, rare molecular subtype \nPlan:  add to BROCA list, she has a BRCA1 mutation \n\nMeeting notes 2020.03.12\nReview clinical notes before planning ";
      myriad_report = "SFRC01269_MyriadResult_5Jan22_Redacted.pdf";
      d_case_summary = "HGSFT (originally entered as HGSOC)";
      tso500_external = "SFRC01269_TSO500_13Nov2023_Redacted.pdf";
      date_consented = "2020-01-30";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC";
      case_details = "TLHBSO 29/1/2020 Dx HGSOC Stage 2A, of R FT origin, involves blateral ovaries, STIC.\n\nPlan for chemo";
      brca_report = "SFRC01269_BRCA__04032020_Redacted.pdf";
      myriad_submission = "Yes";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "Myriad HRD Positive (BRCA1) score 62";
      receipt_eyebrow_hairs_complete = "Incomplete";
      patient_germline_mutations = "BRCA1, BRIP1";
    };
    inherit samples;
    name = "SFRC01269";
    capture = TwistV2HR;
  }
