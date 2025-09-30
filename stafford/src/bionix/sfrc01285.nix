with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {samtools.sort = def samtools.sort {walltime = "48:00:00";};})
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "zF/5F/SHA256E-s34522071789--662472572dba92d940a6d510747d6a03a5c192069bb2424d1e4cc78587b6b40c.gz/SHA256E-s34522071789--662472572dba92d940a6d510747d6a03a5c192069bb2424d1e4cc78587b6b40c.gz";
      r2 = "Jj/Z9/SHA256E-s37739012297--9868ec6526d3f6363911344c114c24df43ac0c3f57d4d9bbf8e6c0d33b0f1db6.gz/SHA256E-s37739012297--9868ec6526d3f6363911344c114c24df43ac0c3f57d4d9bbf8e6c0d33b0f1db6.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "ZJ/0Q/SHA256E-s68641988498--d6708b872eba9bda34f92f5e0fa94ec2fdb2691857fbc4fcfec9334d345e7d9e.gz/SHA256E-s68641988498--d6708b872eba9bda34f92f5e0fa94ec2fdb2691857fbc4fcfec9334d345e7d9e.gz";
      r2 = "33/xz/SHA256E-s74134965961--0c704b6daac29bfc1f1d8a6ab11e6bb1825e942df9dc7bd155d09a1db016bd0a.gz/SHA256E-s74134965961--0c704b6daac29bfc1f1d8a6ab11e6bb1825e942df9dc7bd155d09a1db016bd0a.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "GCT";
      meeting_discussions_follow_up = "RC Meeting notes 15.10.2020\nNo actionable items in WGS report. Waiting for PDX.\n\nMeeting notes 11.09.2020\nS1 sample submitted for WGS this week. Block 8A review back, 95% tumour in circled areas. Kristy can choose to do nanostring; or Opal (later decision). WES would not add benefit to the patient, but for Multiple Primary project (double), add to discussion with bioinformaticians. \n\nMarch biopsy didnt go ahead.\nNow booked for July 8th at 11am Petermac CT.\nOnce biopsy H&E review, if tumour purity good go ahead  with WGS for treatment direction";
      d_case_summary = "Granulosa cell tumour of ovary 2011, possible multiple primary (thyroid, desmoid pelvis, spine, 2x brain) depending on nature of tumours, NF type 2. plus multiple primaries - Super survivor\nMelb Path 2017 - WES for neoantigens";
      date_consented = "2020-02-25";
      tumour_type = "GCT (Granulosa Cell Tumour - including Sertoli Leydig Cell)";
      tumour_details = "GCT and multiple primary (thyroid)  NF2 mosaicism causing 4 additional benign tumours";
      case_details = "Progressive granulosa cell tumour of the ovary.\nFour independent benign tumours related to NF2 mosaicism (this is not a straight forward germline variant, according to Genetic Health Queensland): 1983 desmoid of the lower anterior pelvis wall/bone resected at the Moe Hospital; 1999 parasaggital meningioma; 1999 acoustic neuroma (both diagnosed on MRI, treated with stereotactic radiotherapy); 2008 Cervical spine meningioma, \nFollicular variant of papillary thyroid cancer diagnosed in 2007, removed with right hemi-thyroidectomy and a completion left total thyroidectomy.\nHer granulosa cell tumour was diagnosed, in 2011. Initially her first ovary was removed and then three months later, a completion TAH, omentectomy and washings were performed, with no other tumour found and negative inhibin markers. Some six months later at laparoscopy washings were positive and she started on Arimidex. She remained on Arimidex until recurrence was determined in 2017 on imaging and she was switched to Femara. Her GCT has been progressing, with a CT CAP in Nov 2019 showing 4-5 nodules 2-3 cm in size, with some additional progression in March 2020 on CT CAP at Petermac.\n";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2017 GCT block recalled for Kirsty on 22/07/2020 via fax from Melbourne Pathology by Josh\n\n2017 GCT block 8A received on 30/07/2020 by Josh";
      mp_subgroup_sfrcp4_new_id = "2 plus 1 or more non-malignant";
    };
    aligner = "minimap2";
    inherit samples;
    predictNeoantigens = true;
    name = "SFRC01285";
  }
