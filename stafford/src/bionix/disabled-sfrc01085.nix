with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        samtools.sort = def samtools.sort {walltime = "48:00:00";};
        dbs.db = def dbs.db {mem = 20;};
        minimap2.align = def minimap2.align {walltime = "48:00:00";};
        octopus.callSomatic = with lib; {targets, ...} @ attrs: octopus.callSomatic (attrs // optionalAttrs (any (x: x == "chr2") targets) {mem = 180;});
      })
  ];
};
let
  samples = [
    {
      class = "tumours";
      site = "1M";
      prefix = "grimmond/s3/batch2/SFRC01085/PRJ180621_SFRC01085-1MT_S11";
      suffix = "_001";
      sha256-1 = "d23201ee315157cbd8f37c3a5a7bbe0ed97ed6af28cbd564732ced5c61d9fd5e";
      sha256-2 = "bf1c2e786819f0330db2da48986c8e7542afca7770cc313c56c864270e962c5d";
    }
    {
      class = "normals";
      site = "B1";
      prefix = "grimmond/s3/batch2/SFRC01085/PRJ180622_SFRC01085-B1N_S12";
      suffix = "_001";
      sha256-1 = "32e5b47068e2bad3665ff0a41824a7439e22dd3e3b377d8b0e53f6ba43cdabc8";
      sha256-2 = "76592711568ba1b509010a24d50d7c33ff6847a1309b4854e3125ad9c6416c6c";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    redcap = {
      meeting_discussions_follow_up = "Meeting notes 2020.03.05\nBroca results discussed, The purpose of this BROCA was to compare to WGS results for Matt and/or Justin to go through at some stage. Patient has been advised to go onto immunotherapy on recurrence. No need to issue a clinical BROCA report. ";
      date_consented = "2018-05-22";
      tumour_details = "HGSEC";
      case_details = "POLE mutation found in WGS\n(patient of Deb Neesham)  for BRCA testing ";
    };
    inherit samples;
    predictNeoantigens = true;
    name = "SFRC01085";
    disableGridss = true;
  }
