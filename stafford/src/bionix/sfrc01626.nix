with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        facets.reporting.preprocess = def facets.reporting.preprocess {
          mem = 30;
        };
      })
  ];
}; let
  samples = [
    {
      site = "B2";
      class = "normals";
      pdx = false;
      r1 = "0x/zj/SHA256E-s53897833752--46de252b08355c1b902b39ef7bde0e6f2fe2cfc5b57386c82414a547eb1437be.gz/SHA256E-s53897833752--46de252b08355c1b902b39ef7bde0e6f2fe2cfc5b57386c82414a547eb1437be.gz";
      r2 = "kK/v6/SHA256E-s57426590730--9d2180147e8ada9d965c02153c68b6927855fb479c24800c0edf2d4bd5a127ed.gz/SHA256E-s57426590730--9d2180147e8ada9d965c02153c68b6927855fb479c24800c0edf2d4bd5a127ed.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "ZG/9J/SHA256E-s113967363291--a1555c203f349ae8f53e10e1b6cfcdc6d2b615f16865f33f30fa55ddc2d6db0a.gz/SHA256E-s113967363291--a1555c203f349ae8f53e10e1b6cfcdc6d2b615f16865f33f30fa55ddc2d6db0a.gz";
      r2 = "9g/mm/SHA256E-s121724112222--7c0b204b075bc891fecc9b6da280353145a77d046cd070ae184b3e3f57d52681.gz/SHA256E-s121724112222--7c0b204b075bc891fecc9b6da280353145a77d046cd070ae184b3e3f57d52681.gz";
    }
    {
      site = "S2";
      class = "rna";
      pdx = false;
      r1 = "g3/gf/SHA256E-s4214154255--b84cd5873de647b6d234179c8deefd63637ce89c83c79a899472563ca2457afa.gz/SHA256E-s4214154255--b84cd5873de647b6d234179c8deefd63637ce89c83c79a899472563ca2457afa.gz";
      r2 = "Wf/Fw/SHA256E-s4197044838--645e5e515272eaa0a5653a1c89d2fe731ad64efa35ba1571798b8072cb497710.gz/SHA256E-s4197044838--645e5e515272eaa0a5653a1c89d2fe731ad64efa35ba1571798b8072cb497710.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare's Meeting 01.11.2022\nBlock A12 is from baseline Dx. Leave for now. \nGCT project may be for Rosie McBain. DNA could be made in the future. \n\nRC Meeting 27.10.2022\nDiscussed WGS report (Grimmond and SFRC).\nNone of the other 13 GCT cases with WGS have FGFR1 activating mutation.\nFGFR1 region overlaps part of the PIK3CA pathway (PIK3CA mutations recurrent in GCT as well), so is biologically consistent. Trial of potential benefit. \nNo luck in developing PDX and therefore cell lines for GCTs. \n\nClare's Meeting 26.08.2022\nWGS on S1 tissue, make report urgent.";
      d_case_summary = "Recurrent ovarian granulosa cell, diagnosed Jun2020.";
      tumour_type = "GCT (Granulosa Cell Tumour - including Sertoli Leydig Cell)";
      tumour_details = "granulosa cell tumour of ovary, recurrent";
      case_details = "2020-05: Hysteroscopy D&C, myosure resection of endometrium following menorrhagia investigation via CT scan.\n\n2020-06: Diagnosed Adult Granulosa Cell Tumour\n-Surgery: Laproscopy, subtotal hysterectomy, LSO, R \n salipingectomy. Ovary fixed and blocked (Block A12)\n -IHC positive: CKAE1/AE3 (weak patchy), calretinin \n  (variable positive), Inhibin (patchy positive)\n -IHC negative: Cromogranin, synaptophysin, CD10.\n -Ki67: estimated 5 - 20%\n\n2020-09: Surgery: Laprascopic right oophorectomy and peritoneal washing.\n\n2022-05: Recurrent disease with a complex cystic pelvic mass and peritoneal nodules following rising Inhibin B between 2021-02 to now.\n\n2022-07: Blood B1 received (do not use due to miscount of WBCs)\n\n2022-08: Blood B2 received. Fresh tissue S1 & S2 received.\n\n2022-09: S2 and B2 DNA Sent for WGS:\nMutations in FOXL2, FGFR1, TERT, KMT2D detected.  \n\n2022-09: Sections from Block A12 (baseline Dx) received.";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "02/09/2022: 2020 sample tissue requested from ACT pathology by Devindee\n28/09/2022: 2020 sample slides received. ";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01626";
  }
