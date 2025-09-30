with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2A";
      class = "tumours";
      pdx = false;
      r1 = "WF/pZ/SHA256E-s2802357303--f7d60db5486bc70c28f42b5197fefc1d0d5e7a8bbabba2c19589ce403ecae3a5.gz/SHA256E-s2802357303--f7d60db5486bc70c28f42b5197fefc1d0d5e7a8bbabba2c19589ce403ecae3a5.gz";
      r2 = "q1/1p/SHA256E-s2771114873--01fff5c286578c577b83897231193e180ebdab4d791d7d3e2d9f28476ed322d5.gz/SHA256E-s2771114873--01fff5c286578c577b83897231193e180ebdab4d791d7d3e2d9f28476ed322d5.gz";
    }
    {
      site = "2A";
      class = "tumours";
      pdx = false;
      r1 = "3z/GW/SHA256E-s2807834683--e8ae9729d948836299860f5ca80841f84153c1be9d5e98378fe57124966c8293.gz/SHA256E-s2807834683--e8ae9729d948836299860f5ca80841f84153c1be9d5e98378fe57124966c8293.gz";
      r2 = "xZ/K4/SHA256E-s2792494501--1bd6ec10d6cbb2130bdda6490c4a4aba7ba804aa376f143b6b9e9ec0f8fb41d1.gz/SHA256E-s2792494501--1bd6ec10d6cbb2130bdda6490c4a4aba7ba804aa376f143b6b9e9ec0f8fb41d1.gz";
    }
    {
      site = "2A";
      class = "tumours";
      pdx = false;
      r1 = "f3/z5/SHA256E-s2795960123--f67599df1dfd0ac702e5cabf202928326b046436b2421b8822636593ff006680.gz/SHA256E-s2795960123--f67599df1dfd0ac702e5cabf202928326b046436b2421b8822636593ff006680.gz";
      r2 = "4X/jf/SHA256E-s2773402204--764a5c33b5cdd784e87aececc527a9e56b96b575e7586750f4cd33ba8b875c2e.gz/SHA256E-s2773402204--764a5c33b5cdd784e87aececc527a9e56b96b575e7586750f4cd33ba8b875c2e.gz";
    }
    {
      site = "2A";
      class = "tumours";
      pdx = false;
      r1 = "10/98/SHA256E-s2850948504--2204566c6456d6a2694364381269ff2abdd848d86747bc25924c574c96adbe16.gz/SHA256E-s2850948504--2204566c6456d6a2694364381269ff2abdd848d86747bc25924c574c96adbe16.gz";
      r2 = "gw/pg/SHA256E-s2842032344--802d15183129c300efa03e2d3d197d88455fe57b3c66d6c749fdeb1f7d6ac773.gz/SHA256E-s2842032344--802d15183129c300efa03e2d3d197d88455fe57b3c66d6c749fdeb1f7d6ac773.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "f2/63/SHA256E-s619101267--c785e91fb26be784d4768544436d0ed669641a17be59ea762fe9c53ecf7f4e5a.gz/SHA256E-s619101267--c785e91fb26be784d4768544436d0ed669641a17be59ea762fe9c53ecf7f4e5a.gz";
      r2 = "73/wK/SHA256E-s621728661--cda1471640ae6b44c881a235c8ac9cd8f549bdbad93f3b82e7de885af8c627ff.gz/SHA256E-s621728661--cda1471640ae6b44c881a235c8ac9cd8f549bdbad93f3b82e7de885af8c627ff.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "g0/4M/SHA256E-s621393473--f00bd26e0947920bdd706d623484fc15300e3fe31c8811bb2bb747fb2c9de238.gz/SHA256E-s621393473--f00bd26e0947920bdd706d623484fc15300e3fe31c8811bb2bb747fb2c9de238.gz";
      r2 = "k8/WG/SHA256E-s627990388--ab631a94dac38a45ead12bc0852a0bc6ece488a25010f972e37b6e8bb0de9518.gz/SHA256E-s627990388--ab631a94dac38a45ead12bc0852a0bc6ece488a25010f972e37b6e8bb0de9518.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "k1/1K/SHA256E-s614168490--03de7124c6935fcc63d4b3ca8d7cc4eadebe558b8fc4cdd0f8612b0d02794e14.gz/SHA256E-s614168490--03de7124c6935fcc63d4b3ca8d7cc4eadebe558b8fc4cdd0f8612b0d02794e14.gz";
      r2 = "w1/pK/SHA256E-s618859308--8864425750139498a13dd7590472fa30407377f1b2e30158c880baa9bc419976.gz/SHA256E-s618859308--8864425750139498a13dd7590472fa30407377f1b2e30158c880baa9bc419976.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "3P/1W/SHA256E-s648366189--aa95a104653adfbd929945354177d3dc954fe68f5450cccfc6110e4345779f08.gz/SHA256E-s648366189--aa95a104653adfbd929945354177d3dc954fe68f5450cccfc6110e4345779f08.gz";
      r2 = "57/Pw/SHA256E-s657565199--50e0ae2892b02e5b64068936759084f46a4343948d37f04fd63c764e9e7cf5de.gz/SHA256E-s657565199--50e0ae2892b02e5b64068936759084f46a4343948d37f04fd63c764e9e7cf5de.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Sample meeting with Clare 2023.10.05\nPlan on FFPE block 2A: WES twist  ";
      blood_recall_history = "Planned bloods at PMCC 5/9\n11Sep23: Aug22sample requested from Dorevitch pathology by Monica \n18Sept23: 31Aug22 sample received from Dorevitch pathology by Haris\n";
      urgency_details = "Patient has symptomatic progressive disease, as per clinician, results would be very beneficial for next line of therapy. (Treating clinician, 20Dec2023 BM).";
      date_of_death = "02/2024";
      d_case_summary = "61yo female Stage III (with left pelvic LN on PET/CT) Vaginal AdenoCA on 31/1/23   Cervical biopsy showed\nCIN1";
      date_consented = "2023-08-28";
      tumour_type = "Gynae cancer other";
      tumour_details = "Vaginal adenocarcinoma";
      patient_information_complete = "Incomplete";
      case_urgent = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    inherit samples;
    name = "SFRC01808";
    capture = TwistV2HR;
  }
