with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        minimap2.align = def minimap2.align {walltime = "48:00:00";};
        gridss = with gridss; {
          assembly = def assembly {walltime = "48:00:00";};
          callsomatic = def callSomatic {mem = 50;};
        };
      })
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      prefix = "fastqs/AGRF_CAGRF18906_HFFY2DSXX/SFRC01067_B1_HFFY2DSXX_GGACTTGG_L003";
      suffix = "";
      hash1 = "3cxwj7f9lgy2ckj08pkmglpkvl5fab8mq1kdf8wqqbncl2adhc4nm0i417ch80sjsapn2djqxy3hi6zbmvc5lwrwshsdq55fvs8hcgm";
      hash2 = "3aafrfc9k5brmfc5ddjvpnmimmbxlxlq7p17sqn5wf642d9sr188p44w0p9bnjy5pnx76ilyn9m3wm2kabwzr31d4b4ann7arwk9l8r";
    }
    {
      site = "FX1A";
      class = "tumours";
      prefix = "fastqs/AGRF_CAGRF18906_HFFY2DSXX/SFRC01067_FX1A_HFFY2DSXX_TCCATTGC_L003";
      suffix = "";
      hash1 = "38s47g7mdazhf0wl8rkrd5ganyfhpw8an1wayq7hxksgnqqr28kb9ra3mqvdf7qj453wyw9js0x853pcir8qkxi8j7dq06gxwcyky4q";
      hash2 = "1x1202npxs8yncjiznycy7ss68mgi2hw4i5m5l5y0q31h33yw9l7ka2fd0bg9k45q4p2bjrvzf1b3f2m1nxykpjbncrllm9wvzyn65j";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Redcap meeting Clare/Amandine 16.03.2020\nEmailed Damien to chase up WGS report and to find out if this patient is still alive.";
      date_consented = "2017-12-18";
      tumour_type = "Other rare";
      tumour_details = "Neurocytoma";
      patient_information_complete = "Incomplete";
      other_tumour_type = "Neurocytoma";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01067";
  }
