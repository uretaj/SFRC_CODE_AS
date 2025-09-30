with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        bwa.align = def bwa.align {walltime = "48:00:00";};
        minimap2.align = def minimap2.align {walltime = "48:00:00";};
      })
  ];
}; let
  samples = [
    {
      site = "1B";
      class = "tumours";
      pdx = false;
      r1 = "Vg/Zq/SHA256E-s83674025717--3c62fb966d0bc62950b7228cae28f8c6b089989eab4e289927d705fd22085372.gz/SHA256E-s83674025717--3c62fb966d0bc62950b7228cae28f8c6b089989eab4e289927d705fd22085372.gz";
      r2 = "w5/Zm/SHA256E-s84993479091--99f2c87ae031c2bdffe3c36c7207b5a695c5b39a1fe9a3d1a5802d350245450b.gz/SHA256E-s84993479091--99f2c87ae031c2bdffe3c36c7207b5a695c5b39a1fe9a3d1a5802d350245450b.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "j2/0g/SHA256E-s39229587470--a2c90c15ce3a9b9e63d5ddbd2326338ad7cfcbda78e60d064437f419e372de37.gz/SHA256E-s39229587470--a2c90c15ce3a9b9e63d5ddbd2326338ad7cfcbda78e60d064437f419e372de37.gz";
      r2 = "pk/QP/SHA256E-s39887081924--2ffe3b75966047ca4129bcae6340ae69c35cbc020a86cf42cebaf73cf0fc9c12.gz/SHA256E-s39887081924--2ffe3b75966047ca4129bcae6340ae69c35cbc020a86cf42cebaf73cf0fc9c12.gz";
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
    name = "SFRC01101";
    predictNeoantigens = true;
    disableGridss = true;
  }
