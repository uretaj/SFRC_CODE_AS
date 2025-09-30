with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        samtools.sort = def samtools.sort {walltime = "48:00:00";};
        manta.call = def manta.call {walltime = "48:00:00";};
        octopus.callSomatic = {targets, ...} @ attrs:
          octopus.callSomatic (attrs
            // {
              mem =
                if pkgs.lib.any (x: x == "chrY") targets
                then 360
                else 180;
            });
        facets.reporting.preprocess = def facets.reporting.preprocess {
          mem = 50;
        };
        dbs.db = def dbs.db {mem = 50;};
      })
    (_: super:
      with super;
      with lib; {
        octopus.callSomatic = {targets, ...} @ attrs:
          octopus.callSomatic (attrs
            // optionalAttrs (any (x:
              x == "chr7")
            targets) {walltime = "48:00:00";});
      })
  ];
}; let
  samples = [
    {
      site = "S1";
      class = "tumours";
      prefix = "fastqs/AGRF_CAGRF18906_HG2W3DSXX/SFRC01028_S1_HG2W3DSXX_CTTACAGC-TCTTTCCC_L003";
      suffix = "";
      hash1 = "fb158aeba9f608852e69dfc4473bdc4e327565a932b38e9d8e4c03205345461ed1a5504c917d246b3781898d4b5ec352a4e9ba188857a612366c0cd9ec52107c";
      hash2 = "824db1b036c40ec1ea353e22b43e36a1b26afdf493a325af7f2b581d45a0ec30b618095e964061095e98cd8b59e22a588f3f5f7ca713a9804758fd9d6c627d93";
    }
    {
      site = "S2";
      class = "tumours";
      prefix = "fastqs/AGRF_CAGRF18906_HG2W3DSXX/SFRC01028_S2_HG2W3DSXX_ATTACTCG-ATAGAGGC_L004";
      suffix = "";
      hash1 = "5e4f941e4c9f44750096e267fc255fe8b09576820a6e3ced30d4973423fa4fef712bbb2b951ee6c4f97cea55baf11559d7c89a385f32dca3ded7b756578e1db1";
      hash2 = "780b0158f6d18733c89a691c9d07b1c006b56df363f45c3346a1e09023fbce2bcc3303409f09f5fa0841da84f38c64a220b2555dc47f911bee764369c79c7fa1";
    }
    {
      site = "S3";
      class = "tumours";
      prefix = "fastqs/AGRF_CAGRF18906_HG2W3DSXX/SFRC01028_S3_HG2W3DSXX_TCCGGAGA-CCTATCCT_L004";
      suffix = "";
      hash1 = "c796624412819dfd9cc47200a5b41fead124a931a6f431710b8a893db4b02f7ae44bd66b8bc51e512573ad6dfe1d432da1506283e7995e5e20dcf575bfbc9731";
      hash2 = "9aa58371efec9da59f440778247c48d8e0871bbec39ebd75ac92566925d43542e5c869e339d240fd42b01e3021a08c76984bfbf12e4f0b55ac26fd2baf9a5ab1";
    }
    {
      site = "S4";
      class = "tumours";
      prefix = "fastqs/AGRF_CAGRF18906_HG2W3DSXX/SFRC01028_S4_HG2W3DSXX_CGCTCATT-GGCTCTGA_L004";
      suffix = "";
      hash1 = "63c04b2b7392643d4f513da8d0a551853415e8cf8a4ec3bdbfe27285a37aa5f34b04d8b621cc1f269f685b254959b23410e2129ff639a0f278ec0a2d2ea5ce22";
      hash2 = "1be22aa5735286badb3db58ef88de705edcfd2997ec5812c17627ba797e00a3806e87a294fa3fd20cbd1a584083a3c7172922b5fbcd871c1d5c93936cf2ed6f3";
    }
    {
      site = "S5";
      class = "tumours";
      prefix = "fastqs/AGRF_CAGRF18906_HG2W3DSXX/SFRC01028_S5_HG2W3DSXX_GAGATTCC-AGGCGAAG_L004";
      suffix = "";
      hash1 = "d912772340c88287b4f340bcd211eb15b675d74ff08a8fdba70ed2b4081b8d5fa4363c001a9af710ce3d03ed944375d9aa57b57b58a8f66120172b36eb9f1a08";
      hash2 = "a9a7f6167edd4d16637cc3bef2139932f18676ef07f3bdeee9dbfb7489320caf80b7189417991675b1cbb1d35f6191efc693101af48079ded4aee34ea1af23fb";
    }
    {
      site = "S6";
      class = "tumours";
      prefix = "fastqs/AGRF_CAGRF18906_HG2W3DSXX/SFRC01028_S6_HG2W3DSXX_GAATTCGT-CAGGACGT_L004";
      suffix = "";
      hash1 = "b95a4ce86ccef2c22a0fb1a6cd3f886e0a2d2220244f6465660053185a765308a3433e2dc74e1de4c04f8f23ef93abe301d02c93847901ee48939a291170090d";
      hash2 = "a8af397934bee10963e53987c3c33a3b1bbafac76aae5bea03590ce47bb2e6bc3e8c201ea0053f4556b07075805907faf370bab2020e1580d359b57af39465de";
    }
    {
      site = "B1";
      class = "normals";
      prefix = "fastqs/AGRF_CAGRF18906_HHWK3DSXX/SFRC01028_B1_HHWK3DSXX_CTGAAGCT-GTACTGAC_L002";
      suffix = "";
      hash1 = "e2447285a3feb1c0507eec37830fbcbd431f61f563a6c57e4af32174cf128c581aa707886beb80160aea46f3b05f013fb396f2252d1351e5fee68471b9657d60";
      hash2 = "b75d1d13132ad1d5528ac493df351233080516ce9de660578ebcc66869c86e2b9faa3cf7083784dd5589c8b7a85c6acdd70659fb064ef9335d0d2721a41256b3";
    }
    {
      site = "S1";
      class = "tumours";
      prefix = "fastqs/AGRF_CAGRF17387_H3W32DSXX/SFRC01028_S1_H3W32DSXX_CTTACAGC-TCTTTCCC_L002";
      suffix = "";
      hash1 = "d3931192e48dfc0261220a2446ffab9544ab18d70ab10f390efc5ec5977d83b4cecb22e94fd4b5765fd37491286ce80cccb90ca862974b0f6640ab64aebc8157";
      hash2 = "cec014a6091fd009304e66bfaccbaaf574108e73f48dc7f2402cfc7e0af18d7ed34d5f657fb5402d532a0c6a7cc59a6cdb4876cebe9a3c61ae99297a52091a60";
    }
    {
      site = "S2";
      class = "tumours";
      prefix = "fastqs/AGRF_CAGRF16900_H3YJHDMXX/SFRC_13_H3YJHDMXX_ATTACTCG_L001";
      suffix = "";
      hash1 = "8799cad3a58197eae91884723485be4186258efc682d1fa99d1714b05c76d5b7c1e63fe854a10db6aa545dc79e15451547575bc7e10f86c437c9f8db305e39e4";
      hash2 = "99d5f03847a681d5dc985d967bd6e957c1a300e5dd27b2ee13421fb17d8594e170b4b940881261fa56515daec01277c86197f4b132ca37faf7478f32f0948627";
    }
    {
      site = "S2";
      class = "tumours";
      prefix = "fastqs/AGRF_CAGRF16900_H3YJHDMXX/SFRC_13_H3YJHDMXX_ATTACTCG_L002";
      suffix = "";
      hash1 = "7efea4222e7d83591813c3510f12bc5bae66fd8cfd04cdb7d4824046ceef3f5eb80484c59b29f19c888cbba4db2e911a07e1314af60615e4f5c57fcedcb449cd";
      hash2 = "5eca261373eb24da7607bc5f995a84f2c412e5582acab8492bcc13eef8d17b97a71c67b4aa8ce705053c37a1374e91d1c09532357627eec17f18560a1c49f274";
    }
    {
      site = "S3";
      class = "tumours";
      prefix = "fastqs/AGRF_CAGRF16900_H3YJHDMXX/SFRC_14_H3YJHDMXX_TCCGGAGA_L001";
      suffix = "";
      hash1 = "a4162dbc8ea0084ba5b21141fce0a2ade5b6eb38a4a13b5a5246392d4fccd24da9fc44948103b2f2e5f725a88eb19ddc7441f4d602421a8b88f6dffd6b2894bb";
      hash2 = "66816ac44f775978c747bd791fc4eb55b0dd761a3b0fcbb153ca9eb778d0b290a9a9cfe83d247476fcf12c8e75e06c83be12de5946892b7540e59730189366cf";
    }
    {
      site = "S3";
      class = "tumours";
      prefix = "fastqs/AGRF_CAGRF16900_H3YJHDMXX/SFRC_14_H3YJHDMXX_TCCGGAGA_L002";
      suffix = "";
      hash1 = "eead19c3019d597ed6bb15c3883bebe63dd144b468f632332aa7bca26dc2429a3e82e4dc4391146d1448652e7f98f0d58b291fbabcd0f6f12adaabfbaa4e32d8";
      hash2 = "2e92824a183fefb29f14da6913878d5cf3672bf464275837e5768cb1746932747fe31c61ddd21e3571aee9439286961dc01293fd2b625ce0a65cbed714be70bf";
    }
    {
      site = "S4";
      class = "tumours";
      prefix = "fastqs/AGRF_CAGRF16900_H3YJHDMXX/SFRC_15_H3YJHDMXX_CGCTCATT_L001";
      suffix = "";
      hash1 = "2fe3941edca5f8c8c1bf9ed3d54af66eefa32e7e307c0435e8b9dddaf209988134c1e36fdcb79a5d9dfe552355c82ade3d4b1e05a58eb12ced8a5086ca141220";
      hash2 = "933686071fda3b59224c9d9490d54aeea81b5ce71d233a26deace566b92f2112581e911768dd17300e1acda66c2507cb3f7710c67dcddc598fab6a7e828c2f52";
    }
    {
      site = "S4";
      class = "tumours";
      prefix = "fastqs/AGRF_CAGRF16900_H3YJHDMXX/SFRC_15_H3YJHDMXX_CGCTCATT_L002";
      suffix = "";
      hash1 = "3560849f7a148aa546174e0c74bcb188ec056c2908624b8f18dcca9e9c39cec6c63f4a3327651dc865916ffece5b597e8901ca7000df40974c6412e69d10a91b";
      hash2 = "3a8675e0bd99435e5ea19211b1e7f8f9ecaca1a2b1945965c28dfc7122aadce97fef9fbc78faa0c624b0b3fa753c86b6e48a3c96e8820160487f8e1904c6725a";
    }
    {
      site = "S5";
      class = "tumours";
      prefix = "fastqs/AGRF_CAGRF16900_H3YJHDMXX/SFRC_16_H3YJHDMXX_GAGATTCC_L001";
      suffix = "";
      hash1 = "ce42d786ab5bbaebf2e21e3ccf4ae1f37a98da5a493c2510da91f16bbd4a83078add39820c4b0d6a59d932b1b0443bc7d48236573a4e2635d7917eabe53c427f";
      hash2 = "5d108f420dcdcc0dd71d99f111bcd791d0715fad79bf914239d4f855aaeaa39c537811ba955648795034797adf6c25b2ae95947d5448a3e152208502925e968d";
    }
    {
      site = "S5";
      class = "tumours";
      prefix = "fastqs/AGRF_CAGRF16900_H3YJHDMXX/SFRC_16_H3YJHDMXX_GAGATTCC_L002";
      suffix = "";
      hash1 = "4ad5a0ef9d9d1c591e29261d09511c0e92ecbcfc948ad817f636a5548408e11eff60576969c7bbfcb84c4440a02e616cfdb9d580781f8d2baa564313ef713a2c";
      hash2 = "f26a4c2a16e623f0dc77ae0d18906bd782a5890fab03ad8fb2e4f065876bb6cf94a263724fce3a7f4fb5801329337c096d09ce1e8d0c84422b09a8b341ca29f9";
    }
    {
      site = "S6";
      class = "tumours";
      prefix = "fastqs/AGRF_CAGRF16900_H3YJHDMXX/SFRC_17_H3YJHDMXX_GAATTCGT_L001";
      suffix = "";
      hash1 = "b40850f2e6812028f180839b5d68e215e0996ff554968dae49eb497c933447945ffa0f1590995af4d9501e8ea7d803399a37c9c62423344a947ee61e8d0f0601";
      hash2 = "1ddc6628b14594d3a9e0b6a8b357c928baee4e2703d7a03f05ac90bb71b067b504d96b4feebbcec4e5e65cbec32dfbf1dbbdad4ed233cc2165fe836c54a5719c";
    }
    {
      site = "S6";
      class = "tumours";
      prefix = "fastqs/AGRF_CAGRF16900_H3YJHDMXX/SFRC_17_H3YJHDMXX_GAATTCGT_L002";
      suffix = "";
      hash1 = "30a749fab63803f3ef64bc6798274038a5ea1c2d91ae2bad3c2544a19957d88c4328c9e903d8685cd4d1aa1b4d99c516dbf361776607fe00605afc19d07a470d";
      hash2 = "068d4370aca649378c39c2d9185fa94c86d7bb61b840ea016936033344a25bd90b530f25e1241de668ee9a934ec1d1d2792b28687d33771e59a6789feea28c93";
    }
    {
      site = "B1";
      class = "normals";
      prefix = "fastqs/AGRF_CAGRF16900_H3YJHDMXX/SFRC_18_H3YJHDMXX_CTGAAGCT_L001";
      suffix = "";
      hash1 = "65e88e746c5e645556f3dd6af9227e1ee21bb6a2aff62ef65271ff16b3b182add1f031362ec46b208588d118ed67052c213d6500d777f7325cf1031fb1fc671c";
      hash2 = "c00da8e10ce043c7324a922ae99403c3f1a73800558f3879830b7dbcb9dfc32aaa7d2681b4b31cb75c0a739323d6fe6a67125f183d19fc088dc2242ab7e9a1fa";
    }
    {
      site = "B1";
      class = "normals";
      prefix = "fastqs/AGRF_CAGRF16900_H3YJHDMXX/SFRC_18_H3YJHDMXX_CTGAAGCT_L002";
      suffix = "";
      hash1 = "7ef489ccf56e9b785cb4e95e87576271bd498ec0fbdf5da4b584cec81c7b2c98393c8b268f58a511fdf404eb91afe705407a1df29d2ee8606dabe033635f7891";
      hash2 = "aa37dbff4b1cabe8529874f9d287dc75464dc916e875e1b9baa77c7709532df702a32852488ec88463e1ac83cc4726549ed6339ae3933cbe027c37d2ea3d81b0";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "CA0032, AOCS 134140";
      meeting_discussions_follow_up = "RC Meeting 28.05.2020\nTP53 mutation not in copy neutral location. \nReally interesting the change with increased depth.\nThis is probably a CUP - when Tony and Justin are ready, might be worth discussing with David Bowtell the significance of changing depth of analysis and having autopsy material. \n\nRC Meeting 14.05.2020\nResults: 3 clones inferred in a linear order.  Blood is clone 1 and then different proportions of clone 2 and 3 in different tumours.  Right lobe liver, pelvic and paraaortic have greatest proportion of clone 2 so are likely to be earliest sites by this analysis. Justin to send individual list of mutations when completed.\n\nMeeting 19.03.2020\nResults:  New results show straight evolution from Normal to C1 to C2, only 2 clones inferred now.  Inferred clonal dynamic included blood which is shouldn't have.  Shows the blood had almost 50% clone 1 which it shouldn't have.  Liver has largest proportion of new clone, clone 2, but for other samples the majority clone was C1.   \nPlan: Rerun with improved SNP selection and normal removed from clonal analysis. \n\nMeeting notes 12.12.2019\nAnalysis has run but hasn't had a chance to look at it. \nOther case is 01235 that has been sent to Sean's lab for sequencing, patient not doing so well now, has become urgent case.  Closely associated with bowel and therefore having chemo associated with bowel.  Clare emailing Sean to request data back asap. \n\nMeeting notes 2019.11.28\nJustin to give an update on WGS now that extra depth received. Patient was treated as an ovary primary and died. A tumour was discovered on the bowel, could bowel be primary? Wrong treatment?\nNotes:  Justin has looked at it and analysed, depth much better, subclonal inferencing now takes a long time to run, results soon and update hopefully next meeting\n";
      date_of_death = "03/2014";
      date_consented = "2016-10-20";
      tumour_type = "Clear cell ovary";
      tumour_details = "Mixed clear cell endometrioid ovarian ca, previous chemo";
      pre_analysis_mutations = "sPTEN (2) and sTP53";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01028";
    disableManta = true;
    disableGridss = true;
  }
