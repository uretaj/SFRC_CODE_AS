with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "9f/XM/SHA256E-s16272460345--6b31d4a04eecf01b1566bae2cac86e8f6fe0bb9d9926b00d16e90208a6295aed.gz/SHA256E-s16272460345--6b31d4a04eecf01b1566bae2cac86e8f6fe0bb9d9926b00d16e90208a6295aed.gz";
      r2 = "Vf/gx/SHA256E-s17728630899--19f2fb4fcffbe28d5611d24592f8e274a0fa330f8f8a751f90955d9012c7eaf1.gz/SHA256E-s17728630899--19f2fb4fcffbe28d5611d24592f8e274a0fa330f8f8a751f90955d9012c7eaf1.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Fx/P1/SHA256E-s25323595707--8dbee77808525a759248fa0d0c81bb54af15c113e53bdf3546361e03f7201624.gz/SHA256E-s25323595707--8dbee77808525a759248fa0d0c81bb54af15c113e53bdf3546361e03f7201624.gz";
      r2 = "v3/gW/SHA256E-s27335369101--8474c87fe2858f1ffaf5c10e2069325782b49f804bd887a0f689a91017178d7f.gz/SHA256E-s27335369101--8474c87fe2858f1ffaf5c10e2069325782b49f804bd887a0f689a91017178d7f.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "zv/Wx/SHA256E-s30106452126--635a388b4fe43cc241353c0f8de49187a24b9c0757998ee114dc54129f5ebf67.gz/SHA256E-s30106452126--635a388b4fe43cc241353c0f8de49187a24b9c0757998ee114dc54129f5ebf67.gz";
      r2 = "6v/Fp/SHA256E-s32590409642--8613284047fc5c70bc25ca79a2486837076c190ab7bab1bc86132c2c9d0c5a45.gz/SHA256E-s32590409642--8613284047fc5c70bc25ca79a2486837076c190ab7bab1bc86132c2c9d0c5a45.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "XP/5j/SHA256E-s47804583191--2563fe6c92f9d9c331a2cc11c66601ac6d21e0c9b1b0009e34c5d1c9382623e6.gz/SHA256E-s47804583191--2563fe6c92f9d9c331a2cc11c66601ac6d21e0c9b1b0009e34c5d1c9382623e6.gz";
      r2 = "wm/6j/SHA256E-s51351086971--e4dd85c3810b3e9ab23c57ae06ffa034a3c01a94dd1aab049b36e3beb17bf887.gz/SHA256E-s51351086971--e4dd85c3810b3e9ab23c57ae06ffa034a3c01a94dd1aab049b36e3beb17bf887.gz";
    }
    {
      site = "S1_T3";
      class = "tumours";
      pdx = true;
      r1 = "4q/5f/SHA256E-s71696467122--aa61b9e0d81870825a3ac7ca06c8854edf3e545b1495fca1adb039b67be851c4.gz/SHA256E-s71696467122--aa61b9e0d81870825a3ac7ca06c8854edf3e545b1495fca1adb039b67be851c4.gz";
      r2 = "wg/xw/SHA256E-s75506149862--9c5feb694443ade760f96925f4db13cf7ede656103362baecde39b36fe4c9274.gz/SHA256E-s75506149862--9c5feb694443ade760f96925f4db13cf7ede656103362baecde39b36fe4c9274.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "K7/p0/SHA256E-s4105172840--57b93a299b958b7d05be02983f3784133bcc1514fb22b5ea91c56b337713d7e1.gz/SHA256E-s4105172840--57b93a299b958b7d05be02983f3784133bcc1514fb22b5ea91c56b337713d7e1.gz";
      r2 = "Pp/v9/SHA256E-s4228134853--98adb8a0ef3939857e38ce2621a70bc689f391f9a8d5a0432a5823f61d0d951b.gz/SHA256E-s4228134853--98adb8a0ef3939857e38ce2621a70bc689f391f9a8d5a0432a5823f61d0d951b.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "uLMS";
      meeting_discussions_follow_up = "RC Meeting 18.03.2021\nDiscussed WGS report from PDX sample. PDX, new WGS report: S1 is poor quality. PDX sample looks HRD.\nThe LoH signature in the copy number data of the PDX was probably why the Signature 3 was detected. \n\nMeeting notes 2.4.20:\nUnder 1000 mutations giving rise to signature 3 - however, was approved anyway and compassionate access was provided (Olaparib) \nFirst PDX tumour just recently harvested - needs IHC analysis  \nNeed to do combination therapy in PDX based on PIK3CA mutation \nApelisib is a drug that can get in the clinic - Jim Whittle has in BCL so we could try on organoids from PDX tumour \nLook into ordering for in vivo, also update ethics for potential treatments (Holly to teach Ratana) \n\nMeeting notes 2019.11.21\nsend for WGS and then ask for clinical review in the MDM ";
      date_of_death = "12/2021";
      d_case_summary = "uLMS- Sarcoma, differential diagnosis undifferentiated uterine sarcoma and leiomyosarcoma";
      date_consented = "2019-10-02";
      tumour_type = "uLMS";
      tumour_details = "uLMS- Sarcoma, differential diagnosis undifferentiated uterine sarcoma and leiomyosarcoma";
      case_details = "Dx with uLMS from TAHBSO at RWH in 10/2019\n\nCompleted adjuvant pelvic radiotherapy at PMCC in Dec/2019\n\nRecurrent disease in  Feb 2020,  25cm complex mass with extensive peritoneal carcinomatosis\n\nApril 2020 had a good partial response to Gemcitabine/Docetaxel CTx. Completed CTx in 6/2020\n\nOngoing response in 7/2020, commence olaparib without toxicity";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01227";
  }
