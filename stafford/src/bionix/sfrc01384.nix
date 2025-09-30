with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "F7/6G/SHA256E-s12268917074--3727f9e3247669a0cb82276d9b9c81c9c8be824e296815f0b496da86e6f72dc6.gz/SHA256E-s12268917074--3727f9e3247669a0cb82276d9b9c81c9c8be824e296815f0b496da86e6f72dc6.gz";
      r2 = "5X/mp/SHA256E-s13357301796--24ec97a89359480f3db3e56874f8003bb7e96f73afe8bafd53388c7cb7851dfa.gz/SHA256E-s13357301796--24ec97a89359480f3db3e56874f8003bb7e96f73afe8bafd53388c7cb7851dfa.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "MK/vv/SHA256E-s12074470791--753e14afd5fa15706029d92821df57c23f547d8e3876a0dd5f7baed00bf23d3d.gz/SHA256E-s12074470791--753e14afd5fa15706029d92821df57c23f547d8e3876a0dd5f7baed00bf23d3d.gz";
      r2 = "MF/0k/SHA256E-s13061778064--80076316236e3c82a2f0633368bd7f8c68ab3912dbd57b576b772782f1eb855e.gz/SHA256E-s13061778064--80076316236e3c82a2f0633368bd7f8c68ab3912dbd57b576b772782f1eb855e.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "vk/Q2/SHA256E-s12223469753--2958092d28d58da58c3cffeee72d17eeef4552486aae7b16830c68653eacea4f.gz/SHA256E-s12223469753--2958092d28d58da58c3cffeee72d17eeef4552486aae7b16830c68653eacea4f.gz";
      r2 = "f1/4Z/SHA256E-s13394913398--b7b7a0ea4b951ddbed3215f61ef03a8594585c1d5c1ecd68ebf68c4d4f436c2d.gz/SHA256E-s13394913398--b7b7a0ea4b951ddbed3215f61ef03a8594585c1d5c1ecd68ebf68c4d4f436c2d.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Vx/4J/SHA256E-s11926648515--faf96a86c0f9de295e8909bb6b2f559501f34843573c68f17911b51a457775da.gz/SHA256E-s11926648515--faf96a86c0f9de295e8909bb6b2f559501f34843573c68f17911b51a457775da.gz";
      r2 = "z3/vq/SHA256E-s12978368500--478dcd37afe664a3cc436bafff53e33c3fcad20ce3a13874d08cf908fa8a1acf.gz/SHA256E-s12978368500--478dcd37afe664a3cc436bafff53e33c3fcad20ce3a13874d08cf908fa8a1acf.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "vv/2Z/SHA256E-s25343649074--1f18808c03cf0c6aab6082c469013ee065097930865ef9b07524bfefd603eeda.gz/SHA256E-s25343649074--1f18808c03cf0c6aab6082c469013ee065097930865ef9b07524bfefd603eeda.gz";
      r2 = "q1/W6/SHA256E-s27867402782--c8c631a20b61d13fb6796bc76a81028f1a669bb0b9a5ccfb102cb879d90dfd79.gz/SHA256E-s27867402782--c8c631a20b61d13fb6796bc76a81028f1a669bb0b9a5ccfb102cb879d90dfd79.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "54/32/SHA256E-s24725351519--ea2547e2f6426ef5bc6939194697337c2e350a37ff9649aa113e25bd8d93f42e.gz/SHA256E-s24725351519--ea2547e2f6426ef5bc6939194697337c2e350a37ff9649aa113e25bd8d93f42e.gz";
      r2 = "P1/G3/SHA256E-s27012261139--f0c9fb019ac884fd9013e039f12e41471ef0e379676e17b1c5edb195cd14c285.gz/SHA256E-s27012261139--f0c9fb019ac884fd9013e039f12e41471ef0e379676e17b1c5edb195cd14c285.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "mj/3g/SHA256E-s25149391659--c692ac3ee359834ce6b4acc21320faa5ae8e22c21046754c46a65a622897834d.gz/SHA256E-s25149391659--c692ac3ee359834ce6b4acc21320faa5ae8e22c21046754c46a65a622897834d.gz";
      r2 = "fV/j1/SHA256E-s27830575282--46cf7bde8cd321d160f32a3fe2bd08d787d519833570662c1d0234b3dd8a934d.gz/SHA256E-s27830575282--46cf7bde8cd321d160f32a3fe2bd08d787d519833570662c1d0234b3dd8a934d.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "gF/fF/SHA256E-s24483183780--12337f616e02342cd61e4527e1fd3e88ad4182c70d7430d0b7cf4bba22720a0a.gz/SHA256E-s24483183780--12337f616e02342cd61e4527e1fd3e88ad4182c70d7430d0b7cf4bba22720a0a.gz";
      r2 = "Jx/p1/SHA256E-s26886255576--1d365ff282cb40206a6ccc2f40cea58055bb60a6a9843d9b528a5ad35924cda4.gz/SHA256E-s26886255576--1d365ff282cb40206a6ccc2f40cea58055bb60a6a9843d9b528a5ad35924cda4.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "HGSEC";
      meeting_discussions_follow_up = "BROCA meeting with Clare 04.11.2021\nOrganise BROCA on S1\n\nEmails from Joep: There was a varied, maximum gain of 15 copies of 11q13. CCND1, FGF3, FGF4, FGF19 were not amplified (5 copies each in ~triploid tumour. There may be FGF IHC panels at Peter Mac, if think there will be overexpression.\n\nRC Meeting 05.08.2021\nDiscussed WGS report again, with html.\nGrimmond - 11q13 copy gain in WGS report.  \n11q13 amplification - this has been linked to a poor prognosis in other cancers and this region contains CCND1 and a number of FGF genes \n\nSFRCP analysis: \nHigh TMB (compared with low TMB in Grimmond report) - this is not reportable \nSomatic variants: TP53, PIK3CA (hotspot) \nMutational signatures: Sig 3 dominant at 24% but CHORD indicates HR proficient \nWould have to wait for recurrence for potential RNA data. \n\nRC Meeting 24.06.2021\nDiscussed WGS report (S1 and S2 OCT DNA was submitted).\nHR Proficient \nPIK3CA not a hotspot, UV really, conflicting results . \nBRIP1 - unclear. No secondary evidence of HRD. \nChase up the sequencing from Grimmond lab to look for other drivers.  \nWould like RNA - try to find frozen tissue. Adam Pendelbury, Mercy. \n\nClare meeting 08.04.2021\nS1 FFPE block reviewed. Tiny areas of good tumour. S1 and S2 OCT blocks have been submitted to Histology. Bring back up when reviewed by Gayanie.\n\nClare's meeting 2021.04.22\nPlan: Microdissect S1 and S2 (OCT), submit for WGS \nAsk Angela if there is a HER2 result ";
      myriad_report = "SFRC01384_MyriadResult_23Dec21_Redacted.pdf";
      date_of_death = "9/2021";
      d_case_summary = "66 year-old female with relapsed serous endometrial  cancer 12 months post PORTEC with biopable disease. Has an omental cake? To collect fresh tissue from biopsy at the Austin on 9 March 2021. Pt consented to giving only 1 set of blood sample- collected on 9/03/2021 but won't give any more.";
      tumour_type = "HGSEC";
      tumour_details = "HGSEC";
      case_details = "66yo woman\n\n2020: diagnosed with stage 2 high grade uterine serous carcinoma. \n\n2020-02: Treatment via hysterectomy + BSO and adjuvant pelvic chemoradiotherapy and vaginal brachytherapy\nHER2 IHC 2+ (equivocal) but HER2 SISH non-amplified\n\n2021-03: Blood B1 received. Tissue S1 and S2 received from core biopsy.\n";
      myriad_submission = "Yes";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "Myriad failed, not ovarian";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01384";
  }
