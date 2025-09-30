with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "qk/3v/SHA256E-s48485943653--c50b1479cffdb6025d992f0b8c173d24d8c70f60b4c8c39c8547ff6c753ef810.gz/SHA256E-s48485943653--c50b1479cffdb6025d992f0b8c173d24d8c70f60b4c8c39c8547ff6c753ef810.gz";
      r2 = "PJ/jm/SHA256E-s54629901271--8a82ef30f38cb095415b60e5b451509859447d8e920a7619366a814fc92c677f.gz/SHA256E-s54629901271--8a82ef30f38cb095415b60e5b451509859447d8e920a7619366a814fc92c677f.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "PX/zq/SHA256E-s9876770936--74cd42630afb7ffba02bdba73b21444a3cd2e4ea1cd5cdcd482ba094d1705363.gz/SHA256E-s9876770936--74cd42630afb7ffba02bdba73b21444a3cd2e4ea1cd5cdcd482ba094d1705363.gz";
      r2 = "7k/f6/SHA256E-s9694167137--241883968bb924adc0ad21fd04e2c25b11043f42e9aad1256883215e1dcfbabb.gz/SHA256E-s9694167137--241883968bb924adc0ad21fd04e2c25b11043f42e9aad1256883215e1dcfbabb.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "WP/4Z/SHA256E-s71639667765--89ecf9dcd88f7ff86ccf00f928be2e054676b9b63cf453436d7275bf97c4c30b.gz/SHA256E-s71639667765--89ecf9dcd88f7ff86ccf00f928be2e054676b9b63cf453436d7275bf97c4c30b.gz";
      r2 = "5f/K5/SHA256E-s78319978509--1c2c8c1a5c5edc07e56c0331f550d27cc70a91c0e52736a976c1e19133fc321b.gz/SHA256E-s78319978509--1c2c8c1a5c5edc07e56c0331f550d27cc70a91c0e52736a976c1e19133fc321b.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "HGSOC";
      meeting_discussions_follow_up = "RC Meeting 2022.03.31\nDiscussed WGS report.\nRNA is not possible (was a tiny biopsy, went into mice and OCT, which was all used for DNA) \nNew diagnosis/tumour of origin? Patient is deceased now. Platinum refractory, perhaps not HGSOC, but unsure of tumour origin. \nCDKN2A deletion - Palbociclib would be biologically rational, but clinically might not be as good. CDKN2A is also non specific for tumour type. \nWhat cases have homozygous deletion of NF2 and CDKN2A? To work out origin. \nPossible future PDX (have mince ready for mice) \n\nMeeting with Clare 2022.02.10\nFresh tissue S1: Microdissect and Send for WGS ";
      date_of_death = "3/2022";
      d_case_summary = "Adenocarcinoma of female genital tract. \nPAX8 , ER weak  , CK7 , CD20-, TTF1-, p53WT, MSI Stable.";
      tumour_type = "HGSOC";
      tumour_details = "Treated as HGSOC. Primary unknown.";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "Rapid Progressor";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01511";
  }
