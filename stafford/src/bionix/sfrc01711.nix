with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1H_1";
      class = "tumours";
      pdx = false;
      r1 = "fG/GF/SHA256E-s1454902779--a377e90fc9bb8815283e8d71dfa9549a0892d78347bc601ce4daeaa5d18d118b.gz/SHA256E-s1454902779--a377e90fc9bb8815283e8d71dfa9549a0892d78347bc601ce4daeaa5d18d118b.gz";
      r2 = "vF/w1/SHA256E-s1421632246--a59248178f8925a98b53fc8ede965a72f32c13d7dcf1d970f1f4cdb85ec8a0df.gz/SHA256E-s1421632246--a59248178f8925a98b53fc8ede965a72f32c13d7dcf1d970f1f4cdb85ec8a0df.gz";
    }
    {
      site = "1H_1";
      class = "tumours";
      pdx = false;
      r1 = "81/z7/SHA256E-s1517812791--f078121ed5b9e6d8a6b4a128fb3947c30291b497d87ce0dcde9eacb662599967.gz/SHA256E-s1517812791--f078121ed5b9e6d8a6b4a128fb3947c30291b497d87ce0dcde9eacb662599967.gz";
      r2 = "q8/G3/SHA256E-s1486719828--3e5ab9cc8262cca78e9dd1e761970665c8777e922fbe525893357b2cee567ecf.gz/SHA256E-s1486719828--3e5ab9cc8262cca78e9dd1e761970665c8777e922fbe525893357b2cee567ecf.gz";
    }
    {
      site = "1H";
      class = "tumours";
      pdx = false;
      r1 = "23/wj/SHA256E-s1139431259--0c69fd1efe4668cad4170d9b99094f0829ade1ced5807445218b5da8bd26d4b1.gz/SHA256E-s1139431259--0c69fd1efe4668cad4170d9b99094f0829ade1ced5807445218b5da8bd26d4b1.gz";
      r2 = "42/pK/SHA256E-s1111774497--48d18613cec8aa9e02c02d29eda25b64585741978f524d093798e5cf661b6c54.gz/SHA256E-s1111774497--48d18613cec8aa9e02c02d29eda25b64585741978f524d093798e5cf661b6c54.gz";
    }
    {
      site = "1H";
      class = "tumours";
      pdx = false;
      r1 = "Qw/Kg/SHA256E-s1154139025--aa16db896c10121b37eb0c11d0900faee0128c8b2180326c38785826d95797aa.gz/SHA256E-s1154139025--aa16db896c10121b37eb0c11d0900faee0128c8b2180326c38785826d95797aa.gz";
      r2 = "pX/5Z/SHA256E-s1128496472--13baa90cf06d7eec9b4401760a294181810e8115842c4fa52cbaba6eb03d7b9d.gz/SHA256E-s1128496472--13baa90cf06d7eec9b4401760a294181810e8115842c4fa52cbaba6eb03d7b9d.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "85/47/SHA256E-s1929671304--af476dc08c4ab5e84a1d66fb37f11b81d03c9ebfc7ef132410f89a5106211eb8.gz/SHA256E-s1929671304--af476dc08c4ab5e84a1d66fb37f11b81d03c9ebfc7ef132410f89a5106211eb8.gz";
      r2 = "4w/xv/SHA256E-s1975202512--4d9d6cbad38a8113993d774f662edbf2104f669fa9e1602145b56e0142c267e7.gz/SHA256E-s1975202512--4d9d6cbad38a8113993d774f662edbf2104f669fa9e1602145b56e0142c267e7.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "z7/W8/SHA256E-s2012367898--24dafbed0c383b47a84d036c361d86aadb0c294e081e8ae74fac90a6b223f413.gz/SHA256E-s2012367898--24dafbed0c383b47a84d036c361d86aadb0c294e081e8ae74fac90a6b223f413.gz";
      r2 = "vQ/Jj/SHA256E-s2064773165--7aaea2a2b7c3e1b6ded7cbf2b524640b358939c82bb7890b6b6215f8cfd1ac15.gz/SHA256E-s2064773165--7aaea2a2b7c3e1b6ded7cbf2b524640b358939c82bb7890b6b6215f8cfd1ac15.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 2.11.2023\n*Summary*\n    No reportable germline variants \n\n    Somatic PBRM1 splice variant \n\n    Somatic VHL frameshift variant  \n\n    Somatic SETD2 frameshift variant \n\n    Somatic NSD1 stop-gain variant \n\n    Somatic SDHA missense variant \n\n    No CNV focal events \n\n*Discussion* \nWhole chromosome loss consistent with SETD2 spindle defects \n\nClare's Meeting 20.04.2023\nReviewed FFPE Block 1H\nPotential super responder to pazopanib. Has remained on it for almost 10 years. Make sure Kristy knows for OPAL. To do WES when blood arrives; mostly tumour, 60%.";
      blood_recall_history = "16May23 - text to patient to see if they received pack, yes they have courier ordered 18May TBC";
      d_case_summary = "63 year old male diagnosed with Metastatic renal cancer in June 2013. June 2013: Right nephrectomy. August 2013: Pazopanib (PR). Exceptional responder Remain on treatment with Pazopanib for metastatic RCC for approaching 10 years.";
      date_consented = "2022-10-14";
      tumour_type = "Renal cancer";
      tumour_details = "Metastatic clear cell renal carcinoma";
      case_details = "63 years old male  \n\n2013-06: Right nephrectomy, clear cell carcinoma Furhman grade 2, Block 1H received \n\tIHC positive: CD10 , EMA, vimentin \n\tIHC negative: CK7, CD117 \n\n2013-08: Pazopanib (PR). Exceptional responder. Remain on treatment with Pazopanib for metastatic RCC for approaching 10 years. ";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "15Mar23: Jun2013 Sample requested from Laverty Pathology by Monica\n29Mar23: Jun2013 Sample received from Laverty Pathology by Monica";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01711";
  }
