with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "JG/MZ/SHA256E-s1564004973--bebd2e4e23df59a0bd1394f48f53a2bce38bc8dabfaeda03523480bce5b0aa70.gz/SHA256E-s1564004973--bebd2e4e23df59a0bd1394f48f53a2bce38bc8dabfaeda03523480bce5b0aa70.gz";
      r2 = "PG/3P/SHA256E-s1563308197--59f59da640b4a9e212ce0ab1a57cf838ad2cf478d0a7cc2d731bf73ac316ec22.gz/SHA256E-s1563308197--59f59da640b4a9e212ce0ab1a57cf838ad2cf478d0a7cc2d731bf73ac316ec22.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "W2/V6/SHA256E-s1549242106--223d1c95320727f3741ef52d5add93181f66bb0929cd33b9c5b135916a37aa9b.gz/SHA256E-s1549242106--223d1c95320727f3741ef52d5add93181f66bb0929cd33b9c5b135916a37aa9b.gz";
      r2 = "jZ/1K/SHA256E-s1550601447--f12ebe00c82e9eea376b90a36abbf57af7b0085162f32d381b92b6ef8c0624c8.gz/SHA256E-s1550601447--f12ebe00c82e9eea376b90a36abbf57af7b0085162f32d381b92b6ef8c0624c8.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "q7/9P/SHA256E-s5153100205--64a7493d71c00a9e8118d2aec7d20f3495f60963449aa63aeddf9c17e432ba31.gz/SHA256E-s5153100205--64a7493d71c00a9e8118d2aec7d20f3495f60963449aa63aeddf9c17e432ba31.gz";
      r2 = "QP/6w/SHA256E-s5122065220--401aaf473a71e378817d30125f8375b70f2fc9f0231e0e7ba38c327d957f158f.gz/SHA256E-s5122065220--401aaf473a71e378817d30125f8375b70f2fc9f0231e0e7ba38c327d957f158f.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "zg/0M/SHA256E-s5027762749--a9acc67b1314b04c87d2674b4e17426a7498cfe000d17d48e02e546113df838b.gz/SHA256E-s5027762749--a9acc67b1314b04c87d2674b4e17426a7498cfe000d17d48e02e546113df838b.gz";
      r2 = "3X/Qp/SHA256E-s5006254860--0fcf50c66aba36bd38aa63ef5e2a3b0b15c9cf04755e30320fd143924aad0e77.gz/SHA256E-s5006254860--0fcf50c66aba36bd38aa63ef5e2a3b0b15c9cf04755e30320fd143924aad0e77.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 23.5.24:\nHRD; Whole arm events \nDAXX common in uLMS, could be causing HRD signal in this case. \nKas to do methylation on this case \nCHD4 variant also supports HRD \nLikely endometrial, (based on TP53, PIK3CA, ARHGAP35) and no HPV or virus breakend to suggest cervical. \n\nClare's sample meeting 21.12.2023\nCS: PLEASE CHANGE THE DIAGNOSIS TO CERVICAL/ENDOMETRIAL CARCINOSARCOMA (COULD BE ENDOMETRIAL IE MOST LIKELY TO BE ENDOMETRIAL BUT SURGEONS FAVOUR PRIMARY CERVICAL RE POSITION - WE KNOW THAT MAY STILL HAVE STARTED IN THE ENDOMETRIUM; NOT ELIGIBLE FOR EPOCH AT THE MOMENT AS NEEDS TO HAVE HAD ONE LINE OF CARBO/PACLI - HAVING NOW, MAY BE ELIGIBLE IN THE FUTURE) \n\nPlan on fresh tissue S1-2: 25% tumour purity, I think the tumour purity is too low for TWIST WES. The FFPE block has 80-90% tumour purity. Are you happy with going ahead with WES twist using the FFPE block? \n\nYES THANK YOU. TWIST WES ON THE FFPE BLOCK - THIS MAY BE ENDOMETRIAL CARCINOSARCOMA AND PT MAY END UP ON EPOCH NEXT LINE OF TREATMENT\n\nClare's sample meeting 2023.10.05\nPlan on fresh tissue S1: WGS on OCT2? No, extract DNA from OCT then send for WES. If not enough, do the FFPE. ";
      d_case_summary = "Cervical/ednometrial carcinosarcoma";
      date_consented = "2023-09-15";
      tumour_type = "Cervical other";
      tumour_details = "CERVICAL/ENDOMETRIAL CARCINOSARCOMA \n As per Clare's sample meeting notes 21.12.2023";
      case_details = "67 F\nAug-23\tbiopsy of cervical mass suggested rhabdomyosarcoma\nSep-23\trepeat biopsy - CarcinoSarcoma\nCould be Cervical CS (location of mass), or Endometrial (more likely)\n\nAug-23\tbiopsy of cervical mass suggested rhabdomyosarcoma\nSep-23\trepeat biopsy - CarcinoSarcoma\n\tCould be Cervical CS (location of mass), or Endometrial (more likely)\nNov-23\tCarbo/Taxol, Pembrolizumab +/- Bevacizumab\n\tadjustments in chemo\nApr-24\tTAH BSO surgery";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01822";
  }
