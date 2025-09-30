with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {samtools.sort = def samtools.sort {walltime = "48:00:00";};})
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "J2/jx/SHA256E-s94765853570--b6506e6d88f737adbfcad255b12ae23ffdd546b27babeefc2579cb73d4cb61bf.gz/SHA256E-s94765853570--b6506e6d88f737adbfcad255b12ae23ffdd546b27babeefc2579cb73d4cb61bf.gz";
      r2 = "ZP/9G/SHA256E-s100966329016--6de0dc55eafb5b9416a80de05c321c64b7e4a47465fc7516c6e207639effb2b1.gz/SHA256E-s100966329016--6de0dc55eafb5b9416a80de05c321c64b7e4a47465fc7516c6e207639effb2b1.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "FJ/qW/SHA256E-s89345903207--eacc20c1a28816b55b942c9bbbe85c32928f932596867995887f6712bb376dcc.gz/SHA256E-s89345903207--eacc20c1a28816b55b942c9bbbe85c32928f932596867995887f6712bb376dcc.gz";
      r2 = "kj/KW/SHA256E-s95340212530--1987c085de7666b9312cc12fc967bf43bf1876ed24781b79a8ba5937972cbd5f.gz/SHA256E-s95340212530--1987c085de7666b9312cc12fc967bf43bf1876ed24781b79a8ba5937972cbd5f.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "mM/Qg/SHA256E-s5849897810--da1ac96cc90045c0461137233b0d60536602db1f390cd2c5a268bf790001cf2c.gz/SHA256E-s5849897810--da1ac96cc90045c0461137233b0d60536602db1f390cd2c5a268bf790001cf2c.gz";
      r2 = "Qf/wJ/SHA256E-s6137092459--5a8cafdf08b965d4d8d97f0fa9afb7d86c1ee45e601f99f9ac65c509f505ce9b.gz/SHA256E-s6137092459--5a8cafdf08b965d4d8d97f0fa9afb7d86c1ee45e601f99f9ac65c509f505ce9b.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "HGSEC";
      meeting_discussions_follow_up = "BROCA meeting with Clare 15.10.2021\nOrganise BROCA on same sample as WGS ( S1)\n\nRC Meeting 2021.02.04\nWGS report discussed. Clare will email Joep/Sean to make sure they're not investigating this case further - so we can study the fusion in more detail. \nChromosome 19 is very messed up (around CCNE1 amp) \n\n2021.01.28\nBlock 1A - make DNA for WES for Holly's project.\n\n2020.08.06 Ratana and Clare meeting\nWas going to send DNA for BROCA. But if there is 2017 frozen tissue, can be sent for WGS (not BROCA). Trisha to find out about frozen sample.";
      blood_recall_history = "08Sep22 - Blood Booked for 12Sep22 (PMCCC) \n\n01Aug23 - Phone cal DNA message left";
      d_case_summary = "71 yo woman, Recurrent High Grade Serous Endometrial Cancer - MMR proficient, ER/PR  and HER2 neg\nDiagnosis: FIGO Stage 1A (grade 3 serous) LVSI Neg Ca Endometrium\nSuper responder";
      date_consented = "2020-07-26";
      tumour_type = "HGSEC";
      tumour_details = "HGSEC";
      case_details = "72F\n\n2017-06: Dx FIGO Stage 1A (grade 3 serous) LVS1 Nen carcinoma of the entometrium from curretings.\n\n2017-07: TAH/BSO, omentectomy, bilateral sentinal lymph node biopsy. Tissue frozen (S1)\nIHC positive: ER, 3+ 90%. PR 2+ 60%. \nIHC negative: HER2\npMMR\n\n2017-09: Completed adjuvant HDR vaginal vault brachytherapy.\n\n2019-10: Rising CA125. PET showed multimodal recurrence in para-aortic lymph node.\n\n2019-12: Diagnostic laparoscopy. Metastatic low volume peritoneal disease with biopsy consistent with HGS adenocarcinoma. \n\n2020-02 - 2020-06: 6x carbo/paclitaxel.\n\n2020-04: Partial metabolic response\n\n2020-06: Complete metabolic response\n\n2020-09: Frozen tissue S1 (from 2017 TAH/BSO) received in lab.\n\n2020-10: Blood B1 received. \n\nS1 & B1 DNA sent for WGS. Found to have BRAF fusion\n\n2021-05: Commenced BGB-283/MEKi trial (BeiGene).\nTreatment: PMC18/255 BGB-283 (Lifirafenib) + PD-0325901(Mirdametinib) Dose Escalation with Lead in (Part A - level 3C)\n\n2022-01: S1 DNA sent for BROCA\n\n---------------------------------------------------------------------------\n71 yo woman, Recurrent High Grade Serous Endometrial Cancer - MMR proficient, ER/PR  and HER2 neg\nDiagnosis: FIGO Stage 1A (grade 3 serous) LVSI Neg Ca Endometrium";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2019 HGSEC block routinely recalled from RWH  26102020 by Josh\nReceived by Warren 11/1/21";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01317";
    disableManta = true;
    disableGridss = true;
  }
