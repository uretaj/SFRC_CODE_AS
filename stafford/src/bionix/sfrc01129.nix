with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B2";
      class = "normals";
      pdx = false;
      r1 = "xK/K9/SHA256E-s2298039485--7b4ecef26dfa3c9f938490aeb2378525cc4f99af48fc11100354f7e75c61234a.gz/SHA256E-s2298039485--7b4ecef26dfa3c9f938490aeb2378525cc4f99af48fc11100354f7e75c61234a.gz";
      r2 = "jV/JW/SHA256E-s2456434327--e22f7985b3ffe4872c1062d5c56577423f1d65e9ce2ae1f7dc15978cb83b1bea.gz/SHA256E-s2456434327--e22f7985b3ffe4872c1062d5c56577423f1d65e9ce2ae1f7dc15978cb83b1bea.gz";
    }
    {
      site = "N";
      class = "tumours";
      pdx = false;
      r1 = "1W/FV/SHA256E-s2860016869--6bf1731e759c558af8363433261d932d610010f21b56cc02b6406d26c943032c.gz/SHA256E-s2860016869--6bf1731e759c558af8363433261d932d610010f21b56cc02b6406d26c943032c.gz";
      r2 = "fw/GJ/SHA256E-s3265472545--cea0766a233382a42b562583a6365c447dc13ad0222b4593ba566062738d2241.gz/SHA256E-s3265472545--cea0766a233382a42b562583a6365c447dc13ad0222b4593ba566062738d2241.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "HGSEC";
      meeting_discussions_follow_up = "RC Meeting notes 15.10.2020\nDiscussed WES results (in Analysis instrument). \nNeed to get trial investigators to analyze this data more thoroughly to identify possible resistance mechanisms. \n\nMeeting notes 2020.08.27\nWant to send samples for WES (patient did not respond on the Ipi+Nivo rare cancer trial). Damien to organise germline and maybe tumour samples from ONJCRI.\n\nMeeting notes 2020.03.05\nBroca results discussed. Clare to look into the PIK3CA variant with Damien.\n\nMeeting notes 2019.11.21\nPlan:  Won't help the patient now so halt CCP and keep the DNA for future studies (pending funding) \n\nMeeting notes 2019.08.08\nClare needs to inform patient that sequencing was unsuccessful.\nAmandine to make new DNA from block and send for CCP - Clare to check if still relevant for patient before sending \nSample to be send for BROCA, wait until results back before deciding what to do next.";
      date_of_death = "11/2019";
      date_consented = "2019-02-05";
      tumour_type = "HGSEC";
      tumour_details = "Serous Carcinoma of the Endometrium";
      case_details = "Grade 3 Serous carcinoma of the endometrium, June 2017.\n\nReceived surgery for Grade 3 serous carcinoma. Commenced Carboplatin/Paclitaxel chemotherapy. Paclitaxel omitted due to potential neuropathy of R hand. Completed Dec 2017.\n\nFor WGS\n";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "Histopath number: 106543-17T\nBlock received 15-Feb-19\nSubmitted to SG Lab 20-Feb-19";
      histology_summary = "Normal MLH1, PMS2, MSH2, MSH6";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01129";
  }
