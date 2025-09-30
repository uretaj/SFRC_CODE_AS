with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1U";
      class = "tumours";
      pdx = false;
      r1 = "Fx/Wg/SHA256E-s1842265203--e880f7746abaca5f19d77667bccb756a87f5da197952353fc8b86a8f5a8a7175.gz/SHA256E-s1842265203--e880f7746abaca5f19d77667bccb756a87f5da197952353fc8b86a8f5a8a7175.gz";
      r2 = "xk/63/SHA256E-s1869432469--34c288cff22571eb44935c2408f8249cf21ccd07186fb74663987c07b0109c14.gz/SHA256E-s1869432469--34c288cff22571eb44935c2408f8249cf21ccd07186fb74663987c07b0109c14.gz";
    }
    {
      site = "1U";
      class = "tumours";
      pdx = false;
      r1 = "P0/Q8/SHA256E-s1718291088--b24ae0bf14959ff56e96fa264445dcab1c769520893e28cb222007c9fbec304e.gz/SHA256E-s1718291088--b24ae0bf14959ff56e96fa264445dcab1c769520893e28cb222007c9fbec304e.gz";
      r2 = "jJ/Kw/SHA256E-s1751957079--5a9cd93dba99e51d2c7a24eb73750113a7b36c9f4fa887700cb987a3ecb87afd.gz/SHA256E-s1751957079--5a9cd93dba99e51d2c7a24eb73750113a7b36c9f4fa887700cb987a3ecb87afd.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "0M/0M/SHA256E-s5037092758--8c8bb07c1279aac4076317694d4cf62a594d391cb8b0b2ec093ea6ca62754557.gz/SHA256E-s5037092758--8c8bb07c1279aac4076317694d4cf62a594d391cb8b0b2ec093ea6ca62754557.gz";
      r2 = "ZW/Gg/SHA256E-s5064151392--4d5db194971fe750139c4f79c61016a69df1564c5f0afcb5593ac1dab6ec1d7e.gz/SHA256E-s5064151392--4d5db194971fe750139c4f79c61016a69df1564c5f0afcb5593ac1dab6ec1d7e.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Z5/JF/SHA256E-s5328016594--8c9b9ff276a527758877c904fd7df49711327b09947917a3057c7cee5ca29256.gz/SHA256E-s5328016594--8c9b9ff276a527758877c904fd7df49711327b09947917a3057c7cee5ca29256.gz";
      r2 = "44/45/SHA256E-s5395040265--bf1b49adf122e571c3591d0e6bda5d1a5db15257336e457af7eaaf22eb1a234f.gz/SHA256E-s5395040265--bf1b49adf122e571c3591d0e6bda5d1a5db15257336e457af7eaaf22eb1a234f.gz";
    }
    {
      site = "1U";
      class = "tumours";
      pdx = false;
      r1 = "zk/7v/SHA256E-s3187161439--1d5d99a5e93544a2eb7eef630aabb488cff67a7098686b18645b6e199fb88205.gz/SHA256E-s3187161439--1d5d99a5e93544a2eb7eef630aabb488cff67a7098686b18645b6e199fb88205.gz";
      r2 = "qf/87/SHA256E-s3271923084--89a1605dd078230744900d9bedfaa34e5209ef2678e316a1bc6a8d8e17eac4a1.gz/SHA256E-s3271923084--89a1605dd078230744900d9bedfaa34e5209ef2678e316a1bc6a8d8e17eac4a1.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "j6/mX/SHA256E-s4874947294--ec3e2b0d7f9203cb75d67086ed3076489258ff86fdfbcbf88809705cc8cc5364.gz/SHA256E-s4874947294--ec3e2b0d7f9203cb75d67086ed3076489258ff86fdfbcbf88809705cc8cc5364.gz";
      r2 = "1Q/F2/SHA256E-s4960239427--154114f8e1e0a91c09530232d3c1967688fd2fc524e227bee406745bdfc57024.gz/SHA256E-s4960239427--154114f8e1e0a91c09530232d3c1967688fd2fc524e227bee406745bdfc57024.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 29.2.2024:\nLikely bad block. 90% tumour purity by pathologist, 20% by WES.\nQuality of DNA is the problem. \nTo be dMMR, would expect many variants. This is a poor quality sample. \n\nClare's Meeting 30.11.2022\nNeed Blood. Should be coming soon. Block 1U For WES (not urgent, but interesting).";
      blood_recall_history = "\"13Jan23 - DNA VM left\n15Feb23 - DNA VM left \n16May23 - DNA VM left\n26May23 - Clare will get at next Clinic appt 13Jun";
      d_case_summary = "FIGO grade 2 endometrioid endometrial carcinoma\nLoss of MLH1 and PMS2; ER/PR 90% staining";
      date_consented = "2022-10-02";
      tumour_type = "Endometrial cancer (other)";
      tumour_details = "FIGO grade 2 endometrioid endometrial carcinoma  Loss of MLH1 and PMS2; ER/PR 90% staining";
      case_details = "61F\n\n2019-11: Dx Endometrioid endometrial cancer.\nCervical biopsy:\nIHC positive: ER (strong, 90%), PR (moderate to strong, 95%), p16, vimentin\np53: Wild type\npMMR - normal expression seen.\n\n2019-12: Surgery: TLH/BSO. FFPE Block 1U\ndMMR - Loss of PMS2 and MLH1\nIHC positive: ER (strong, 90%), PR (strong, 90%)\n\n2020-01 - 2020-06: Provera\n\n2021-02: Radiation\n\n2021-05: Progressive disease\n\n2021-09 - 2021-12: Durvalumab\n\n2022-10: Progressive disease. Commenced Letrozole\n\n2022-11: Sections from FFPE Block 1U (2019-12 TLH/BSO) received.";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "10/10/2022: 2019 sample requested from Dorevitch pathology (Western Health) by Devindee.\n04/11/2022: 2019 slides received.";
    };
    inherit samples;
    name = "SFRC01662";
    capture = TwistV2HR;
  }
