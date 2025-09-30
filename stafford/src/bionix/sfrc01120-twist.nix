with import ./milton-slurm.nix {}; let
  samples = [
    {
      prefix = "grimmond/s3/batch8/L2000103_S17";
      suffix = "_001";
      site = "B1";
      class = "normals";
      umi = false;
      sha256-1 = "097acb3d5f7036a4d225a6244896215502874fe5bd559113cbc3271071f70dc5";
      sha256-2 = "6a45c4ee62040ef443a3b42ae41600d9fe8326c3ee6c3fdd69875b8817bf7426";
    }
    {
      site = "S1_T1_18643";
      class = "tumours";
      pdx = true;
      r1 = "MJ/48/SHA256E-s896313290--65de94497919ef1c392fbd17a9a68f305b41439631763a3b8129e3704abc0f28.gz/SHA256E-s896313290--65de94497919ef1c392fbd17a9a68f305b41439631763a3b8129e3704abc0f28.gz";
      r2 = "F9/30/SHA256E-s924931885--fcdda56c53c75b79d5099c1e88dc21120ccdfc86761d17c66349362886793d0c.gz/SHA256E-s924931885--fcdda56c53c75b79d5099c1e88dc21120ccdfc86761d17c66349362886793d0c.gz";
    }
    {
      site = "S1_T1_18643";
      class = "tumours";
      pdx = true;
      r1 = "G1/xz/SHA256E-s904046857--4cb76f6b8b43d3c8be6d5d605c16e215db544992d4955e8f2d19bc0fac78502f.gz/SHA256E-s904046857--4cb76f6b8b43d3c8be6d5d605c16e215db544992d4955e8f2d19bc0fac78502f.gz";
      r2 = "Gm/GK/SHA256E-s932631440--ca7357181f3672df2072f192a907ab273a2f2cf3534f6cc8c7736fcc5394e217.gz/SHA256E-s932631440--ca7357181f3672df2072f192a907ab273a2f2cf3534f6cc8c7736fcc5394e217.gz";
    }
    {
      site = "S1_T1_18643";
      class = "tumours";
      pdx = true;
      r1 = "qV/Q6/SHA256E-s1037236666--295fedd46a8d3e76e742b2d1432e61edf1a8bf8073511c3ce1229946c0aee805.gz/SHA256E-s1037236666--295fedd46a8d3e76e742b2d1432e61edf1a8bf8073511c3ce1229946c0aee805.gz";
      r2 = "56/zg/SHA256E-s1075148549--cc88ccaadc22272a1bcab83711a3e9d3f2066880c27a13e74f71c02c57ea41dd.gz/SHA256E-s1075148549--cc88ccaadc22272a1bcab83711a3e9d3f2066880c27a13e74f71c02c57ea41dd.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "GCT";
      meeting_discussions_follow_up = "16.02.2021\nSent S1 DNA (only 80 ng) for TSO500\n\n28.01.2021\nMicrodissect S1 OCT sections for DNA.\n\nUpdate 26.11.2020\nOur S1 biopsy arrived end of last week, but the diagnostic core had no tumour. Our S1 OCT slides are not enough for a diagnostic path review so Clare, Ratana, Gayanie organised for our S1 SF tissues to be made into FFPE block and IHC performed: A-inhibin, calretinin, CD45, AE1/3 (at RCH).  If a clear diagnosis can be made from this block, patient will not need surgery next week. IHC results scanned.\n\nRC Meeting notes 09.07.2020\nClare will send report to Susie Banerjee re ARID1A mutation - although sub-clonal. \nNothing else targetable.\nConsider adding Fulvestrant (need to check ER positive before adding this) or palbociclib (based on CDKN2A/B mutations) to the AI.\nLack of FOXL2 mutation confirms this tumour isn't GCT. Will send this report to Peter Fuller \nNo ER IHC done previously - could organise this for our samples. Not urgent because patient has no disease, but rising inhibin levels could warrant a second drug. \n\nMeeting notes 30.01.2020\nNow to send DNA from block A for WGS \n\nMeeting notes 2019.06.27\nH&E was 60-85% tumour. Send for WES - hold off still to check if surgery going ahead (then do WGS) updates from Clare. Clare recalled the CT? - 14/06/2019 \nProbably going to go onto Bevacizumab \nNothing to proceed with now - wait for next surgery ";
      date_of_death = "02/2022";
      d_case_summary = "Metastatic, poorly-differentiated Sertoli Leydig Cell tumour of R ovary; TAH BSO; 6x adjuvant carbo/paclitaxel; recurrence (12/18); BEP chemotherapy";
      date_consented = "2018-12-09";
      tumour_type = "GCT (Granulosa Cell Tumour - including Sertoli Leydig Cell)";
      tumour_details = "Sertoli Leydig cell tumour";
      case_details = "Sertoli Leydig Cell tumour. Diagnosed 2017. Treated with TAH and 6x carbo/pacli in 2017. Then 6x BEP in 2018. Then Letrozole in 2019. Has responded to Arimidex currently has no apparent tumour but rising Inhibin level. WGS to determine which next treatment would be helpful. Have been unable to obtain a fresh sample so WGS will be performed on immediate past FFPE sample.\n\nPET result 14.02.2020 - Continuing remission, no recurrent disease demonstrated.\n\nER 2+ staining, PR staining pending. Sept 2020, stopped Letrozole, started Palbocyclib (to pay for 2 cycles then remaining will be paid by drug company). Also to start Fulvestrant Sept 2020.";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "For WGS when FFPE arrives (need to check quality)\nPeritoneal biopsy and omentum\nQML Reference: 18-5683566\nHistopath number: BRI 2018 1184667\nRecalled 6-Feb-19 \nReceived block 20-Mar-19";
      patient_alive = "No";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01120";
  }
