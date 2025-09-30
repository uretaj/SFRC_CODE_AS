with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        samtools.sort = def samtools.sort {walltime = "48:00:00";};
        facets.reporting.preprocess = def facets.reporting.preprocess {
          mem = 50;
        };
      })
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "9p/mM/SHA256E-s88545330586--aa47f715822ed2079b004bae29b153d761f468a9c907e211cdbb9b062847809e.gz/SHA256E-s88545330586--aa47f715822ed2079b004bae29b153d761f468a9c907e211cdbb9b062847809e.gz";
      r2 = "K9/33/SHA256E-s96078211097--4aaf02186ddd0f8efed861ae0227a3781aa15c0700b95bf997f8270469c1c5ef.gz/SHA256E-s96078211097--4aaf02186ddd0f8efed861ae0227a3781aa15c0700b95bf997f8270469c1c5ef.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "PQ/Zj/SHA256E-s46543625237--432dd703e684e74b41455024c17b46165f59c07ae475e52a1b0221689f2f9f3e.gz/SHA256E-s46543625237--432dd703e684e74b41455024c17b46165f59c07ae475e52a1b0221689f2f9f3e.gz";
      r2 = "Pj/px/SHA256E-s49836899331--cf164174992558dbaea07e5fd40fbddedbd416080204819f37cc9c06e647aee4.gz/SHA256E-s49836899331--cf164174992558dbaea07e5fd40fbddedbd416080204819f37cc9c06e647aee4.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "Pp/MP/SHA256E-s5140174327--a38d0c8ade97aff52904b8383d7ec9866be3ae2084a6575288fdd676214b2d35.gz/SHA256E-s5140174327--a38d0c8ade97aff52904b8383d7ec9866be3ae2084a6575288fdd676214b2d35.gz";
      r2 = "qm/VZ/SHA256E-s5164124392--18e2f2749af0c2a6f7f0e0910a579ca3c975dcf6c1311f8017009de44fd512aa.gz/SHA256E-s5164124392--18e2f2749af0c2a6f7f0e0910a579ca3c975dcf6c1311f8017009de44fd512aa.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "GCT";
      meeting_discussions_follow_up = "Meeting notes 06.02.2020\nWGS report discussion: Gen do try 2D and 3D  \n\nMeeting notes 24.10.2019\nSend for WGS on this and all other GCT samples we have fresh tissue \nDo WES on all the other cases we have FFPE \nCheck literature for previous WGS studies on this tumour type.";
      d_case_summary = "Granulosa cell tumour of ovary. Blood taken. Fresh sample from surgery 18Sep19.";
      date_consented = "2019-09-20";
      tumour_type = "GCT (Granulosa Cell Tumour - including Sertoli Leydig Cell)";
      tumour_details = "Granulosa Cell Tumour of the Ovary";
      case_details = "GCT of Ovary, diagnosed on surgery on 12/11/2014, which had a complete response. POR positivein 80%, ERvery weak\n\nPET Scan 20/08/2019, showing R adnexal soft tissue recurrence. No nodal mets but with peritoneal deposit in anterior lower abdomen, MRI also showed recurrent pelvic tumours\n\nFurther surgery on 18/09/2019 showing recurrent GCT.";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01225";
  }
