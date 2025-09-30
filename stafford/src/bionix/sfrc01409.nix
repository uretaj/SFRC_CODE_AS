with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2.3";
      class = "tumours";
      pdx = false;
      r1 = "Jm/f5/SHA256E-s26011706724--384cff8b0c4897c34f0a3c25d508e5a669092b519290815ff196737293752c4b.gz/SHA256E-s26011706724--384cff8b0c4897c34f0a3c25d508e5a669092b519290815ff196737293752c4b.gz";
      r2 = "Vw/PG/SHA256E-s27381595053--4abe32bf0c90c0c54b8a46675a6970ced0d3cfc5237992b617696a6a3f651086.gz/SHA256E-s27381595053--4abe32bf0c90c0c54b8a46675a6970ced0d3cfc5237992b617696a6a3f651086.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "G4/Ww/SHA256E-s5556040984--dad406706d91fd96e85a12c7f48b9135e0039484007845af3d09829d45aba546.gz/SHA256E-s5556040984--dad406706d91fd96e85a12c7f48b9135e0039484007845af3d09829d45aba546.gz";
      r2 = "0Q/ZG/SHA256E-s5835800199--0988602cc48928b1f6ff1e39d0dc32071217738d8162375d872977501857fd9d.gz/SHA256E-s5835800199--0988602cc48928b1f6ff1e39d0dc32071217738d8162375d872977501857fd9d.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      sophia_report = "SFRC01409_SOPHiAHRDReport_26Sep2023_Redacted.pdf";
      meeting_discussions_follow_up = "Bioinformatics meeting 27.01.2022\nTry to recall block from biopsy pre chemo.\n\nBROCA meeting with Clare 04.11.2021\nSend block 2.3 for BROCA \n\nMeeting with Clare 2021.09.10\nSend block 2.3 for WES, we want to know CN\n\n2021.08.12\nblock from PeterMac. Warren to return the block on level 4 at the specimen window drop off.\n\n2021.07.29 Clare's meeting \nClare has asked for methylation testing (patient has no mutations, but HRD positive on Myriad test), but we only have FFPE and still needs to be assessed by Gayanie.  \nPatient is on PARPi (self-funded), doing well now. \nMake sections (10 thick sections) and DNA, send block back to Warren. \n\n31.05.2021\nBlock will be for WES. Waiting for bloods.";
      myriad_report = "SFRC01409_MyriadResult_16Feb2021_Redacted.pdf";
      d_case_summary = "HGSOC - BRCA WT.\nHRD pos by the Myriad MyChoice test; on olaparib 1st line maintenance.";
      date_consented = "2021-05-10";
      tumour_type = "HGSOC";
      tumour_details = "HGSOC";
      case_details = "Aug 2020: diagnosis of HGSOC \n\nSept-Oct 2020: NACT Carboplatin/Paclitaxel X 3 (PR) \n\nNov 2020: TAH BSO \n\nDec-Jan 2021: Carboplatin /Paclitaxel X 3 (CR) \n\nMarch 2021: Olaparib maintenance  ";
      myriad_submission = "Yes";
      patient_information_complete = "Incomplete";
      patient_somatic_mutations = "Myriad HRD Positive (BRCA neg) score 61";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2020 block recalled from PMCC by Warren on 18/5/21, received 9/7/21";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01409";
    capture = CREv2;
  }
