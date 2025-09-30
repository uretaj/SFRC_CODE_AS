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
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "zJ/jm/SHA256E-s54054987779--21c0917b1d04927d0ccc69a90411a46158d2d395912d08f10da8d399c1915fc1.gz/SHA256E-s54054987779--21c0917b1d04927d0ccc69a90411a46158d2d395912d08f10da8d399c1915fc1.gz";
      r2 = "F0/7z/SHA256E-s59450038607--27ed23644ce97e1b13dfe5d2acb1d8d874b48d0dbeba8ac0527ea9a638fcd98e.gz/SHA256E-s59450038607--27ed23644ce97e1b13dfe5d2acb1d8d874b48d0dbeba8ac0527ea9a638fcd98e.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "Kp/Jq/SHA256E-s87026454274--1e1e40a78b0336a0157daab48292fcf1a3d52e51d712c0f86155f298bdadb9ec.gz/SHA256E-s87026454274--1e1e40a78b0336a0157daab48292fcf1a3d52e51d712c0f86155f298bdadb9ec.gz";
      r2 = "KW/z5/SHA256E-s96164673942--19c588d954d32851fec4353c52e4fac3a9007fe7c98aa16f463ef2c9de197c73.gz/SHA256E-s96164673942--19c588d954d32851fec4353c52e4fac3a9007fe7c98aa16f463ef2c9de197c73.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "endometrial other";
      meeting_discussions_follow_up = "RC Meeting 27.05.2021\nWGS Discussion: This is endometrioid intermediate grade endometrial cancer. \nPIK3CA, leading to trial is good option. \n\n2021.03.15\nS2 tissue reviewed - can make DNA. Send for WGS, urgent case for patient benefit.\n\n2021.02.25\nS1 tissue review - no tumour. Make a new OCT block and review again";
      date_of_death = "12/2021";
      d_case_summary = "stage 4 endometrial cancer 13/7/2020 - Poorly differentiated advanced endometrial cancer, lung and lymph node mets * vaginal biopsy (StVPath): high grade malignancy. CK7 , patchy synaptophysin and CgA, CD56-, Ki-67 90%  * pMMR, p53WT, ER/PR , PTEN IHC loss * 1L carboplatin and paclitaxel completed 11/2020, 11/12/2020 - CT = CR * Maintenance hormone therapy phx: HT Ischaemic bowel Osteoporosis COPD 2011 fHx Sister ovarian cancer Consented for Stafford Fox Rare Cancer Program (ARC Portal V2 consent) and provisionally for the VCCC precision medicine program. Rachel will determine if a fresh biopsy is viable\n\nWGS provisional report 5/2021: Two PTEN MT, PIK3CA - May be eligible for TAPISTRY: PIK3CA inhibitor?\nNeeds TSO500 for trial eligibility";
      tumour_type = "Endometrial cancer (other)";
      tumour_details = "endometrial cancer   high grade endometrial cancer (non serous) MMRP  Focal positivity for neuroendocrine markers";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01373";
  }
