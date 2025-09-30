with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "X1/z1/SHA256E-s44661585184--0a329d442140469ebde7f3998e961a59f0d9540b8b38a760849b07d0bd0d3db5.gz/SHA256E-s44661585184--0a329d442140469ebde7f3998e961a59f0d9540b8b38a760849b07d0bd0d3db5.gz";
      r2 = "wg/5Z/SHA256E-s48308426114--a7ad9f86d5b1c41f613a50f1feb124662712a5c914396384ff0c2c6efd96de29.gz/SHA256E-s48308426114--a7ad9f86d5b1c41f613a50f1feb124662712a5c914396384ff0c2c6efd96de29.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "JP/zV/SHA256E-s90398470139--2af0644f33f7d6cdda612b55e83c0c1853fbfc77e4307396b6657eafce85dee0.gz/SHA256E-s90398470139--2af0644f33f7d6cdda612b55e83c0c1853fbfc77e4307396b6657eafce85dee0.gz";
      r2 = "FZ/5Q/SHA256E-s95457072932--252ded27025b4a4ffdb1010de3ce693acc4af3780b06d62e32f7fc785755ea27.gz/SHA256E-s95457072932--252ded27025b4a4ffdb1010de3ce693acc4af3780b06d62e32f7fc785755ea27.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "FM/vM/SHA256E-s7314407080--cf240528ef2182c378def1e29a49e2169e8208d7e4354da4671b3de7b092da64.gz/SHA256E-s7314407080--cf240528ef2182c378def1e29a49e2169e8208d7e4354da4671b3de7b092da64.gz";
      r2 = "PX/wz/SHA256E-s7256386340--c49d6ab195ef0a625b9acf4688f836e22ecfd57601368a4d1d651de5fd64a528.gz/SHA256E-s7256386340--c49d6ab195ef0a625b9acf4688f836e22ecfd57601368a4d1d651de5fd64a528.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "OCS";
      meeting_discussions_follow_up = "Clare, Ratana, Rae 18.05.2023\nBROCA for Fresh tissue S1\n\nRC Meeting 28.04.2022\nDiscussed WGS report (Grimmond only).\nDiscussion: email the report to Matt for further advice re the role of Signature 3 and HRD? CDK12 is loosely linked to HRD. \nRecommended trial options.\n\n18.03.2022\nHad OCT sections urgently reviewed by Gayanie (no scanner). Extract DNA and RNA and send for WGS, urgent (before Easter).\n\nNote from calendar invite 07.03.2022\nFor WGS";
      date_of_death = "1/2023";
      d_case_summary = "stage IIB ovarian carcinosarcoma\nImmunocytochemistry findings:\nThe high grade adenocarcinoma element of the carcinosarcoma shows areas of strong diffuse positive nuclear staining (mutation type) for p53 in both the fallopian tube and surface endometrial focus. \nHormone receptors: ER 2  nuclear staining in 60% of the carcinomatous element. PR 2 3  nuclear staining in 5% of the carcinomatous element.\nDNA mismatch repair protein immunohistochemistry screen performed on block 4N and shows presence of tumour nuclear staining in PMS2, MLHl, MSH2, MSH6.";
      date_consented = "2022-03-02";
      tumour_type = "Ovarian Carcinosarcoma";
      tumour_details = "Ovarian Carcinosarcoma";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "Hopeful to get fresh frozen from Trisha, waiting for her to return from leave 07Mar to check. BM\n";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01534";
  }
