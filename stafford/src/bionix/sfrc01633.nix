with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        facets.reporting.preprocess = def facets.reporting.preprocess {
          preSeg = 100;
          segCrit = 800;
          widPerHet = 1000;
          dipLogR = -0.4;
        };
      })
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "fQ/Fp/SHA256E-s64854772854--314d2544fc43c7521ca2ada2bab76e293848e2066c3fb5fa483f3d2521cd73fe.gz/SHA256E-s64854772854--314d2544fc43c7521ca2ada2bab76e293848e2066c3fb5fa483f3d2521cd73fe.gz";
      r2 = "q3/2v/SHA256E-s68232164789--3ebb03c95872fe45501ff3d87149b66c61642343d4e17cb63ecfa6fbaf0592d9.gz/SHA256E-s68232164789--3ebb03c95872fe45501ff3d87149b66c61642343d4e17cb63ecfa6fbaf0592d9.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "x4/jf/SHA256E-s89373966161--8b58106c3707207c49e5a914411a5b861a43fe128fa02cc5e833f5c196cfabeb.gz/SHA256E-s89373966161--8b58106c3707207c49e5a914411a5b861a43fe128fa02cc5e833f5c196cfabeb.gz";
      r2 = "p8/7f/SHA256E-s93454214164--4d0cfc6c089f87bc2fc989458c573b730f3a4c2cfe4e4693ffe24b48e2d785f9.gz/SHA256E-s93454214164--4d0cfc6c089f87bc2fc989458c573b730f3a4c2cfe4e4693ffe24b48e2d785f9.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "z0/fp/SHA256E-s5889728560--be55c5986eae30edd067c2a1262093b19e02c4c9d10079e08d2a2cf87398ed16.gz/SHA256E-s5889728560--be55c5986eae30edd067c2a1262093b19e02c4c9d10079e08d2a2cf87398ed16.gz";
      r2 = "xw/pK/SHA256E-s5807901633--1edfda78e91a882c33062d013339d473672633b882037a739ef0cdb6334cae32.gz/SHA256E-s5807901633--1edfda78e91a882c33062d013339d473672633b882037a739ef0cdb6334cae32.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 08.12.2022\nDiscussed WGS report with SFRC data.\nSFRC CN model failed - don't trust tumour purity of 44%, more likely higher at 50%.\n\nClare's Meeting 30.11.2022\nBlock 2E tumour negative for B7H4 staining.\n\nClare's Meeting 17.11.2022\nFFPE block 2E is from same surgery as fresh tissue S1, which has WGS data: CDKN2A found, no more sequencing needs to be done. Do B7H4 IHC.\n\nClare, Ratana, Mandy, Rachael 13.10.2022\nHave WGS data on fresh tissue. FFPE block 2E from 2020; wait for WGS data before proceeding. Would be good to find the CDKN2A, but Cat 3 (not urgent).\n\nClare's Meeting 26.08.2022\nUrgent WGTS on S1 tissue (make sure to flag Damien when report comes back). Mandy to check with Dr if 8 week wait is too long. ";
      blood_recall_history = "01Sep22 - DNA\n08Sep22 - Feeling overwhelmed call back tomorrow would like to have bloods taken at Epworth On Monday around 11am before/after appointment. ";
      d_case_summary = "Recurrent metastatic granulosa cell tumour of the Ovary \n\nJuly 2020- TAH/BSO and resection of a Stage 1c adult granulosa cell tumour. Extensive adhesions and tumour adherent to multiple loops of bowel\n• Histopathology- adult granulosa cell tumour , Inhibin pos, ER 20% 2  and PR 90% 3 \n• Post op tumour markers returned to normal but Inhibin B rising\n• CT May and August 2021- several nodules, largest at right vaginal vault\n• Commenced Letrozole 29/9/21 to 5/11/21 and stopped due to urticarial rash and hives, SOB and fatigue\n• CT April 2022- new soft tissue mass lateral aspect of right inferior liver, several other peritoneal nodules in the right iliac fossa, largest in hepatorenal pouch 38x20x35mm.\n";
      tumour_type = "GCT (Granulosa Cell Tumour - including Sertoli Leydig Cell)";
      tumour_details = "Granulosa Cell Tumour of the ovary";
      case_details = "2020-07: Diagnosed Stage 1c adult granulosa cell tumour\n-Surgery: TAH/BSO\n-IHC positive: Calretinin (diffuse strong), A-Inhibin \n  (focal) \n-ER: moderate +2 nuclear positivity in 20% tumour \n  nuclei\n-PR: moderate/strong +2/+3 nuclear positivity in \n  90% tumour nuclei\n\n2021-08: CT scan: several nodules discovered\n\n2021-09: Commenced Letrozole. Ceased 2021-11 due to urticarial rash and hives, SOB and fatigue.\n\n2022-04: CT scan: New soft tissue mass (lateral aspect of right inferior liver), several peritoneal nodules.\n\n2022-08: Frozen ovary from 2020-07 TAH/BSO received in lab (Tissue S1). \n\n2022-09: Blood B1 received. S1 and B1 DNA & RNA sent for WGS:\n- Mutation of potential clinical significance in FOXL2 detected.\n- Activating mutation of uncertain clinical significance in TERT promoter detected.\n- Homozygous deletion of CDKN2A detected.\n\n2022-10: Sections from FFPE Block 2E received (2020 TAH/BSO; same as S1)";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "09/09/2022: 2020 sample requested from RWH pathology by Devindee.  \n03/10/2022: 2020 sample slides received.";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01633";
  }
