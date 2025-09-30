with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        facets.reporting.preprocess = def facets.reporting.preprocess {
          mem = 25;
        };
      })
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Q9/Qv/SHA256E-s15264619655--e1f90312accaabeff316636b73dc68a5cff32ce37cdca3bb84701c9aa406bce1.gz/SHA256E-s15264619655--e1f90312accaabeff316636b73dc68a5cff32ce37cdca3bb84701c9aa406bce1.gz";
      r2 = "QG/kQ/SHA256E-s16611292124--530357a33c1bfb20293fd79136820c00668ccebc92dc1e23a409bbfc5e913388.gz/SHA256E-s16611292124--530357a33c1bfb20293fd79136820c00668ccebc92dc1e23a409bbfc5e913388.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "k0/w8/SHA256E-s15579139038--898f8c9f29752a3072b14192b49d81f9570db0cec4c2297b9fe705dcac6d8e4f.gz/SHA256E-s15579139038--898f8c9f29752a3072b14192b49d81f9570db0cec4c2297b9fe705dcac6d8e4f.gz";
      r2 = "G7/jM/SHA256E-s16948912637--d19df416e86a8ef526bfd030f500581712d185bb66ff8b69b8d39982543e53c8.gz/SHA256E-s16948912637--d19df416e86a8ef526bfd030f500581712d185bb66ff8b69b8d39982543e53c8.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "7q/6z/SHA256E-s15515680465--4035c964a612a2a137036d166aceb57579624355545a458397b67de1a1ee17d5.gz/SHA256E-s15515680465--4035c964a612a2a137036d166aceb57579624355545a458397b67de1a1ee17d5.gz";
      r2 = "J8/jk/SHA256E-s16885568058--54cadf58d84ad6301e3f2c2689737ca23951b3c57ffbbf59c4a0e3aa7c65579c.gz/SHA256E-s16885568058--54cadf58d84ad6301e3f2c2689737ca23951b3c57ffbbf59c4a0e3aa7c65579c.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "4P/Wk/SHA256E-s15642407631--c4596cc5416d50421b8135b678614db8529b6d4d8b8a79aecf54461da9b6e29e.gz/SHA256E-s15642407631--c4596cc5416d50421b8135b678614db8529b6d4d8b8a79aecf54461da9b6e29e.gz";
      r2 = "XM/3j/SHA256E-s17148653409--09a2c042c19e778099d7075c4a50f5ec73fa4c213278d17fc41057a6079b08c1.gz/SHA256E-s17148653409--09a2c042c19e778099d7075c4a50f5ec73fa4c213278d17fc41057a6079b08c1.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "9Q/9z/SHA256E-s27095063159--46800e304abd0eb60ad2b664a016916480c91481f2e892902b56ddc46976be31.gz/SHA256E-s27095063159--46800e304abd0eb60ad2b664a016916480c91481f2e892902b56ddc46976be31.gz";
      r2 = "Gx/Mj/SHA256E-s29579264685--11708d2afa509f6e1ff9cb741b72d15a9d079e583a6e060426d0bc938a4e3b52.gz/SHA256E-s29579264685--11708d2afa509f6e1ff9cb741b72d15a9d079e583a6e060426d0bc938a4e3b52.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "q5/wp/SHA256E-s27252883391--012e00b51f3812a489854cd1d61b6b58a48bc40d0b23f1e6285d0e81d960e574.gz/SHA256E-s27252883391--012e00b51f3812a489854cd1d61b6b58a48bc40d0b23f1e6285d0e81d960e574.gz";
      r2 = "53/qW/SHA256E-s29731752659--9d4051630d6df5e3309c6cc07724721e8361512e5efca38e1cfa2b5b8a1860f8.gz/SHA256E-s29731752659--9d4051630d6df5e3309c6cc07724721e8361512e5efca38e1cfa2b5b8a1860f8.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "98/3G/SHA256E-s27291265501--5c92545a0ad92589b2c36e70931744ebb9b5d6a1e59cf3fc29a151c544cf41f6.gz/SHA256E-s27291265501--5c92545a0ad92589b2c36e70931744ebb9b5d6a1e59cf3fc29a151c544cf41f6.gz";
      r2 = "7P/Q6/SHA256E-s29794133047--d165770274dd1444f197095b65ec56050245631cf6b91e35984b7f250b754a8f.gz/SHA256E-s29794133047--d165770274dd1444f197095b65ec56050245631cf6b91e35984b7f250b754a8f.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "mz/w5/SHA256E-s27342648277--8737d8b3069239ee8e564a197143a3d6d4f785c0a29e7b8e142dc6f887d50bad.gz/SHA256E-s27342648277--8737d8b3069239ee8e564a197143a3d6d4f785c0a29e7b8e142dc6f887d50bad.gz";
      r2 = "JJ/Mk/SHA256E-s30052387382--421456452807eaec9d8f5e7d2b345b2a100751eece1964ba0766bb72a2ae724e.gz/SHA256E-s30052387382--421456452807eaec9d8f5e7d2b345b2a100751eece1964ba0766bb72a2ae724e.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "fm/pZ/SHA256E-s6613926817--2f2e8cccceb564761c03f801805460fb30343cb95ceffc1e9e93a6ce56e06816.gz/SHA256E-s6613926817--2f2e8cccceb564761c03f801805460fb30343cb95ceffc1e9e93a6ce56e06816.gz";
      r2 = "pQ/Q9/SHA256E-s6805530226--b863f56e6265c360c8963ab689976aa95fd0f18fe063b20653018ecbe6bc0ee6.gz/SHA256E-s6805530226--b863f56e6265c360c8963ab689976aa95fd0f18fe063b20653018ecbe6bc0ee6.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "M4/w4/SHA256E-s8561151142--f392280aa218704a167d72cc6dcdb585b1d6c0aa6c08e6946fbc9a25e220ace3.gz/SHA256E-s8561151142--f392280aa218704a167d72cc6dcdb585b1d6c0aa6c08e6946fbc9a25e220ace3.gz";
      r2 = "vj/53/SHA256E-s8710659195--f70aaa52dae2a76dbd01b7cb7e8ee1516e53ddfcfd9189696c04340e3ef317aa.gz/SHA256E-s8710659195--f70aaa52dae2a76dbd01b7cb7e8ee1516e53ddfcfd9189696c04340e3ef317aa.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "HGSOC";
      meeting_discussions_follow_up = "RC Meeting 06.10.2022\nDiscussed BROCA results compared with WGS.\nDiscussion: nothing to note.\nRIF1 is resistance mechanism for BRCA1 \n\nBROCA meeting with Clare 04.11.2021\nOrganise BROCA on S1\n\nRC meeting 10.06.2021\nDiscussed WGS report. \nWEHI analysis: Most recent html uploaded 4 June. Purity given as 0.3. Docx summary uploaded Wed. \nDiscussion: Gayanie's estimate is not what is seen molecularly. \nGetting chemo, not PARPi right now.  \nOn the Myriad list - spleen or baseline? Clare to check. \nPurity is low, could affect CHORD prediction. \nTo check RIF1 in WEHI report. Functional protein is left at a normal level - probably not driving anything, not a clinically reportable finding. \nCan't report TMB (says 33) when purity is so low. \nKeeping with Grimmond report. \n\nClare meeting 08.04.2021\nSend S1 SF WGS, clinically urgent. Sean's lab closed this week of Easter. \nSOLO1 for 3 years, remission 3 years, now progressed. Looking for BRCA1 reversion ";
      myriad_report = "SFRC01383_MyriadResult_28Dec21_Redacted.pdf";
      d_case_summary = "HGSOC, Stage IIIC 07/2014.\n ER/PR , gBRCA1 \n- TAH   BSO (optimal debulking)\n- Adjuvant Carbo / Taxol x 6, 08-11/2014 (last 28/11/14)\n- Enrolled on SOLO-I trial 12/2014\n250mg BD (dose reduced from 300mg BD 04/2016 due to fatigue) on 23/12/16 (completed 3yrs)\n\nWGS on splenectomy specimen (provisional results 5/2021): Low cellularity, gBRCA1 MT, TP53 LoF MT. Low cellularity limits sensitivity. May be eligible for PETRA";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC";
      brca_report = "SFRC01383_BRCA reports.pdf";
      myriad_submission = "Yes";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "Myriad HRD Positive (BRCA1) score 46";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Super Responder";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01383";
  }
