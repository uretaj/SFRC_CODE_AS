with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      umi = false;
      r1 = "4J/Q8/SHA256E-s23811756876--a56ff040789422b6ed1e840839241cfb1211af44a2ac60f589eb0dd82c55e67a.gz/SHA256E-s23811756876--a56ff040789422b6ed1e840839241cfb1211af44a2ac60f589eb0dd82c55e67a.gz";
      r2 = "4k/q3/SHA256E-s25512883286--74d577fe9b4b7e78377ba5759df787a32afcbe76caa64e48041c9cfa1fca85f9.gz/SHA256E-s25512883286--74d577fe9b4b7e78377ba5759df787a32afcbe76caa64e48041c9cfa1fca85f9.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      umi = false;
      r1 = "vP/pW/SHA256E-s23642024701--a5a5a7f85e5ca03338cf52b55fe7157d1fe50f1b3c606dbb6f56e6dd0f0be280.gz/SHA256E-s23642024701--a5a5a7f85e5ca03338cf52b55fe7157d1fe50f1b3c606dbb6f56e6dd0f0be280.gz";
      r2 = "Jx/MZ/SHA256E-s25498251424--1aa150bb494c62276d6dfc01bb97ee26244b820668693072e9381e06120dedd6.gz/SHA256E-s25498251424--1aa150bb494c62276d6dfc01bb97ee26244b820668693072e9381e06120dedd6.gz";
    }
    {
      site = "1.1 (059)";
      class = "tumours";
      pdx = false;
      r1 = "5p/k4/SHA256E-s2112714493--248b23e73967f58515f89942ffb6131d572ed22ea984838b8d19c90d124488b0.gz/SHA256E-s2112714493--248b23e73967f58515f89942ffb6131d572ed22ea984838b8d19c90d124488b0.gz";
      r2 = "QM/wP/SHA256E-s2133216505--cf9a4a7de63a8061774b6a3adc2694dbd77170f571b53e28828b9fd5df58ee8d.gz/SHA256E-s2133216505--cf9a4a7de63a8061774b6a3adc2694dbd77170f571b53e28828b9fd5df58ee8d.gz";
    }
    {
      site = "1.1 (059)";
      class = "tumours";
      pdx = false;
      r1 = "zG/qK/SHA256E-s2131029930--31ebacc8f325d72b2fd8cfc70024b203019beee198c838d1f7a115a938651880.gz/SHA256E-s2131029930--31ebacc8f325d72b2fd8cfc70024b203019beee198c838d1f7a115a938651880.gz";
      r2 = "jX/K3/SHA256E-s2151244013--a9d618f8aaf3f914e60f6394524f4ae717c7dc07908265de2a5a8e025e420447.gz/SHA256E-s2151244013--a9d618f8aaf3f914e60f6394524f4ae717c7dc07908265de2a5a8e025e420447.gz";
    }
    {
      site = "1.1 (059)";
      class = "tumours";
      pdx = false;
      r1 = "7k/3X/SHA256E-s2364700205--4029c1e0aeec085bc571d3b464c7401121f5e5b9c0d4bd2a9337da861e76ba16.gz/SHA256E-s2364700205--4029c1e0aeec085bc571d3b464c7401121f5e5b9c0d4bd2a9337da861e76ba16.gz";
      r2 = "27/g5/SHA256E-s2393099556--d29b62ba15b0dc3465cc21239f6a308695ce9f31fef894a2f230bdc45714ace9.gz/SHA256E-s2393099556--d29b62ba15b0dc3465cc21239f6a308695ce9f31fef894a2f230bdc45714ace9.gz";
    }
    {
      site = "1.1 (059)";
      class = "tumours";
      pdx = false;
      r1 = "WQ/pG/SHA256E-s2358680709--b948f9698b7a0473ac01d28b5d7afc97bca5f668b1b9cdebfa01f64c30a39bba.gz/SHA256E-s2358680709--b948f9698b7a0473ac01d28b5d7afc97bca5f668b1b9cdebfa01f64c30a39bba.gz";
      r2 = "x1/X6/SHA256E-s2391612146--279944c8bfc4e68b4c5e096a5cf685c78dd43ccf08f58e02eb07c2adccb1d3e6.gz/SHA256E-s2391612146--279944c8bfc4e68b4c5e096a5cf685c78dd43ccf08f58e02eb07c2adccb1d3e6.gz";
    }
    {
      site = "1.1 (059)";
      class = "tumours";
      pdx = false;
      r1 = "GJ/F1/SHA256E-s2369283290--65d9d85286ecbf1aaa498e1e588fd625a0ea716149449953b1797d18d7725189.gz/SHA256E-s2369283290--65d9d85286ecbf1aaa498e1e588fd625a0ea716149449953b1797d18d7725189.gz";
      r2 = "WJ/JM/SHA256E-s2403044181--3eda33530e796ba9282b814c3fd75d9ef08e09d56e85e2f521f093681b269b27.gz/SHA256E-s2403044181--3eda33530e796ba9282b814c3fd75d9ef08e09d56e85e2f521f093681b269b27.gz";
    }
    {
      site = "1.1 (059)";
      class = "tumours";
      pdx = false;
      r1 = "ZZ/7X/SHA256E-s2622142583--8c6ed96f104cca736778bbf59b44e49c4df5b00288ba82657e4f9ddc7cccbf8d.gz/SHA256E-s2622142583--8c6ed96f104cca736778bbf59b44e49c4df5b00288ba82657e4f9ddc7cccbf8d.gz";
      r2 = "mG/73/SHA256E-s2668099509--f37c4d780c2be2bf0fc2dc6ced8f8af9581264e4b7a1360207bf177068c19f95.gz/SHA256E-s2668099509--f37c4d780c2be2bf0fc2dc6ced8f8af9581264e4b7a1360207bf177068c19f95.gz";
    }
    {
      site = "1.1 (059)";
      class = "tumours";
      pdx = false;
      r1 = "V6/0w/SHA256E-s193315292--aad3f45c7fb728998261fcaf6a8d63fa420c8f45af819d14be097f2304269438.gz/SHA256E-s193315292--aad3f45c7fb728998261fcaf6a8d63fa420c8f45af819d14be097f2304269438.gz";
      r2 = "9X/Fq/SHA256E-s190344459--66ae60e7287c9036af3b35b50d6df89513ca59f70f6908d729868a6aed3f6adc.gz/SHA256E-s190344459--66ae60e7287c9036af3b35b50d6df89513ca59f70f6908d729868a6aed3f6adc.gz";
    }
    {
      site = "1.1 (059)";
      class = "tumours";
      pdx = false;
      r1 = "j0/wk/SHA256E-s175838335--fb930333c89d5e1e96d1ae6aeef28238741bc940bbfc76ddc7eb4ae101833fe0.gz/SHA256E-s175838335--fb930333c89d5e1e96d1ae6aeef28238741bc940bbfc76ddc7eb4ae101833fe0.gz";
      r2 = "K2/wq/SHA256E-s172289011--768878c8dcbdfc0985ba4621977c908d3f9c3f2e7f070cf1a72830f478481bcc.gz/SHA256E-s172289011--768878c8dcbdfc0985ba4621977c908d3f9c3f2e7f070cf1a72830f478481bcc.gz";
    }
    {
      site = "1.1 (059)";
      class = "tumours";
      pdx = false;
      r1 = "M6/XV/SHA256E-s317069673--c6a7ad4ec15689b4fb7273d1f351e23543537f19e1c403d4bc7fd1bfcec97c34.gz/SHA256E-s317069673--c6a7ad4ec15689b4fb7273d1f351e23543537f19e1c403d4bc7fd1bfcec97c34.gz";
      r2 = "vM/x6/SHA256E-s315268522--7ab90dd1146142c531ba91a4bb59175fe25894fc4c7038de54d0ef1673126eb7.gz/SHA256E-s315268522--7ab90dd1146142c531ba91a4bb59175fe25894fc4c7038de54d0ef1673126eb7.gz";
    }
    {
      site = "1.1 (059)";
      class = "tumours";
      pdx = false;
      r1 = "Vf/65/SHA256E-s464628990--aba3b68808e24c4010be3366e3f33a8b8062dbc35e28e1a315aceca667a533fe.gz/SHA256E-s464628990--aba3b68808e24c4010be3366e3f33a8b8062dbc35e28e1a315aceca667a533fe.gz";
      r2 = "fJ/32/SHA256E-s465713508--9bbf32aca6fc1788f06c15d805f35b1ceeee3a414369d4aa9b067ab39ebacfe1.gz/SHA256E-s465713508--9bbf32aca6fc1788f06c15d805f35b1ceeee3a414369d4aa9b067ab39ebacfe1.gz";
    }
    {
      site = "1.1 (059)";
      class = "tumours";
      pdx = false;
      r1 = "KJ/8M/SHA256E-s833970307--ec977a18283afd7964a122201ecc63b28ad16dacec1b31684b5e2835d208b32a.gz/SHA256E-s833970307--ec977a18283afd7964a122201ecc63b28ad16dacec1b31684b5e2835d208b32a.gz";
      r2 = "w8/9J/SHA256E-s835399404--c2b89a8032a0f183550bb82e4e87aebf36be345afede6586908b05b529ba7af0.gz/SHA256E-s835399404--c2b89a8032a0f183550bb82e4e87aebf36be345afede6586908b05b529ba7af0.gz";
    }
    {
      site = "1.1 (059)";
      class = "tumours";
      pdx = false;
      r1 = "Z7/gp/SHA256E-s327268072--5b156f9a4498e8c6479006ac0373fab0ade5cd4d8013e81a684820cd5f2c9177.gz/SHA256E-s327268072--5b156f9a4498e8c6479006ac0373fab0ade5cd4d8013e81a684820cd5f2c9177.gz";
      r2 = "Wp/Q4/SHA256E-s325428208--92106520d350cc6558a6701989a70e141f7b0ea78a847cda01c88b5158f2cb78.gz/SHA256E-s325428208--92106520d350cc6558a6701989a70e141f7b0ea78a847cda01c88b5158f2cb78.gz";
    }
    {
      site = "1.1 (059)";
      class = "tumours";
      pdx = false;
      r1 = "34/6m/SHA256E-s208192153--d6fee7985f91c97b1a75177521870696ac85fdb49c6c0e780a5f30e02a3f6f76.gz/SHA256E-s208192153--d6fee7985f91c97b1a75177521870696ac85fdb49c6c0e780a5f30e02a3f6f76.gz";
      r2 = "7x/Kv/SHA256E-s205685971--24d3b5f9b0fdf546e0d61e7a0c7a0dac2da188be4064d884d0c34fb114cd26cd.gz/SHA256E-s205685971--24d3b5f9b0fdf546e0d61e7a0c7a0dac2da188be4064d884d0c34fb114cd26cd.gz";
    }
    {
      site = "1.1 (059)";
      class = "tumours";
      pdx = false;
      r1 = "2g/PZ/SHA256E-s355815286--07675c880274f3dd184aea273028658eec0d649cc7c8f878faa3775c5b2b3458.gz/SHA256E-s355815286--07675c880274f3dd184aea273028658eec0d649cc7c8f878faa3775c5b2b3458.gz";
      r2 = "mK/8z/SHA256E-s354859973--392149453627539f6c7f9a779005fc6d38fad113f942d32d0a8ea25d5b9a9110.gz/SHA256E-s354859973--392149453627539f6c7f9a779005fc6d38fad113f942d32d0a8ea25d5b9a9110.gz";
    }
    {
      site = "1.1 (059)";
      class = "tumours";
      pdx = false;
      r1 = "wM/JK/SHA256E-s343835705--246592b10741b8a485194517392855a33eb3cf3a81df6b8b8fe405aed966900f.gz/SHA256E-s343835705--246592b10741b8a485194517392855a33eb3cf3a81df6b8b8fe405aed966900f.gz";
      r2 = "fw/03/SHA256E-s344516299--e71475fc6abc9d74152772e6092db89369234d1654daa66984e6d99849b11b5f.gz/SHA256E-s344516299--e71475fc6abc9d74152772e6092db89369234d1654daa66984e6d99849b11b5f.gz";
    }
    {
      site = "1.1 (059)";
      class = "tumours";
      pdx = false;
      r1 = "4X/3x/SHA256E-s681539543--f878d28e504832d44a89ba04be2501c15dacf714d52a24a3a7c207e9407559bd.gz/SHA256E-s681539543--f878d28e504832d44a89ba04be2501c15dacf714d52a24a3a7c207e9407559bd.gz";
      r2 = "k1/3M/SHA256E-s681848526--5dd4537bc1dbffde3eecefbe0c2c0b4ebdfe8a219c8b9cb0ecb732dea7333f16.gz/SHA256E-s681848526--5dd4537bc1dbffde3eecefbe0c2c0b4ebdfe8a219c8b9cb0ecb732dea7333f16.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 11.4.24:\nNo Sig6, low TMB. \nMSH2 AF 35% - heterozygous.  \nMHC Class I defect (with relation to HLA-A) \n\nSample meeting with Clare 16.11.2023\nPlan on FFPE block 1.1 (059): We have received fresh tissue x2, and recalled an ffpe block. We are struggling to get some tissue with a good amount of tumour purity.  \n\nWGS was performed and failed.  \n\nThis block is again on the low side. Should we attempt WES on this block? I think all the OCT slides have been used but I think there is still some tissue in the block that could be cut. That OCT block is the one with the highest tumour purity (that Grimmond said was <30%). Do WES on this instead? \n\nNew plan: Do WES-TWIST on this block. \n\nRC Meeting 24.08.2023\nDiscussed WGS report with SFRC data.\nWGS failed in Grimmond lab.\nSFRC WGS report is in agreement with this. Purity low at 25% and there are no notable genomic or somatic variants. \nSFRC copy number data look unreliable. CN spider plot has large yellow circle and warnings. Lots of focal deletions (e.g. ARID1A) but not sure if reliable due to model warnings. \nFit is very bad, overly segmented. Poor quality sample. \nTo look at MHC Class, Justin used HLA for reference. Could not find anything. Poor quality overall. There may be LOH, but that cannot be confirmed. \nCan mention to Clare that there may be LOH, but it's hard to confirm. Don't know how to confirm without another sample. \n\n\nClare's sample meeting 14.07.2023\nPlan for fresh tissue S2:  Send for WGS.  \nNote this can be a real cervical never responder, please check MHC Class I (attention Joep and Sean) URGENT \n\nClare's sample meeting 29.06.2023\nNothing to do for now, wait for new fresh sample from today's surgery.\n\nClare's meeting 2023.05.18\nPlan for fresh tissue S1: very low tumour purity  \nMake more OCT block from the snap frozen we have 2 vials? Yes  \nrecall biopsy block for WES? Yes (Rae emailed Monica 18.05.2023) ";
      blood_recall_history = "Blood to have with the biopsyy - 14June23\n\n14June23 - Biopsy cancelled - to have at next biopsy";
      urgency_details = "Never responder.";
      date_of_death = "01/2024";
      d_case_summary = "cervical adenocarcinoma- never responder";
      date_consented = "2023-04-04";
      tumour_type = "Cervical adenocarcinoma";
      tumour_details = "Cervical adenocarcinoma, Never responder";
      case_details = "33 years old female \n\n2022-12:\t Initial diagnosis cervical adenocarcinoma\nCervical Biopsy  \nIHC positive p16, mCEA  \nIHC negative : GATA3  \n\n2023-03: \tCisplatin weekly with concurrent radiotherapy, staging FIGO stage IB3, FFPE block 1.1 received  \nSurgery, fresh tissue S1 received  \nIHC positive: P16, HER2 2+  \nER and PR negative  \n\n2023-04:\t Brachytherapy \n\n2023-06: \tSurgery, fresh tissue S2 and blood B1 received ";
      patient_information_complete = "Incomplete";
      case_urgent = "Yes";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "19May23: Mar23 sample requested from PMCC by Monica\n13Jun23: Mar23 sample received from PMCC by Monica\n5Oct23: 29Dec23 sample requested from Monash Health by Haris.\n22Oct23: 29Dec22 sample received from Monash Health by Haris.";
      mp_subgroup_sfrcp4_new_id = "Rapid Progressor";
      patient_alive = "No";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01740";
  }
