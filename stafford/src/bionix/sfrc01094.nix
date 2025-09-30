with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        minimap2.align = def minimap2.align {walltime = "48:00:00";};
        samtools = with samtools; {sort = def sort {walltime = "48:00:00";};};
        octopus.callSomatic = def octopus.callSomatic {mem = 180;};
      })
  ];
}; let
  samples = [
    {
      class = "normals";
      site = "B1";
      prefix = "grimmond/s3/batch2/SFRC01094/L1900017_S1";
      suffix = "_001";
      sha256-1 = "c6004ca50ef6f9bfecdbf2439b6fe238f38730491c64386df4f55282b7f01bef";
      sh256-2 = "f5262525191ef088c356a003d42901cd90ca5f6fe25d3ac7a00c40f888acfe68";
    }
    {
      class = "tumours";
      site = "S1";
      prefix = "grimmond/s3/batch2/SFRC01094/L1900018_S2";
      suffix = "_001";
      sha256-1 = "0f0647b0b2b5df33eeb85ed3955cfc6004598566dade4887be302a85a6f96a7b";
      sh256-2 = "6e561b0ea7c9f4831cee3c6b4fffe0b0c1f602b8527dae333b6f5d82a3ec5300";
    }
    {
      site = "S1";
      class = "rna";
      r1 = "zx/J2/SHA256E-s2327617817--e03b366e6a3a5fd689963c1d01aa26e6f4015991602ade535002c91224ae315c.gz/SHA256E-s2327617817--e03b366e6a3a5fd689963c1d01aa26e6f4015991602ade535002c91224ae315c.gz";
      r2 = "Vm/GQ/SHA256E-s2381257318--31f4bc892d949ea1c63e504c6a0ea38a92bd2bd47eb73bd90141534532bca777.gz/SHA256E-s2381257318--31f4bc892d949ea1c63e504c6a0ea38a92bd2bd47eb73bd90141534532bca777.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "cervical";
      date_of_death = "3/2019";
      date_consented = "2018-07-06";
      tumour_type = "Cervical adenocarcinoma";
      tumour_details = "Adenocarcinoma cervix  with peritoneal carcinomatosis recurrence";
      case_details = "peritoneal seeding reminiscent of ovarian cancer - gives access to more drugs\nJust signed up to immunotherapy trial";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01094";
  }
