with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        facets.reporting.preprocess = def facets.reporting.preprocess {
          mem = 25;
        };
        samtools.sort = def samtools.sort {walltime = "48:00:00";};
      })
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      prefix = "grimmond/SFRC/2020-07-14/L2000502_S7";
      suffix = "_001";
      sha256-1 = "51b4057d51bb00d1a637111c161d371d7193b1929b68232a5a2ee30829e36282";
      sha256-2 = "89daeb9a21d9b85455875c38e70cf2b2879dd8cb5ab4e1e292e4decad89073e6";
    }
    {
      site = "S2";
      class = "tumours";
      prefix = "grimmond/SFRC/2020-07-14/L2000503_S8";
      suffix = "_001";
      sha256-1 = "9a9889991ad051937c00b2276caed10338515d2af9c8d8c88a4d3e6a51cdd92b";
      sha256-2 = "b88b7045a8852f893af61e0c5ebb0d682c07226eed062cde095b7a3556473483";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "GCT";
      meeting_discussions_follow_up = "08.09.2022\nClare, Mandy and Paul James have discussed the germline MSH2 variant found by WGS. It is a VUS, they do not believe that is will have any implications for her family.\n\nRC Meeting notes 09.07.2020\nHas a germline MSH2 mutation, but not in tumour.  \nClare to first go back to Sean and Joep and double check that the germline matches the patient.  \nClare to contact doctor (Michael Brown) to inform the patient about MSH2 mutation - this mutation will not affect her treatment but has implications for her family.  \n\nClare Meeting 07.05.2020\nWGS on germline DNA and tumour (macrodissect S2 from OCT sections)\n\n21.02.2020 - Gen received frozen piece from Simon Chu. This is tumour from April 2017 surgery and was placed in formalin briefly so quality is expected to be low. Clare has emailed Adelaide to see if we can chase up the frozen tissue from surgery on the 23rd Feb 2018.\n\nMeeting discussion 06.02.2020\nMarita has organised blood collection. Gen in touch in Simon to collect tissue.  ";
      date_of_death = "08/2021";
      date_consented = "2017-11-28";
      tumour_type = "GCT (Granulosa Cell Tumour - including Sertoli Leydig Cell)";
      tumour_details = "Met Granulosa Cell Ca Ovary, resected liver met";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01038";
  }
