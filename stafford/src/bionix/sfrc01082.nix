with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1D";
      class = "tumours";
      pdx = false;
      r1 = "xQ/zV/SHA256E-s10243176385--2b19321079ab13fed78193a81a2435d3c2ef7e93c7a5b0250d2aceda79b58abd.gz/SHA256E-s10243176385--2b19321079ab13fed78193a81a2435d3c2ef7e93c7a5b0250d2aceda79b58abd.gz";
      r2 = "Jk/41/SHA256E-s10307129135--5d8f16055a4e177535434712bf0e1710a37e584061c669efedbaf05e0c14dc4f.gz/SHA256E-s10307129135--5d8f16055a4e177535434712bf0e1710a37e584061c669efedbaf05e0c14dc4f.gz";
    }
    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "mJ/QM/SHA256E-s3399875817--d8bfc88cba2bbc9ec53cb9fc77a42ea305cdfe96caa491263eef947d286fcb28.gz/SHA256E-s3399875817--d8bfc88cba2bbc9ec53cb9fc77a42ea305cdfe96caa491263eef947d286fcb28.gz";
      r2 = "09/4f/SHA256E-s3662308763--1b7185c8da749a8631d308ad444e544f6b8d227a1ac2b7082d2d074160579685.gz/SHA256E-s3662308763--1b7185c8da749a8631d308ad444e544f6b8d227a1ac2b7082d2d074160579685.gz";
    }
    {
      site = "B1";
      class = "normals";
      r1 = "91/zF/SHA256E-s2637496982--8f1f021e6075b17814194e5f46e8bab796c529ad72502261ccf440813eb2aec4.gz/SHA256E-s2637496982--8f1f021e6075b17814194e5f46e8bab796c529ad72502261ccf440813eb2aec4.gz";
      r2 = "jj/Wq/SHA256E-s2708289037--6185fee2987e895726ffb56069b238e5243b351334363ce27fba7f0f9fddb0d7.gz/SHA256E-s2708289037--6185fee2987e895726ffb56069b238e5243b351334363ce27fba7f0f9fddb0d7.gz";
    }
    {
      site = "1H";
      class = "tumours";
      pdx = false;
      r1 = "11/wp/SHA256E-s10604950496--c07e41f0724514c9c91497a2dba639d2f74e230486192ddd80f79fef8b9508a1.gz/SHA256E-s10604950496--c07e41f0724514c9c91497a2dba639d2f74e230486192ddd80f79fef8b9508a1.gz";
      r2 = "KK/7k/SHA256E-s9483483721--3816bec697cfdb9d16443bb489d08a0d0d46eeac212624b33426329ddae04884.gz/SHA256E-s9483483721--3816bec697cfdb9d16443bb489d08a0d0d46eeac212624b33426329ddae04884.gz";
    }
    {
      site = "1H";
      class = "tumours";
      pdx = false;
      r1 = "w7/W2/SHA256E-s4921690924--f0e5385070dafd817ef221a110cb60a4a93022c0cec091e25abefe88d5b72968.gz/SHA256E-s4921690924--f0e5385070dafd817ef221a110cb60a4a93022c0cec091e25abefe88d5b72968.gz";
      r2 = "kf/V2/SHA256E-s4956621823--11d6f391dfa717b4950e80510124a38518e7c67f9a185a5e3947561111e941da.gz/SHA256E-s4956621823--11d6f391dfa717b4950e80510124a38518e7c67f9a185a5e3947561111e941da.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Broca meeting Clare/Amandine 07/07/2021\nSend SFRC01082_1D for Broca, priority cat 2";
      d_case_summary = "Dev Breast Cancer at 45 yo in 2008, Tr R/T only\n28/9/2012 Right nephrectomy and Right adrenalectomy by Jeremy Goad\nFound to have a 20mm papillary renal cancer and 22mm renal cell carcinoma at 49 yo  ie synchronous primaries, and a right cortical adenoma of the adrenal gland. All fully resected\n8/10/2013 Primary Peritoneal Carcinoma at 50 yo as had prior RRSO\n20/1/2015 Neuroendocrine tumour pancreatic tail at 52 yo treated with surgery\n17/1/2018 Myxofibrosarcoma right post chest wall at 55 yo, lower 3 ribs, \n2020 benign thyroid nodule";
      date_consented = "2018-04-26";
      tumour_type = "HGS primary peritoneal";
      tumour_details = "5 primaries: breast ductal ca 2008, 2x renal (clear cell, papillary) 2012, primary peritoneal ca (HGS) 2013, pancreatic NET (2015); MLH1 mutation, BRCA wild type";
      case_details = "MLH1 mutation, BRCA wild type\nSurvivor from PPC of 7 years";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2012 Tissue continaing renal carcinoma requested on 20-Jun-2020 from TissuPath via fax for Kirsty by Josh\n\n2012 Tissue received (1B) by Joshua on 10/07/2020\n\n2008 DCIS and 2013 HGSEC recalled from TissuPath via fax on 08/04/2020 for Kristy by Josh\n\n2013 Tissue received BLock 1D by Josh on 16082020, 2008 block not received\n\n2008 DCIS tissue Block iH received on 24/08/2020 b y Josh";
      mp_subgroup_sfrcp4_new_id = "3 or more primary";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = true;
    name = "SFRC01082";
  }
