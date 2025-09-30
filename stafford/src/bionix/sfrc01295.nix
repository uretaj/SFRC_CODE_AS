with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        samtools.sort = def samtools.sort {walltime = "48:00:00";};
        octopus.callSomatic = def octopus.callSomatic {mem = 400;};
      })
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      prefix = "grimmond/SFRC/2020-07-14/L2000457_S15";
      suffix = "_001";
      sha256-1 = "07c2eb094e4160b0f8a898e425df90f40ee20bce51ce160f9d7b022aafd14f24";
      sha256-2 = "a13dc6db43d04a2aa899ff726e0f5e65402aaeb7a3b10d3ea0d047587e644686";
    }
    {
      site = "S4";
      class = "tumours";
      prefix = "grimmond/SFRC/2020-07-14/L2000458_S16";
      suffix = "_001";
      sha256-1 = "af26997c7128ed1edd69d0cd62af6771f9873292383701bcbd0de6417b05626c";
      sha256-2 = "907e44ba90596c8f1f7574973bd52bc05713908531000fd5141a22e927e4b58d";
    }
    {
      site = "S4";
      class = "rna";
      r1 = "k4/km/SHA256E-s11133230665--84833ef1a721f64f490e67395a7d394de7487573e5086d560d420f4ea02fd629.gz/SHA256E-s11133230665--84833ef1a721f64f490e67395a7d394de7487573e5086d560d420f4ea02fd629.gz";
      r2 = "Wm/50/SHA256E-s11575636075--c171170f2c9e30c8f47148ee523242375a13787d935a1afb6d9aba308cf7631b.gz/SHA256E-s11575636075--c171170f2c9e30c8f47148ee523242375a13787d935a1afb6d9aba308cf7631b.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "cervical";
      meeting_discussions_follow_up = "RC Meeting notes 10.12.2020\nShe has progressed with brain mets - rest of her disease is controlled. She will be having irradiation. She is still on bevacizumab post carboplatin/paclitaxel. \nReview her WGS/RNASeq.\nIs there anything we can think of that we could give her post RT as a post sensitiser? eg mTOR inhibitor (nothing to suggest PARPi). \nWe have a new PDX for her. Discuss drugs to try which we could potentially give her eg eribulin \n\nTrying to target the brain lesion. Extra analysis on WGS data from Sean by our team \n\nRC Meeting notes 09.07.2020\nSCC in 2006, respiratory symptoms during COVID. Lung biopsy didn't look squamous, more adenocarcinoma. But his report confirms cervical origin. \nCan't do anything for the patient at the moment, need PDX and organoids (to do drug testing). Gen to discuss what drugs to test.  \nOrganoids at first passage. If grow well enough, Gen will work to run a drug assay \nYAP1-BIRC3 fusion - driving mutation, could target it. Verteporfin is suggested, but could become resistant. \nReport has been submitted, but might be worth further discussion with treating doctor about the Verteporfin. \n\nClare Meeting 07.05.2020\nNew biopsies, have tumour. Send path reports to Gayanie. Send SF tissue and germline DNA to Sean's lab for urgent WGS. Holly to submit forms, someone to drop off samples on Monday 11th.\n\nBiopsy material - no viable tumour\n";
      date_of_death = "04/2023";
      date_consented = "2020-04-18";
      tumour_type = "Cervical other";
      tumour_details = "Poorly differentiated adenocarcinoma with sarcomatoid differentiation.  CK7, PAX8, p16, smooth muscle actin positive; p40, TTF-1, CK20, SOX10, WT1, Napsin A, negative.  Most in keeping with gynaeocological/genitourinary primary.";
      case_details = "Metastatic adenocarcioma,, Dx 2006, ; most likely recurrent from original cervical cancer but looks different.\n\nDefinition Chemoradiation (40Gy/20# June 2006), adjuvant vaginal brachytherapy (28Gy/4#)\n\nApril 2020 for Ix for dyspnoea demonstrated metastatic malignancy with R middle lobe pulmonary mets\n\nEBUS paraoesophageal node Epworth 20/4/20\n";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01295";
  }
