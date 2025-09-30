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
      class = "tumours";
      site = "tumour-swp";
      prefix = "fastqs/AGRF_CAGRF17387_H3W32DSXX/SFRC_9_H3W32DSXX_TAATGCGC-GTACTGAC_L002";
      suffix = "";
      sha256-1 = "f96d15917702c0782ba8b637c7ca21c1807872c26f6897a59d73343f4fbfa583";
      sha256-2 = "5f9a1a829cda506c8c1f5a0e6471891922c3f22a65ea562081f568b77e3d5680";
    }
    {
      class = "tumours";
      site = "tumour-swp";
      prefix = "fastqs/AGRF_CAGRF16900_H3YJHDMXX/SFRC_9_H3YJHDMXX_TAATGCGC_L001";
      suffix = "";
      sha256-1 = "a31cac08fd8426a16b4106f013ccf8ecd0c7f4bc60b394aa53094c7513497900";
      sha256-2 = "1578497e4798a0f8abbdf5f6cc79d755f5af414c6149125eea6b5356c4fbd28c";
    }
    {
      class = "tumours";
      site = "tumour-swp";
      prefix = "fastqs/AGRF_CAGRF16900_H3YJHDMXX/SFRC_9_H3YJHDMXX_TAATGCGC_L002";
      suffix = "";
      sha256-1 = "6f4e99f57cbf98172925e1f427505210f00fc59b09eab32b3343673af9fa1a3c";
      sha256-2 = "4b7c38e87767c39fc147819bc2eb6466b85fc1ab414bbbf7bc496224c313cc10";
    }
    {
      class = "normals";
      site = "blood-swp";
      prefix = "fastqs/AGRF_CAGRF16900_H3YJHDMXX/SFRC_10_H3YJHDMXX_CGGCTATG_L001";
      suffix = "";
      sha256-1 = "ae2aeaf6b80917791668f8fbd973ea16b7d1a679443956103ae971d1189dd875";
      sha256-2 = "03a30da8893fa04103b75c7cb91c523e68ff5fcbe0b3f293dd19e14a131b22b7";
    }
    {
      class = "normals";
      site = "blood-swp";
      prefix = "fastqs/AGRF_CAGRF16900_H3YJHDMXX/SFRC_10_H3YJHDMXX_CGGCTATG_L002";
      suffix = "";
      sha256-1 = "cfad4ebf14c7d378152bb67b98c2c93919fa63f72e880b476a3d700163bcd2e9";
      sha256-2 = "1ff35a15fa48d5e63f5f260c13fa1491658e43a1016af0f3db95a1f82420fe30";
    }
    {
      class = "normals";
      site = "blood-swp";
      prefix = "fastqs/AGRF_CAGRF16900_H3YJHDMXX/SFRC_11_H3YJHDMXX_TCCGCGAA_L001";
      suffix = "";
      sha256-1 = "c898cc5229cbc76bc39f5d7a7db4af072beca39dca9df807bbfb0175ffe24e79";
      sha256-2 = "b6cc0c49391bb684f97859494c447e4f812344ae4941a070b85e4b2d7ce9af90";
    }
    {
      class = "normals";
      site = "blood-swp";
      prefix = "fastqs/AGRF_CAGRF16900_H3YJHDMXX/SFRC_11_H3YJHDMXX_TCCGCGAA_L002";
      suffix = "";
      sha256-1 = "5483594e3172062a6ad8cd879b5603bc640cbc4b89651e4cca4281f2fd5c0f2c";
      sha256-2 = "8badea7e01a30e3c30b0fefa295fb9cc19652d4319800a5efca85bf25389d2eb";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "HGSEC";
      meeting_discussions_follow_up = "Redcap meeting 13.03.2020\nThis patient had both iPREDICT and WGS done on a fresh liver biopsy. If we have some DNA left in the lab, send for BROCA. If no DNA left leave it. ";
      date_of_death = "03/2018";
      d_case_summary = "High grade serous papillary endometrial carcinoma of the endometrium\nDied 29/3/2018";
      date_consented = "2017-09-29";
      tumour_type = "HGSEC";
      tumour_details = "HGS papillary endometrial carcinoma of the endometrium";
      case_details = "High grade serous endometrial carcinoma of the endometrium, Died March 2018.\nBoth NOMINATOR and WGS were from a fresh liver metastasis biopsy.\nI met with patient and her husband and daughter today to discuss the results of the molecular testing of her high grade serous endometrial cancer. As you know, under the NOMINATOR and iPREDICT studies, we performed analysis using the Petermac Comprehensive Cancer Panel of a fresh biopsy of a liver metastasis. This showed what was thought to be an FGFR2 fusion, but this was subsequently NOT validated on FISH testing. Two somatic pathogenic mutations were identified, one in p53, consistent with the diagnosis of HGSEC and the other in a less well known gene, a phosphatase, PPP2R1A. Neither of these are actionable at this time. Mutation signature analysis was consistent with DNA repair defects, including homologous recombination defects. For this reason, and given the lack of other options, it would be reasonable to consider the well tolerated option of PARP inhibitor therapy, which certainly would be a consideration in high-grade serous ovarian cancer. We do not have a clinical trial available for which patient would be well enough (and prior exposure to immune checkpoint inhibitor therapy excludes her from one combination study).\n\n\nHer husband and daughter insist that the financial consideration is not an issue, rather they want the very best option for her, based on the information we have. Although signature analysis based on panel testing is limited in its interpretation, it is the best advice we can offer at this time. Under the WEHI Stafford Fox Rare Cancer Program we have also performed Whole Genome Sequencing on this sample and should have additional information to support the signature analysis next week prior to the family having to order the olaparib which you have given them the private script for.\nPCCC showed what was thought to be an FGFR2 fusion, but this was subsequently NOT validated on FISH testing. Two somatic pathogenic mutations were identified, one in p53, consistent with the diagnosis of HGSEC and the other in a less well known gene, a phosphatase, PPP2R1A. Neither of these were actionable. Mutation signature analysis was consistent with DNA repair defects, including homologous recombination defects. She received olaparib but was too unwell to benefit.";
      pre_analysis_mutations = "TP53, PPP2R1A";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01058";
  }
