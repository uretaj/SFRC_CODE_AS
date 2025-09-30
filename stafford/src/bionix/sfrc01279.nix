with import ./milton-slurm.nix {}; let
  samples = [
    {
      prefix = "fastqs/mcri-2020-08-05/200710_A00692_0117_ML205997_SFRC01279-B1_MAN-20200627_NEXTERAFLEXWGS_L001";
      suffix = "";
      site = "B1";
      class = "normals";
      sha256-1 = "b36d6cc52704cf7a3f19eded65d4c2d2a25894da6246ae04d552a8516a999961";
      sha256-2 = "eaccad25d8b044ddb65b1547579f34679f3b0ad8f8fc4aaf3f969e9790b6e6dc";
    }
    {
      prefix = "fastqs/mcri-2020-08-05/200710_A00692_0117_ML205997_SFRC01279-B1_MAN-20200627_NEXTERAFLEXWGS_L002";
      suffix = "";
      site = "B1";
      class = "normals";
      sha256-1 = "39a0aacc19fadd871b3b4f683466c941b842c389f5da8ad5ecaaf027b7775842";
      sha256-2 = "f7ed0a75ed81326a09f11e109252d25f794bbe9662cda9c4597bb8119becc174";
    }
    {
      prefix = "fastqs/mcri-2020-08-05/200710_A00692_0117_ML205998_SFRC01279S1-T1_MAN-20200627_NEXTERAFLEXWGS_L001";
      suffix = "";
      site = "S1_T1";
      pdx = true;
      class = "tumours";
      sha256-1 = "28b5c696b6ea9d484ffdeb221df1f9843fe2548132a3e3dc56506044563657af";
      sha256-2 = "607f424115ecf22978ea1b55db44db516ada0312059454db3f12c013d1396440";
    }
    {
      prefix = "fastqs/mcri-2020-08-05/200710_A00692_0117_ML205998_SFRC01279S1-T1_MAN-20200627_NEXTERAFLEXWGS_L002";
      suffix = "";
      site = "S1_T1";
      pdx = true;
      class = "tumours";
      sha256-1 = "49c861edb0fa64a1ff715632e2833e827c38642082cd87276c803d4bdedf454f";
      sha256-2 = "07f85c0f6812212d9654b0bcbcf8682c2d0542afcf7c8c1e4b61b007579e5ae0";
    }
    {
      prefix = "fastqs/mcri-2020-08-05/200731_A00692_0125_ML205997_SFRC01279-B1_MAN-20200627_NEXTERAFLEXWGS_L002";
      suffix = "";
      site = "B1";
      class = "normals";
      sha256-1 = "50b8618d5b0aecdb0e1d7a34509ad5f760053b5faa42b36abd7140c27e67215d";
      sha256-2 = "4d8ec24f020fde02e9ca4424d41c3fc18f3b8c16e4b573d6eae9ac1d823be011";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "clear cell";
      meeting_discussions_follow_up = "RC Meeting 2020.09.03\nThis patient is starting to relapse so Inger is looking for treatment direction. See Analysis_DNA for results discussion.\n\nMeeting note (Clare and Ratana) 2020.06.26\nSend PDX for WGS and BROCA (because is high grade ovarian cancer [clear cell])\n\nMeeting notes 2020.05.07\nGen tried to maximise tumour purity but still only 30%. WES on hold for now. Wait for Gayanie to review PDX (T1). Plan is to send WGS on T3\n\nMeeting notes 2020.04.23\nWould need to block SF piece in OCT and then macrodissect to maximise tumour purity (Gen to do this next Tuesday) - review case (in OCT) before going ahead with DNA extraction - then make decision on WES vs WGS - update Clare as ongoing (text/email)";
      date_of_death = "3/2021";
      date_consented = "2020-02-10";
      tumour_type = "Clear cell ovary";
      tumour_details = "Ovarian clear cell adenocarcinoma";
      case_details = "Nov 2020 - patient on maintenance Bevacizumab";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01279";
  }
