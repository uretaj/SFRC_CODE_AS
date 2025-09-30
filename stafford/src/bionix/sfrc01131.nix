with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {samtools.markdup = def samtools.markdup {mem = 15;};})
  ];
}; let
  samples = [
    {
      site = "S1";
      class = "tumours";
      prefix = "grimmond/s3/batch3/L1900775_S17";
      suffix = "_001";
      sha256-1 = "adef80b781941693a0eabee76412ae2ac688094898987e0455ca25036d3f8c35";
      sha256-2 = "464bb5ad513c35b07647e07d501870d77a525eac0af80b34d96a08a3f8de7acb";
    }
    {
      site = "B1";
      class = "normals";
      prefix = "grimmond/s3/batch3/L1900776_S18";
      suffix = "_001";
      sha256-1 = "cc689794b7f1005b3567d04719dc2429b1eadfe9bd7b2251c329b602aecb38b5";
      sha256-2 = "0d47800c138460e19aa4d2e9c0936e09e42b1a3a21512fdefe439d5116a6184b";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "ECS";
      date_of_death = "3/2019";
      date_consented = "2019-02-12";
      tumour_type = "Endometrial carcinosarcoma";
      tumour_details = "Endometrial Carcinosarcoma";
      case_details = "Metastatic, hormone receptor negative, MMR proficient endometrial carcinosarcoma (now deceased). First diagnosed in 10/05/2018.\n\nVimentin, caldesmin myogenin, desmin positive. CD10, SMA, p53, ER, PR negative\n\nD&C 10th of May, discovered carcinosarcoma.\nCommenced neoadjuvant chemotherapy (6 cycles of Carboplatin/paclitaxel) from July-Oct 2018\nCommenced weekly Paclitaxel (C1W1) in Jan 2019\n\nfor WGS as on last line of standard therapy\ntissue ASAP to SG lab (need results by mid April)\nDECEASED - unsure of plan";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "TAH BSO Royal Women's Pathology \nSpecimen no: 19970017HISTG - Block 1L \nCollected: 02-Jan-2019 \nRequested 27-Feb-19 (Emily)\nReceived slides (block 1L) 16-Apr-19";
      mp_subgroup_sfrcp4_new_id = "Rapid Progressor";
      histology_summary = "TAH BSO\n- p53 negative\n- ER, PR negative\n- HER2 negative\n- CD10, SMA, negative\n- Vimentin, caldesmin, myogenin, desmin positive\n\nEndometrial Curettings\n- IHC indicates low probability for Lynch Syndrome ";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01131";
    predictNeoantigens = true;
  }
