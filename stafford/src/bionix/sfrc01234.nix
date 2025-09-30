with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      prefix = "fastqs/pmcc/2020-03-04/SFRC01234-B1_S3";
      suffix = "_001";
      sha256-1 = "164ab7f9baeb44210d45f66fb7e9d106d337d514ac0abbec45b0209f787c6634";
      sha256-2 = "e06b34a9b6a3cfed0259fbb990af13d3b7eb653ba18d04d142e9494be3ea5c13";
    }
    {
      site = "1.1";
      class = "tumours";
      prefix = "fastqs/pmcc/2020-03-04/SFRC01234-1-1_S4";
      suffix = "_001";
      sha256-1 = "5fdb1b278fed17ffa55da113c16af3ce84155bcdc43ec7096ea494545c65198d";
      sha256-2 = "fcad5c997a4334dc2281f67880334180bfe84711496b0a551f3e7ae1d2ed61d1";
    }
    {
      site = "2";
      class = "tumours";
      prefix = "fastqs/pmcc/2020-03-04/SFRC01234-2_S5";
      suffix = "_001";
      sha256-1 = "c9838fcf6c7de11b3a16b03b6c5192e47ccd643101c2ec0ae2a391d8b68499c6";
      sha256-2 = "5fff468798fb58d27de4cbba91af1addac83491fd674e5b7266fe32b9e181a3d";
    }
    {
      site = "2A";
      class = "tumours";
      prefix = "fastqs/pmcc/2020-03-04/SFRC01234-2A_S6";
      suffix = "_001";
      sha256-1 = "6df77559148d4c89bd6eea1111eb927bf532d7407a6857570f84e485d4f5442d";
      sha256-2 = "5fb8e5f8162c515d1f085396a73a3b20cd3a634186835ae9f3105c0709d07909";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 29.05.2020\nWES summary: 92% purity. \nSomatic variants: CDKN1B in every sample at 100% LOH region.\n10-15% haplotype frequencies: CEP89 (only pituitary) and TLX1 (all 3 tumours)\nSig 3 and Sig 1 dominate.\nCopy Number - CDKN1B is in regions amplified (both pituitary samples) or LOH (in parotid) in different sites \n\nEmail 16.01.2020 \nCheck the origin on the DNA recalled from PeterMac. germline or tumour DNA. If germline go ahead with WES on all 3 FFPE blocks\n\nMeeting notes 2019.12.05\nClare to contact Marita to organise blood sample and then organise WES.\n\nNotes when block received: for WES of primary met?";
      date_consented = "2019-10-17";
      tumour_type = "CNS cancer";
      tumour_details = "metastatic corticotroph cancer";
      pre_analysis_mutations = "CDKN1B and DAXX mutations\nChromosomal copy aberrations";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "Slides of original tumour and 2 metastasis requested by Angeline Shen from RMH Research Pathology but given to us when patient recruited to SFRCP. Briony has details.\nAngeline.Shen@mh.org.au";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01234";
    capture = CREv2;
  }
