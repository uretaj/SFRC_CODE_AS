with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "9K/Pg/SHA256E-s45985331227--5eea8c6cffd21bea5ab60833639a45ae9e2bc2b039b6dc730fce8738ae7c9dd3.gz/SHA256E-s45985331227--5eea8c6cffd21bea5ab60833639a45ae9e2bc2b039b6dc730fce8738ae7c9dd3.gz";
      r2 = "x4/3f/SHA256E-s48247930149--32aa4fb3f14b00158697d43d82a61d70c47e7b30ab4f46847d24d29b0baf56fc.gz/SHA256E-s48247930149--32aa4fb3f14b00158697d43d82a61d70c47e7b30ab4f46847d24d29b0baf56fc.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "Q6/Jv/SHA256E-s75298328223--786d4eb72101e5cd006cb0b80d1e773e04811441f786fe7d542f64f43455e716.gz/SHA256E-s75298328223--786d4eb72101e5cd006cb0b80d1e773e04811441f786fe7d542f64f43455e716.gz";
      r2 = "Mm/jw/SHA256E-s77992021483--e76e9d2201f3e0bc87cfa6ea4601abdf71ed01669bb1deb9652a860f6ae9cbf0.gz/SHA256E-s77992021483--e76e9d2201f3e0bc87cfa6ea4601abdf71ed01669bb1deb9652a860f6ae9cbf0.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "0z/WF/SHA256E-s9193493054--faddac6efca7aa9a708093ebd692100338736f5c71fa4f079bb36f155ebf8579.gz/SHA256E-s9193493054--faddac6efca7aa9a708093ebd692100338736f5c71fa4f079bb36f155ebf8579.gz";
      r2 = "2v/VX/SHA256E-s9175187899--9954d4e2095d175e1284f1bab6d590186431f04daa260610efc85435f774b425.gz/SHA256E-s9175187899--9954d4e2095d175e1284f1bab6d590186431f04daa260610efc85435f774b425.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "LGSOC";
      meeting_discussions_follow_up = "RC Meeting notes 17.02.2022\nDiscussed WGS report.\nPreviously, NF1 mutations were put on the Beigene BGB-283 trial, but those patients did not respond, so NF1 mut were taken off the eligibility list.  \n\nThe germline NF1 and somatic NF1 mutations, PLUS the BRAF mutation, is pathogenic if they co-occur. So this patient is eligible for the trials.  \nNF2 has nothing to do with NF1. \n\nNotes from Variant meeting: \nWGS - *** Super interesting \nGermline likely pathogenic NF1 variant. Not previously reported -> FCC referral \nSomatic inactivation of NF1. 9% expression is the residual \nInactivation mutation of NF2 with CNN LOH. NF2 mutation - lacks all functional domains - detected in 4% of LGSOC \nLow TMB \nBRAF MT, ?class III. Rely of dimerisation. Co-occur with other events including NF1 \nBRAF N58NY Class 3 mutations - co-occur with other BRAF mutations or NF1 loss \nFound in melanoma - others \n\nTrials: \nBGB-283 + MEKi \nShp2i + pembro \n\nMeeting with Clare 16.12.2021\nS1: Try to extract both DNA and RNA. First extract DNA on 15 slides and see if we get enough DNA. If not bring back for discussion.";
      date_of_death = "11/2022";
      d_case_summary = "Suboptimally debulked Stage IIIC LGSC - residual disease in rectosigmoid mesentery and splenic flexure mesentery. ER 80% 3 , PR neg\ncompleted 6 carbo/taxol/bev (taxol held for neuropathy) March 2021\n - commenced on Letrozole 5/10/21 post rising CA 125 and new CT showing low volume disease in the left pelvic side wall, as well as below the left hemidiaphram, as well as around the spleen and in the omentum";
      tumour_type = "LGSOC";
      tumour_details = "LGSOC";
      case_details = "Sub optimally debulked Stage IIIC LGSOC - residual disease in rectosigmoid mesentery and splenic flexure mesentery. ER 80% 3 , PR neg \n\n2020-10:\thysterectomy \n\n\t\tIHC positive: WT1, P16, ER, PR low positivity \n\n2021-03:\tcompleted 6x carbo/taxol/bev (taxol held for neuropathy) \n\n2021-10:\tstarted Letrozole \n\n2021-12: \tBlood B1 received and fresh tissue S1(biopsy) ";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01488";
  }
