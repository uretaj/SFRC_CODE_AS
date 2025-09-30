with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {octopus.callSomatic = def octopus.callSomatic {mem = 120;};})
  ];
}; let
  samples = [
    {
      site = "1.14";
      class = "tumours";
      pdx = false;
      r1 = "7k/7g/SHA256E-s135207063332--e545d7f53bfaa3ac486377e1a3e0d8fd6d9d66f271d29e719f956f374ba9c268.gz/SHA256E-s135207063332--e545d7f53bfaa3ac486377e1a3e0d8fd6d9d66f271d29e719f956f374ba9c268.gz";
      r2 = "WM/Fj/SHA256E-s136815280030--94a3ff83e255ffbce0d484c318d72ca9722fdc15df876656befd0a83b909bcf2.gz/SHA256E-s136815280030--94a3ff83e255ffbce0d484c318d72ca9722fdc15df876656befd0a83b909bcf2.gz";
    }
    {
      site = "1.14";
      class = "rna";
      pdx = false;
      r1 = "X6/7m/SHA256E-s3253214945--6432f0d30c023eff8231663a693da5dd5cc50735bd1c46c3c34426b1febd1ea9.gz/SHA256E-s3253214945--6432f0d30c023eff8231663a693da5dd5cc50735bd1c46c3c34426b1febd1ea9.gz";
      r2 = "4K/7K/SHA256E-s3239276712--3df3ec2c71b1b610aa4a73810bb498440968957bec57b7dd24f181e7ac678301.gz/SHA256E-s3239276712--3df3ec2c71b1b610aa4a73810bb498440968957bec57b7dd24f181e7ac678301.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "v3/XM/SHA256E-s18811427381--e57022394617fca2296c68f5f8f1111d00105d05d1b7f919d57b91a9b2669a1b.gz/SHA256E-s18811427381--e57022394617fca2296c68f5f8f1111d00105d05d1b7f919d57b91a9b2669a1b.gz";
      r2 = "GQ/2F/SHA256E-s20023667551--8d7505ef6d07643f43d0d5154394d2b76c56e870aaa1f1f8fef17fa19a7a42b0.gz/SHA256E-s20023667551--8d7505ef6d07643f43d0d5154394d2b76c56e870aaa1f1f8fef17fa19a7a42b0.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Jf/f5/SHA256E-s11720268379--455ee625b9ac9c7aad26b70e0d0031e4fa2983b480ae79e6b1adf6c75092d6f5.gz/SHA256E-s11720268379--455ee625b9ac9c7aad26b70e0d0031e4fa2983b480ae79e6b1adf6c75092d6f5.gz";
      r2 = "QX/zm/SHA256E-s12324455201--591ea297a6c8d006b876c4ada11a619456a80c14a3195c2d54c7c4948a4d936d.gz/SHA256E-s12324455201--591ea297a6c8d006b876c4ada11a619456a80c14a3195c2d54c7c4948a4d936d.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 27.10.2022\nDiscussed WGS report (Grimmond + SFRC).\nThey reports look very different.\nSMARCA4: different versions of transcripts, might be an identical genomic change: Justin. \nMatt and Justin to look into this. \n\nClare's Meeting 26.08.2022\n-Ask Mandy for SMARCA4/BRG1 IHC from Jan 2022 on EPIC \n-WGTS on DNA+RNA. Ask if doing fusion panel \n AFTER the WGTS. Nanostring if enough RNA \n leftover.\n-Ratana to check the other ovarian small cell cases \n 01252, 01510, 01586, another possible case from \n deceased patient in WA- currently no tissue) Ratana \n to check for RNA, if not, make some. Kristy to do \n nanostring. Potential for Opal too. ";
      d_case_summary = "SCCOHT";
      date_consented = "2022-04-05";
      tumour_type = "SCCOHT";
      tumour_details = "Small cell carcinoma of the ovary hypercalcaemic type (SCCOHT)";
      case_details = "29yo woman\n\n2021-12: Diagnosed (at least) Stage IIB small cell carcinoma of the ovary, hypercalcaemic type.\n-Surgery: RSO. Ovary fixed and blocked (Block 1.14)\n-Histopath:\n -WT1: Diffusely positive\n -Synaptophysin, calretinin, CD10, AE1/3, Cam5.2: \n  Patchy/focal staining.\n -p53: Wild type (no control tissue present)\n -p16: Mosaic\n -Inhibin, chromogranin, Glypican3, OCT4, AFP, \n CD30, CD20, CD3, myeloperoxidase, S100: Negative\n\n2022-01: Commenced chemotherapy (PAVEP regimen)\n\n**SMARCA4/BRG1 IHC pending as of 2022-01.\n\n2022-05: Blood B1 received. Sections from Block 1.14 (2021-12 RSO - Ovary) received\n\n2022-07: Sample H&E slide received";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      fcc_report = "SFRC01573_FCCReport_11Mar22_Redacted.pdf";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "16/05/2022: Dec 2021 sample requested from Eastern Health Pathology by Devindee. \n31/05/2022: Dec 2021 sample slides received from Eastern Health Pathology by Devindee. \n23/06/2022: Dec 2021 sample H&E slide requested from EH pathology by Devindee.\n28/07/2022: Dec 2021 sample H&E received from EH pathology by Devindee. ";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01573";
  }
