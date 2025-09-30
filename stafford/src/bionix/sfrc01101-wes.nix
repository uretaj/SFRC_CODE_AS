with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "GV/5G/SHA256E-s20404441281--c4e43d1531435e977604234767de010c8e97ec03a3508fa5a22a6d6682132af5.gz/SHA256E-s20404441281--c4e43d1531435e977604234767de010c8e97ec03a3508fa5a22a6d6682132af5.gz";
      r2 = "1W/Vq/SHA256E-s21070479497--2e0a985a227e916538b9f3a0f6309b1755490eb74a9ebf0d26f9a9d6f56a3c21.gz/SHA256E-s21070479497--2e0a985a227e916538b9f3a0f6309b1755490eb74a9ebf0d26f9a9d6f56a3c21.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "qM/6q/SHA256E-s6482009873--7441f810343aaba769124778327db3712af262b386c9884f7b836aa1c9d1b28c.gz/SHA256E-s6482009873--7441f810343aaba769124778327db3712af262b386c9884f7b836aa1c9d1b28c.gz";
      r2 = "0m/vq/SHA256E-s6864447441--7f50bff9017f91b93ca0f237f7b971bd70c294d0e7da659e41ea3a92a08d31aa.gz/SHA256E-s6864447441--7f50bff9017f91b93ca0f237f7b971bd70c294d0e7da659e41ea3a92a08d31aa.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "NOM01070";
      genomes100_tumour_types = "gynae cancer other";
      meeting_discussions_follow_up = "Meeting notes 30.03.2020\nCheck with Gen Dall - enough tissue to do WES? Get Clare to update RedCap notes.\n\nMeeting notes 22.08.2019\nDecision:  Mini project for Gen:  Ask Emily about which cases are the 6 in this group - do we have blocks for all?  If not, recall them, look at c-myc and p53 expression \nThis case has had WGS, which of the others have had WGS so far? \nFind a way of analysing HLA status in all the cases - can we do this by WES (ask Tony)? \n\n\nMeeting notes 20.06.2019\nSlides from cervical/vaginal mass received 15-Mar-19 \nPlan? Validate the biology of this set \nIncluded in group of 6 cases (collated by Emily) \nDecided against WGS as only have FFPE \nValidate C-MYC and TP53 for all cases \nLook at HLA  ";
      date_of_death = "11/2018";
      d_case_summary = "Hysteroscopic R/O Fibroid, D";
      date_consented = "2018-08-07";
      tumour_type = "Gynae NET";
      tumour_details = "gynae NET";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "Cervical Vaginal Mass - RCH Lab Services\nSpecimen no: 18970604FS\nTissue requested 18-Feb-19\nSlides received 15-Mar-19\n__________________\nExtra tissue requested 28Oct19 (EO)\nSlides received 06Nov19(BM)";
      mp_subgroup_sfrcp4_new_id = "Rapid Progressor";
      histology_summary = "IHC:\n- synaptophysin, chromogranin, p16 diffusely positive\n- CK7: strong patchy positivity\n- p63: weak diffuse staining\n- CEA, CK20 negative\n- ki-67 index close to 100%\n";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    predictNeoantigens = false;
    name = "SFRC01101";
    capture = CREv2;
  }
