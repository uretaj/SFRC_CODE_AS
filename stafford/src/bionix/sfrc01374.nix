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
      r1 = "x4/F4/SHA256E-s19167368921--afd380b724f661f709905de85e8aed0734154d2fcb685cab6442510ce87e52a6.gz/SHA256E-s19167368921--afd380b724f661f709905de85e8aed0734154d2fcb685cab6442510ce87e52a6.gz";
      r2 = "Fk/P7/SHA256E-s20401004971--621c37cacc2fca1ed12915da6495b134845f3a22281c1d807d6640fb9d581c15.gz/SHA256E-s20401004971--621c37cacc2fca1ed12915da6495b134845f3a22281c1d807d6640fb9d581c15.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "K6/Q5/SHA256E-s19563758868--ffb639bc496d84cdf74daa24df4facea0d1d02e7ac8eaf474b34ad195178d764.gz/SHA256E-s19563758868--ffb639bc496d84cdf74daa24df4facea0d1d02e7ac8eaf474b34ad195178d764.gz";
      r2 = "K0/7p/SHA256E-s20903166473--2caaca15992d84b67f901a5ef816a7349bf5a7921e1230f70dde8a6884429cc2.gz/SHA256E-s20903166473--2caaca15992d84b67f901a5ef816a7349bf5a7921e1230f70dde8a6884429cc2.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Q0/jq/SHA256E-s19765978549--77c6caf2bfb87be5c1cca0a7bda5c9f8ffab7c86a6c52b02ce9c6f44d18ab1b9.gz/SHA256E-s19765978549--77c6caf2bfb87be5c1cca0a7bda5c9f8ffab7c86a6c52b02ce9c6f44d18ab1b9.gz";
      r2 = "9M/37/SHA256E-s21225039965--17d6124fb987eeaf1f5d04cbfb7a727597bc6a1d244ae492bcc332f913db0ce4.gz/SHA256E-s21225039965--17d6124fb987eeaf1f5d04cbfb7a727597bc6a1d244ae492bcc332f913db0ce4.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "fF/KF/SHA256E-s19445150408--cec85c5c62685ec75a91c8db7ca17c4dba339761e3d649a9671679f1bfd3772b.gz/SHA256E-s19445150408--cec85c5c62685ec75a91c8db7ca17c4dba339761e3d649a9671679f1bfd3772b.gz";
      r2 = "qJ/7V/SHA256E-s20756569815--d9d08e187ed98e692e43d01e883e36b34e75aaadb63dcf032151425fce534a47.gz/SHA256E-s20756569815--d9d08e187ed98e692e43d01e883e36b34e75aaadb63dcf032151425fce534a47.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "68/mj/SHA256E-s28146004348--1f235cb672da90e170241f822e7b303d8b1508f383b68499fd6028dd069e019f.gz/SHA256E-s28146004348--1f235cb672da90e170241f822e7b303d8b1508f383b68499fd6028dd069e019f.gz";
      r2 = "pM/47/SHA256E-s29541998639--bfed990f0ced22aa0d25624ff82b31c2c53d2b6529f9d8c5c5714ed8f8caa291.gz/SHA256E-s29541998639--bfed990f0ced22aa0d25624ff82b31c2c53d2b6529f9d8c5c5714ed8f8caa291.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "06/k5/SHA256E-s28501138964--0accffc53eb9b9e400e72650c0fd4cf5ff8418c49ffc2326912ab2b858e46695.gz/SHA256E-s28501138964--0accffc53eb9b9e400e72650c0fd4cf5ff8418c49ffc2326912ab2b858e46695.gz";
      r2 = "1g/W1/SHA256E-s30029853704--6c49a1bb3d730a650371da25b4617b96b5e46362be385b51209428dd941d7b70.gz/SHA256E-s30029853704--6c49a1bb3d730a650371da25b4617b96b5e46362be385b51209428dd941d7b70.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "f7/V7/SHA256E-s28833476228--e8b30acb4f42459121807e906a02641e4ec83a25ce8ca5472b8ede2a0d061025.gz/SHA256E-s28833476228--e8b30acb4f42459121807e906a02641e4ec83a25ce8ca5472b8ede2a0d061025.gz";
      r2 = "J7/1x/SHA256E-s30556930748--06b430f7e90acb62ebb68665ebdea3cc4a7bcfe6be880318ce839fcefc9bf1be.gz/SHA256E-s30556930748--06b430f7e90acb62ebb68665ebdea3cc4a7bcfe6be880318ce839fcefc9bf1be.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "8k/0F/SHA256E-s28029855406--83c4b640761d548fd73bc0cab22a7b3bf69b5f6e1b83e8978725edb22b777d18.gz/SHA256E-s28029855406--83c4b640761d548fd73bc0cab22a7b3bf69b5f6e1b83e8978725edb22b777d18.gz";
      r2 = "5Z/z5/SHA256E-s29507756471--e48c59a400a54849626ea5713b78d5600c2027341ecdad7fcdbe39fc0ed2aad3.gz/SHA256E-s29507756471--e48c59a400a54849626ea5713b78d5600c2027341ecdad7fcdbe39fc0ed2aad3.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "endometrial other";
      meeting_discussions_follow_up = "Clare and Ratana meeting 2021.05.20\nDiscussed WGS findings.\nHigh TMB 27 (MSI instable, no MMR mutations, presume methylation of MLH1 and PMS2); ARID1A mutation = ATARI trial Royal Marsden; CCND1 mutation would increase susceptibility to ATRi, ? to Wee1i); ? HRAS - Beigene dual RAS/RAF MEKi check with Stephen Luen; PTEN mutation + LOH plus PIK3R1 mutation = mTORi\nCould do MYC-N WB (on tumour tissue). MYCN was mutated, more an activating mutation, not blocking action.\n\nRC Meeting 2021.04.29\nDiscussed WGS report.\nImmunotherapy - high TMB and MSI \nPTEN mutation highest frequency - PI3K pathway inhibitors? \n\n2021.03.11 Clare meeting\nHave 180 ng tumour DNA. Can do TSO500, or even WES to fully determine tumour origin.\nClare spoke with Sean, can submit for WGS. Ratana to do.\n\n2021.02.25 Clare meeting\nExtract DNA from all slides. Depending on amount, could do TSO500";
      date_of_death = "4/2021";
      d_case_summary = "68 yo female with grade 1 endometrial adenocarcinoma in 2018 and now has undifferentiated brain mets x 4. Two resected in FFPE. It is not clear what they are so I am recommending fresh biopsy of the pelvic/abodominal LN to see whether they are endometrial or not.\nShe has an interesting FHx - father with brain tumor at 44 yo and died and his sister with ?leukemia.\nBiopsy scheduled for 18 Feb 2021 at PMCC. This is for WGS to aid tissue of origin determination, as well as PDX etc. Bloods collected 2 March 2021.";
      tumour_type = "Endometrial cancer (other)";
      tumour_details = "grade 1 endometrial adenocarcinoma, now undifferentiated carcinoma metatases";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01374";
  }
