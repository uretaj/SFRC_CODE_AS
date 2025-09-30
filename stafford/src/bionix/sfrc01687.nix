with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Fx/4v/SHA256E-s569343318--54363173a2702d65352ea9161cee6fa472cdb8800cb44011d344b703151f6933.gz/SHA256E-s569343318--54363173a2702d65352ea9161cee6fa472cdb8800cb44011d344b703151f6933.gz";
      r2 = "p3/wp/SHA256E-s579522145--dfdbe80acd6e576bc9b01b7d3bc703fa5f76b64eee96b01275a9950bd8af1800.gz/SHA256E-s579522145--dfdbe80acd6e576bc9b01b7d3bc703fa5f76b64eee96b01275a9950bd8af1800.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "j8/xJ/SHA256E-s567402247--170987c06455aef2a77873c4844e8c019801ca9df230ce3b8cabce15d4d2f1ec.gz/SHA256E-s567402247--170987c06455aef2a77873c4844e8c019801ca9df230ce3b8cabce15d4d2f1ec.gz";
      r2 = "zG/8G/SHA256E-s578280376--4fa92d5bed2083c60409c9abfba6565e3d4a450ea3a21dd3dad39bff72bd0cb8.gz/SHA256E-s578280376--4fa92d5bed2083c60409c9abfba6565e3d4a450ea3a21dd3dad39bff72bd0cb8.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "Mj/G2/SHA256E-s4461696311--a4279280f3d61f9215652330849e6d3e7f7e489022bc998eb7b90a06f7c72ad5.gz/SHA256E-s4461696311--a4279280f3d61f9215652330849e6d3e7f7e489022bc998eb7b90a06f7c72ad5.gz";
      r2 = "1m/40/SHA256E-s4474191043--fa865013df370a2f5e451d98b0bd13657c9e9fa5c5c22d8f1f954809845c15c7.gz/SHA256E-s4474191043--fa865013df370a2f5e451d98b0bd13657c9e9fa5c5c22d8f1f954809845c15c7.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "gg/Vk/SHA256E-s4444211091--0048287824e17f19057eccbdacce16f5ccb58d1a544a2c2fc464860145b9abb4.gz/SHA256E-s4444211091--0048287824e17f19057eccbdacce16f5ccb58d1a544a2c2fc464860145b9abb4.gz";
      r2 = "J9/qf/SHA256E-s4463617921--56183617078efc904e8a56177c9ea6db4cbe423333591c2465ce1d6137a5053a.gz/SHA256E-s4463617921--56183617078efc904e8a56177c9ea6db4cbe423333591c2465ce1d6137a5053a.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 23.5.24:\nTSO500 on Block 1A (first recurrence) failed. \nGermline: 25X - Not critically low. Can call ~12X reliably. \nNo KRAS or BRAF \nTrametinib - MEK inhibitor \nPoor quality data, can't reliably call anything. \n\nClare sample review 08.02.2024 (done through email)\nPlan on fresh tissue S1: There is a big difference between OCT and FFPE block. We do have more Snap frozen and could make a new OCT block, to try to get some tumour in OCT block for WGS. I believe the tumour purity is borderline for WGS tho.  \n\nWould you like some new OCT block made from the snap frozen tissue we have to attempt WGS, or we could do WES or a simple CRC panel with the FFPE block?  \n\nCS: I think that given we are already late and she is getting into trouble, we should do WES on the FFPE. Otherwise it will take us longer to go back and review more OCT - and it will likely have poor tumour purity. The FFPE is from the same breast surgery in Dec 2023, right? So there is at least reasonable purity in the FFPE bit but just not from what we can see, in the OCT block. \n\nClare sample meeting 2023.09.21\nSlides (Block 1A) were sent for TSO500, failed. \nSame slides (1A 15-11-2022) microdissected for 35% tumour purity areas, sent for CRC panel. \nResults - no variants detected (Panel analyses KRAS, NRAS, BRAF and PIK3CA). \nDNA was not great quality, was repeated with higher input. With no variants detected, can't tell purity of sample. \n\nAugust 2023 correspondence\nTSO500 failed. Still want to use this recurrent sample (not diagnostic block). Microdissected DNA only from higher purity areas (have 250 ng DNA).\nNo response from Australian Clinical Labs about CRC Panel. There is a CRC Panel at Peter Mac, Ratana enquiring about this and if possible to upgrade to TSO500 if nothing found.\n\nSample meeting with Clare 14.07.2023\nPlan on FFPE block 1F : Do we need to do anything additional on this new FFPE block? Wait for TSO 500 results \n\nSample meeting with Clare 29.06.2023\nReview FFPE block 1A: send for TSO500";
      urgency_details = "Histo not recalled for 6mo after registration, admin error. Please process urgently now. ";
      d_case_summary = "metastatic low grade serous ovarian carcinoma (papillary/micropapillary carcinoma) dx Nov 2016";
      date_consented = "2022-12-13";
      tumour_type = "LGSOC";
      tumour_details = "LGSOC";
      case_details = "34 years old female \n\n2016-11:\tInitial diagnosis, metastatic LGSOC, laparascopic oophorectomy and omental biopsy \nC6 carboplatin/Paclitaxel \nIHC positive: WT1, PAX8, CA125 \nIHC negative: GATA3, cKit \nER moderate positivity, PR focal very weak positivity, MMR intact nuclear expression \nGermline BRCA negative \nAromatase inhibitor and bevacizumab for 12 months \n\n2017-05\tsurgery , FFPE block 1F received\nIHC positive: WT1, PAX8 \nIHC negative: calretinin, B72.3 \nP53 shows WT staining, ER 1+ in 10%of the cells , PR 2+ in 20% of the cells.  \n\n2018-07: \tprogressive disease \ncarboplatin/Caelyx treatment with partial response.  \nMaintenance Aromatase inhibitor and bevacizumab \n\n2020-01: \tprogressive disease \nStarted with carboplatin/Paclitaxel and changed to carboplatin/Caelyx \n\nFrom 2020-08  To 2021-08\tTrametinib \n\nCurrently on fulvestrant and abemaciclib \n\nTry MOST but unsuccessful, tissue has degraded, genetic screening with RISC \n\n2022-11: \tBreast Biopsy, FFPE block 1A received \nIHC positive: PAX8, WT1,  \nIHC negative: GATA3, HER2 \nER positive, PR negative  \n\n2023-03: \tBlood B1 received \n_____________________\nQuick summary\nNov-16\tDx LGSOC at age 27\n1/11/2016\tNACT Carbo/Taxol\n17/5/2017\tBSO surgery\n1/6/2017\tBevacizumab and aromatase inhibitor (maintenance)\n1/7/2018\tCarboplatin + Caelyx\n1/8/2020\tTrametinib (1 year)\n1/8/2021\tFulvestrant and Abemaciclib\n15/11/2022\tBlock 1A: LGSOC recurrence in right breast\n1/1/2023\tTaxol and Bev, Bev maintenance\n1/10/2023\tadded Gemcitabine to Bev\n1/12/2023\tS1 (breast lesion)";
      patient_information_complete = "Incomplete";
      case_urgent = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "30May23: Nov22 sample requested from Sullivan Nicolaides Pathology by Monica \n02June23: Nov22 sample received from Sullivan Nicolaides Pathology by Monica \n22Jun23: May17 sample requested from RBWH by Monica \n04Jul23: May17 sample received from RBWH by Monica ";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01687";
  }
