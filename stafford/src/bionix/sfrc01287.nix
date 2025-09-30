with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "5G/fM/SHA256E-s645518673--1b73ca32e6c25a89cc9c0751be478d80c3eb52b67db199562f2d39cd774a8df5.gz/SHA256E-s645518673--1b73ca32e6c25a89cc9c0751be478d80c3eb52b67db199562f2d39cd774a8df5.gz";
      r2 = "37/vZ/SHA256E-s643670245--7c8ea623654fdc3ccf9cc4f7928184a9185d6c9de51c7cab65901e90adc45497.gz/SHA256E-s643670245--7c8ea623654fdc3ccf9cc4f7928184a9185d6c9de51c7cab65901e90adc45497.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "3W/Kq/SHA256E-s646565523--5e2b7340222cc4dbaaf641dadd5582cc469c233732c963423dfb595e1bb555b2.gz/SHA256E-s646565523--5e2b7340222cc4dbaaf641dadd5582cc469c233732c963423dfb595e1bb555b2.gz";
      r2 = "97/64/SHA256E-s648538694--6d152f3b9fda57b51f02bbc5877277d64da0e60a89af20d7655c50790283c397.gz/SHA256E-s648538694--6d152f3b9fda57b51f02bbc5877277d64da0e60a89af20d7655c50790283c397.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "jf/mw/SHA256E-s640076891--5ad82e955844152d1d3018836147ff8d0fa3fad7a6ab72886dbfa6255e158d0d.gz/SHA256E-s640076891--5ad82e955844152d1d3018836147ff8d0fa3fad7a6ab72886dbfa6255e158d0d.gz";
      r2 = "14/z7/SHA256E-s640159969--5154bb0136e981edc93b0056fbda4fda6358cff36c6bcbfdf5d4a83a30299af7.gz/SHA256E-s640159969--5154bb0136e981edc93b0056fbda4fda6358cff36c6bcbfdf5d4a83a30299af7.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "MX/2J/SHA256E-s671942760--348177414e2e4ac501dd685d01540c3ec168b0fb2112fefb75c7125a7d691461.gz/SHA256E-s671942760--348177414e2e4ac501dd685d01540c3ec168b0fb2112fefb75c7125a7d691461.gz";
      r2 = "KM/K0/SHA256E-s675929012--347ea162164d0717e8fbc9e0fb16ec1db578df46913c811a0dfb9351d91c323e.gz/SHA256E-s675929012--347ea162164d0717e8fbc9e0fb16ec1db578df46913c811a0dfb9351d91c323e.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      date_consented = "2020-03-23";
      tumour_type = "Other rare";
      tumour_details = "Waldenstrom's macroglobulinemia (type of non-Hodgkins lymphoma)  also has melanoma x2 and prostate cancer";
      case_details = "Waldenstroms macroglobuinemia. Received cyclophosphamide from 15/3/2005-15/10/2015, FCR from 23/9/2006-7/2/2007, and Mabthera from 28/7/2015-9/12/2015\n\n";
      patient_information_complete = "Incomplete";
      other_tumour_type = "Waldenstrom's macroglobulinemia";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      mp_subgroup_sfrcp4_new_id = "3 or more primary";
    };
    inherit samples;
    name = "SFRC01287";
    capture = TwistV2HR;
  }
