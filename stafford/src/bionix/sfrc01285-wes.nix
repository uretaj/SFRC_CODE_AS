with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        samtools.sort = def samtools.sort {walltime = "48:00:00";};
        xHLA = def xHLA {mem = 30;};
      })
  ];
}; let
  samples = [
    {
      site = "8A";
      class = "tumours";
      pdx = false;
      r1 = "Mv/g1/SHA256E-s6924770416--8370ec36d07aa8f2b812db11658eff1438d9e88f032b33ca802f25ab1c2135b2.gz/SHA256E-s6924770416--8370ec36d07aa8f2b812db11658eff1438d9e88f032b33ca802f25ab1c2135b2.gz";
      r2 = "8M/33/SHA256E-s7156947268--6f5a26dae84a9085ebfc0fed9304be9ab6e8f48c09d9d79e20a219ea8ec57648.gz/SHA256E-s7156947268--6f5a26dae84a9085ebfc0fed9304be9ab6e8f48c09d9d79e20a219ea8ec57648.gz";
    }
    {
      site = "8A";
      class = "tumours";
      pdx = false;
      r1 = "5J/5v/SHA256E-s2849877758--e64ea66882b125ecaa080395be47d9f4754732589cbbba42bcc99946172ed48c.gz/SHA256E-s2849877758--e64ea66882b125ecaa080395be47d9f4754732589cbbba42bcc99946172ed48c.gz";
      r2 = "90/9X/SHA256E-s2917282750--bc4c065e8050309366eebcc8f94e46f6ec35b2c98f91ce0bfecac7b330bc6cc5.gz/SHA256E-s2917282750--bc4c065e8050309366eebcc8f94e46f6ec35b2c98f91ce0bfecac7b330bc6cc5.gz";
    }
    {
      site = "B2";
      class = "normals";
      pdx = false;
      r1 = "WJ/mQ/SHA256E-s41555137374--702b3a806c50649deec3bf38f6aed706f8bc6d0a0d56a34c7bfd137ae7f367a9.gz/SHA256E-s41555137374--702b3a806c50649deec3bf38f6aed706f8bc6d0a0d56a34c7bfd137ae7f367a9.gz";
      r2 = "3M/g3/SHA256E-s43941137748--c1271aebc35f5c1af969fe2f85e0988584eb80b4688144979371425d61b3f2e5.gz/SHA256E-s43941137748--c1271aebc35f5c1af969fe2f85e0988584eb80b4688144979371425d61b3f2e5.gz";
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
    capture = CREv2;
    predictNeoantigens = false;
    name = "SFRC01285";
  }
