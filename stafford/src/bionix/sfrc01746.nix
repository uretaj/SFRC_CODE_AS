with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "4z/w0/SHA256E-s42256643806--7135c2b211d41697c24877c12efb2bc9ede50b54b72db9928bead05b58731dc4.gz/SHA256E-s42256643806--7135c2b211d41697c24877c12efb2bc9ede50b54b72db9928bead05b58731dc4.gz";
      r2 = "m6/49/SHA256E-s44486918856--db1fe579d9787c0acee3f30658bf032a4c137508fd03a7df18eca1587c6eecf6.gz/SHA256E-s44486918856--db1fe579d9787c0acee3f30658bf032a4c137508fd03a7df18eca1587c6eecf6.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "jP/fJ/SHA256E-s95711847898--9f0317ef5e51ba980505bc6dfde34b93c599dac2bb62370091a14efcd26753bc.gz/SHA256E-s95711847898--9f0317ef5e51ba980505bc6dfde34b93c599dac2bb62370091a14efcd26753bc.gz";
      r2 = "Z5/0M/SHA256E-s103568690922--88556ff2e318c98c942793d18fd10cc9f24aabbd8b0aecec9dae7931962d9c65.gz/SHA256E-s103568690922--88556ff2e318c98c942793d18fd10cc9f24aabbd8b0aecec9dae7931962d9c65.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "qF/M2/SHA256E-s5204648738--12da32749464029c8f949e61995593ed50045c3d72fe6440551baeb991eea19f.gz/SHA256E-s5204648738--12da32749464029c8f949e61995593ed50045c3d72fe6440551baeb991eea19f.gz";
      r2 = "FJ/pP/SHA256E-s5293284648--fb577774359f2751051a030ccceebbaca036e3aa21414c69f84e44588c1d105c.gz/SHA256E-s5293284648--fb577774359f2751051a030ccceebbaca036e3aa21414c69f84e44588c1d105c.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC meeting 27.07.2023\nDiscussed WGS report with SFRC data.\nMED12 variant of note.\nThe ATM variants look like they are different haplotypes.\nGermline RAD51D not pathogenic .\n\nClare's meeting 2023.05.18\nPlan for fresh tissue S1: Plan: Extract DNA on OCT, send for WGS and Broca? Yes  ";
      d_case_summary = "Ovarian clear cell";
      date_consented = "2023-04-06";
      tumour_type = "Clear cell ovary";
      tumour_details = "Ovarian clear cell carcinoma";
      case_details = "54 years old female \n\n2021 \t\tRoutine ultrasound detected ovarian mass \nLeft oversea, no follow up  \n\n2022\t\t Returned to Australia and mass has increased. \n\n2023-04: \tInitial diagnosis, Blood B1 and fresh surgery tissue S1 received\nTAHBSO complete resection \nIHC positive: CK7, ber EP4, PAX8, Napsin-A \nIHC negative,  \n wt P53 expression, ER neg, PR1+ in 10% of tumours cells. \nnormal MMR ";
      brca_report = "SFRC01746_BRCAPanel_08Jun2023_Redacted.pdf";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01746";
  }
