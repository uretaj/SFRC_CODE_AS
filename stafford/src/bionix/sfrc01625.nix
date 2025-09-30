with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1C";
      class = "tumours";
      pdx = false;
      r1 = "47/FG/SHA256E-s19233743124--f19395bff3859cf3a3f615f566dded4ddfbc82b0395e32d42f6fe0f3bfee1a31.gz/SHA256E-s19233743124--f19395bff3859cf3a3f615f566dded4ddfbc82b0395e32d42f6fe0f3bfee1a31.gz";
      r2 = "9Q/m9/SHA256E-s20389753026--0cd9bd41983ca44e59692d8bcf613f38e0ceff32487750e3e9c7318d4eea6907.gz/SHA256E-s20389753026--0cd9bd41983ca44e59692d8bcf613f38e0ceff32487750e3e9c7318d4eea6907.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "KP/wP/SHA256E-s4752858574--067aaf570b235068f5c6803b79eb10bdff0f2f4d476b0e26f7b65310311b1101.gz/SHA256E-s4752858574--067aaf570b235068f5c6803b79eb10bdff0f2f4d476b0e26f7b65310311b1101.gz";
      r2 = "2m/jp/SHA256E-s4822240900--0990203c43b9bae20b2dbd3df0f8d11295d0ccc621a18c7b05fc6c722b9110a5.gz/SHA256E-s4822240900--0990203c43b9bae20b2dbd3df0f8d11295d0ccc621a18c7b05fc6c722b9110a5.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 13.04.2023\nDiscussed WES report:\n-Only somatic FOXL2 is reportable for this case. \n-Somatic FES - ENST00000328850.8, c.2240G>A, p.Gly747Asp; missense_variant, 32%\n**Unsure of significance. Low likelihood of responding to PARPi? Might do HRD-WES later. Not reportable. Something to keep an eye on in future. \n\nClare's Meeting 10.10.2022\nAsk Mandy to look up patient on EPIC, then to discuss case with Clare today (10.10.2022). \n\nIf urgent, will do TSO500. If not, WES.";
      d_case_summary = "Ovary, Fallopian Tube, and Primary Peritoneal Carcinoma, AJCC 8th Edition\n- Clinical stage from 18/10/2011: FIGO Stage IA (cT1a, cN0, cM0)";
      tumour_type = "GCT (Granulosa Cell Tumour - including Sertoli Leydig Cell)";
      tumour_details = "Granulosa cell tumour, recurrence";
      case_details = "49F\n\n2011-05: Dx Stage 1A GCT\nSurgery: RSO\n\n2017-10: Recurrence (lymph node)\nSurgery: TAH/LSO/PALND\n\n2022-07: Recurrence (FFPE Block 1C)\nIHC positive: PR (2+/3+, 85%), ER (+1, 5%)\n\n2022-07: Blood B1 received\n\n2022-09: Sections from FFPE Block 1C received. \n\n2022-11: DNA from FFPE Block 1C and B1 sent for WES";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "22/08/2022: July 2022 sample requested from RWH pathology by Devindee. \n19/09/2022: July 2022 slides received from RWH pathology by Devindee.";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01625";
    capture = CREv2;
  }
