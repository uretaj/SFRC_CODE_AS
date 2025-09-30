with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1.9_1";
      class = "tumours";
      pdx = false;
      r1 = "Jp/1x/SHA256E-s4609406852--50abc49fb2d77a9e2ae695d6571ba8a0d880ce0dffb19e0ff0c82774106802c9.gz/SHA256E-s4609406852--50abc49fb2d77a9e2ae695d6571ba8a0d880ce0dffb19e0ff0c82774106802c9.gz";
      r2 = "kz/5w/SHA256E-s4733715285--94165e173fd0bfcb2d7b23cd05bb8d426d398789cb71f61b7d5bd9f046e8d3eb.gz/SHA256E-s4733715285--94165e173fd0bfcb2d7b23cd05bb8d426d398789cb71f61b7d5bd9f046e8d3eb.gz";
    }
    {
      site = "1.9_1";
      class = "tumours";
      pdx = false;
      r1 = "qM/3G/SHA256E-s4738525659--e32f29b4e62d0578fe673e584b6cffb25011915e8dccbcaf34934f60f8d2f01e.gz/SHA256E-s4738525659--e32f29b4e62d0578fe673e584b6cffb25011915e8dccbcaf34934f60f8d2f01e.gz";
      r2 = "Gx/4f/SHA256E-s4869807326--eeff925d52694442dab8a9277051bcef1726fe448977171f3bd2f433da2988d2.gz/SHA256E-s4869807326--eeff925d52694442dab8a9277051bcef1726fe448977171f3bd2f433da2988d2.gz";
    }
    {
      site = "1.9";
      class = "tumours";
      pdx = false;
      r1 = "0W/7P/SHA256E-s4276653552--6ba608c57d436e2a9d4a2aed34ac040e8e5ece3efdcb5642892d4017dfe20745.gz/SHA256E-s4276653552--6ba608c57d436e2a9d4a2aed34ac040e8e5ece3efdcb5642892d4017dfe20745.gz";
      r2 = "pK/Vz/SHA256E-s4259333962--e2ff05fd6b199f9f3695f44b3578b1c2cd9619dab027ae1148971374c2a3b34f.gz/SHA256E-s4259333962--e2ff05fd6b199f9f3695f44b3578b1c2cd9619dab027ae1148971374c2a3b34f.gz";
    }
    {
      site = "1.9";
      class = "tumours";
      pdx = false;
      r1 = "w3/Fg/SHA256E-s4381873944--39c6f1da8cf0ee6dc981b35bb165320fa68d7aca950569f0b195b9bd92c03d09.gz/SHA256E-s4381873944--39c6f1da8cf0ee6dc981b35bb165320fa68d7aca950569f0b195b9bd92c03d09.gz";
      r2 = "x9/Wz/SHA256E-s4371276631--31725001b266f8fb1543c84a8da027e18032916fe9a186434ac2e157230feb9d.gz/SHA256E-s4371276631--31725001b266f8fb1543c84a8da027e18032916fe9a186434ac2e157230feb9d.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "fG/W4/SHA256E-s1608903174--eebda1e0ef3ade73f6f4f87229a2f7e7123fe87a0a772e581f73cd4115790d69.gz/SHA256E-s1608903174--eebda1e0ef3ade73f6f4f87229a2f7e7123fe87a0a772e581f73cd4115790d69.gz";
      r2 = "pw/9m/SHA256E-s1648691112--63b4d6978ef57d4b20b3b6058697d39be566afc8dd6930007156f27a574f9a9a.gz/SHA256E-s1648691112--63b4d6978ef57d4b20b3b6058697d39be566afc8dd6930007156f27a574f9a9a.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "gp/8f/SHA256E-s1682302246--6e28c55b896b792a6bbca6805645d8e56a33b832f051b270cf71b408180f9df2.gz/SHA256E-s1682302246--6e28c55b896b792a6bbca6805645d8e56a33b832f051b270cf71b408180f9df2.gz";
      r2 = "kf/w3/SHA256E-s1727283376--b6de36079aca238a0cd91fea926c60ad54d00ea37e8258dc38ee769af290b716.gz/SHA256E-s1727283376--b6de36079aca238a0cd91fea926c60ad54d00ea37e8258dc38ee769af290b716.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 2.11.2023:\n*Summary*\n\n    No reportable germline variants \n\n    Somatic PIK3CA missense variant \n\n    Somatic TP53 stop-gain variant \n\n    Somatic PPP2R1A missense variant \n\n    Somatic ARHGAP35 frameshift variant \n\n    Somatic SDHA frameshift variant \n\n    Somatic ATM splice variant \n\n    No CNV focal events. \n\n    HRD \n\n *Discussion*\n- Possible trial options? PIK3CA + HRD? \n- Plots look HRD. There is convincing LoH, on large blocks that do not correspond to chromosome arms, and telomeric instability on some chromosomes such as 19. \n\n\nClare's Meeting 23.03.2023\n-Need blood. \n-To do WES on FFPE Block 1.9 for HGSEC project.";
      d_case_summary = "Stage 1B high grade serous endometrial carcinoma , p53 mutation, POLE E negative, PTEN loss";
      date_consented = "2023-01-23";
      tumour_type = "HGSEC";
      tumour_details = "high grade serous endometrial carcinoma";
      case_details = "66F, Dx HGSEC, Stage 1B\n\n2022-11: Surgery: TLH/BSO, partial omentectomy (FFPE Block 1.9 - Endometrium)\nIHC positive: ER (1-2+, 20%), PR (2+, 20%), p16, ARID1A, \nIHC negative: p53 null (mutant), PTEN\npMMR: normal retained pattern of staining \n\n2023-02: Sections from FFPE Block 1.9 received.";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "13-Feb-2023: Nov2022 sample requested from Austin Pathology by Monica \n20-Feb-2023: Nov2022 sample received from Austin Pathology by Monica ";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01699";
  }
