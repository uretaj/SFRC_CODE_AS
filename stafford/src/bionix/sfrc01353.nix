with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "QP/XQ/SHA256E-s2440647189--636dd43896a4009d92cee493f5bd5f8533c418fc4a41a7b9a3e192cf146aa9f9.gz/SHA256E-s2440647189--636dd43896a4009d92cee493f5bd5f8533c418fc4a41a7b9a3e192cf146aa9f9.gz";
      r2 = "g3/0p/SHA256E-s2453347350--4f59338ea91e77f710782662bce306b1006235204ce2c955cd46024670b34b4d.gz/SHA256E-s2453347350--4f59338ea91e77f710782662bce306b1006235204ce2c955cd46024670b34b4d.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "3G/jX/SHA256E-s11035285112--882afd23aca38c235feb6d31c82b9bd75b8b74e1bc927281883c7c8aec289a0e.gz/SHA256E-s11035285112--882afd23aca38c235feb6d31c82b9bd75b8b74e1bc927281883c7c8aec289a0e.gz";
      r2 = "qP/mZ/SHA256E-s11051241003--4e7fbbf600d493f9d50af808451dab45c25898e32746fe966e72e77990a231fc.gz/SHA256E-s11051241003--4e7fbbf600d493f9d50af808451dab45c25898e32746fe966e72e77990a231fc.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 2021.03.04\nDiscussed WES results (In Analysis DNA)\nPDX - waiting. But maybe try putting back in with matrigel? GAS type might need other conditions. WGS and RNAseq would be good then. Digesting tumour cells, put into matrigel, then put into mice, is an option. \nFor Mucinous cases (HER2, STK11, and this one) - for rescue, digest and transplantation \n\n2021.01.28\nHave a lot of DNA, but probably not a lot of tumour DNA. To do WES (deeper sequencing by Justin)\n\n2021.01.07 Clare and Ratana meeting\nMicrodissect OCT slides for DNA - see what quantity I get (to do WGS/WES/TSO500) ";
      date_of_death = "11/2023";
      d_case_summary = "70 yo female with Peutz-Jeghers syndrome. Gastric-type endocervical adenocarcinoma. Biopsied in Oct 2020.Tissue sample obtained on 7/12/20 and preserved. Bloods obtained on 14/12/2020.";
      date_consented = "2022-02-28";
      tumour_type = "Cervical adenocarcinoma";
      tumour_details = "Gastric-type endocervical adenocarcinoma. 70 yo female with Peutz-Jeugher syndrome.";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01353";
    capture = CREv2;
  }
