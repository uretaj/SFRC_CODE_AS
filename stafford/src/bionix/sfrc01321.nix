with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        octopus.callSomatic = with lib;
          {targets, ...} @ attrs:
            octopus.callSomatic (attrs
              // optionalAttrs (any (x:
                x == "chr4")
              targets) {mem = 180;});
        samtools.sort = def samtools.sort {walltime = "48:00:00";};
      })
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "66/kz/SHA256E-s9045225623--1844fe4d4755414e4c1c7cdeccbc9d5af63b13275bd48b2d64460f73fa9bdcde.gz/SHA256E-s9045225623--1844fe4d4755414e4c1c7cdeccbc9d5af63b13275bd48b2d64460f73fa9bdcde.gz";
      r2 = "Gp/M1/SHA256E-s9553874501--10634427bf88a5c2e5a203b25b9204567387474eda9edaa44b2b97c2d5241fa2.gz/SHA256E-s9553874501--10634427bf88a5c2e5a203b25b9204567387474eda9edaa44b2b97c2d5241fa2.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "56/7m/SHA256E-s29261185597--18079a612ba9ccd3f00999cc5ee4747473fd288625971ac683e08e04ec83d59b.gz/SHA256E-s29261185597--18079a612ba9ccd3f00999cc5ee4747473fd288625971ac683e08e04ec83d59b.gz";
      r2 = "94/6p/SHA256E-s31709692634--66f3416e17380b3fae1ca4fd0607a8ff7edbc65e2ea3d91baff64f7f8fff5d1d.gz/SHA256E-s31709692634--66f3416e17380b3fae1ca4fd0607a8ff7edbc65e2ea3d91baff64f7f8fff5d1d.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "G3/8m/SHA256E-s75929172628--4560d8f07362023f4754aa1f6ea0e5a7161d9f824f23aaf884e79d1e9797d16f.gz/SHA256E-s75929172628--4560d8f07362023f4754aa1f6ea0e5a7161d9f824f23aaf884e79d1e9797d16f.gz";
      r2 = "kz/jw/SHA256E-s82488417602--b752f1128238143dfc5c8e59403690668d69731b411e09a1da4efc3b7feb31d4.gz/SHA256E-s82488417602--b752f1128238143dfc5c8e59403690668d69731b411e09a1da4efc3b7feb31d4.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "Vm/jK/SHA256E-s6498962428--a139cccea1097d3519b1dac6d957c499b7cc8d1bbc1cf98bd62e55725a8fa498.gz/SHA256E-s6498962428--a139cccea1097d3519b1dac6d957c499b7cc8d1bbc1cf98bd62e55725a8fa498.gz";
      r2 = "q8/MQ/SHA256E-s6644231562--b71eea6cec173709841fe46719c9899495e745eb2830f772ec423b3e96f0f437.gz/SHA256E-s6644231562--b71eea6cec173709841fe46719c9899495e745eb2830f772ec423b3e96f0f437.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "uLMS";
      meeting_discussions_follow_up = "RC Meeting 10.12.2020\nClassic uLMS with no HRD or additional aberrations, need to get report out\n\n03.12.2020\nHave Block A14, from 23-03-2018, at diagnosis. Have WGS report on S1 (Aug 2020 recurrence), to discuss at next RC meeting \nPlan: Nothing actionable. Can add to cases to discuss with Tony at Project meeting (baseline vs WGS at recurrence). What can be done? Maybe WES? How many of these cases do we have? \nRB1 deletion, ATRX mutation (only 20% frequency?), TP53 at 80% ";
      date_of_death = "2/2023";
      d_case_summary = "54 year old woman with recurrent uterine leiomyosarcoma. Her original cancer was diagnosed in March 2018 when she underwent TAH/BSO at Dandenong Hospital. The histopathology report confirmed uterine leiomyosarcoma with up to 47 mitoses per 10 HPFs. Her post surgery PET did not show any residual disease and patient declined adjuvant chemoradiation treatment despite being discussed at RWH gynae MDT meeting which recommended RT to reduce local recurrence. Her tumour recurred in 2020 with a most recent PET CT scan done on 13/7/20 - confirming a large avid tumour measured up to 18cm. She is due for debulking surgery on 17/8/20.";
      tumour_type = "uLMS";
      tumour_details = "uLMS";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "2018 uLMS block routinely recalled from Monash Path on 27102020 by Josh\n\n2018 uLMS Block A14 received from Monash Path on 5/11/2020";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01321";
  }
