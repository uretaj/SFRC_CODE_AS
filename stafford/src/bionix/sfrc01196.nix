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
      prefix = "grimmond/s3/batch7/L2000154_S11";
      suffix = "_001";
      sha256-1 = "d2f53e538c60b182146dc77f2c5dc02b2a5449dec9bbf9269332806b8e12d454";
      sha256-2 = "78a466a57fff53fa5d2557f49db43b5d1d9d01aaa4e9246844109f6beaf07f18";
    }
    {
      site = "S1";
      class = "tumours";
      prefix = "grimmond/s3/batch7/L2000155_S12";
      suffix = "_001";
      sha256-1 = "e8a42bdb97b0d7203d1357c554c54ea57b2caae6b24bd983e6a494da23fb81d0";
      sha256-2 = "e5074b2b12de723193ca4ef2e0ace4e3b39de77634532fe2b67bbe065966c13b";
    }
    {
      site = "S1";
      class = "rna";
      r1 = "K0/xJ/SHA256E-s3683574413--13f16814fbcd2654b428c9a963e9291a154872e3b717908c25303a527fd8f5b2.gz/SHA256E-s3683574413--13f16814fbcd2654b428c9a963e9291a154872e3b717908c25303a527fd8f5b2.gz";
      r2 = "J4/gP/SHA256E-s3719889197--f44efc563e5c4b8ec9f8ee974b211d1be3d95104e670c99b1e5d5b2368eadf26.gz/SHA256E-s3719889197--f44efc563e5c4b8ec9f8ee974b211d1be3d95104e670c99b1e5d5b2368eadf26.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      other_id = "Complete 20/10/2020";
      genomes100_tumour_types = "non-gynae cancer";
      meeting_discussions_follow_up = "Emails Feb 2024. Our lab received the frozen tissue from Sean's lab that was used for WGS.\n\nEmail chain 24.02.2020\nDamien is organising some snap frozen tissue to be sent to Sean's lab directly for WGS. Sean is agreeing to cover the cost under the banner of his Cancer of Unmet Need Initiative. Amandine to bring blood to Sean's lab directly.";
      date_consented = "2019-06-27";
      tumour_type = "CNS cancer";
      tumour_details = "Grade 3 meningioma  MoST - Cdkn2a bialleleic deletion  FFPE WGS elsewhere Signature 6, EGFR over-expression  We have now completed WGS with Sean - see report - issued to Dr and Pt in April 2020";
      case_details = "WHO Grade III malignant meningioma of parasagittal sinus, diagnosed from debulking surgery in Sep 2018 after Hx of ataxia, dysphasia and generalised seizure.\n\nNov 2018 RTx, 70Gy/30#\n\nMarch 2019 MRI shows mildly increase in mass compared to nov 2018\n\nUndergone NGS through moST Study, and WES";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01196";
  }
