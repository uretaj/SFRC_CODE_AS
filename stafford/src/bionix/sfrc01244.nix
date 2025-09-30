with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1D";
      class = "tumours";
      pdx = false;
      r1 = "Xf/Fk/SHA256E-s35686488505--aa2f22c0b50312298e642519a549170ff9a3653dc83edbe4116554daefd18ea8.gz/SHA256E-s35686488505--aa2f22c0b50312298e642519a549170ff9a3653dc83edbe4116554daefd18ea8.gz";
      r2 = "MM/xQ/SHA256E-s37739273872--b6ce84ab509b34b0991beff2b6148d9a0d08f655fde5031e2a45dbf0af0109fb.gz/SHA256E-s37739273872--b6ce84ab509b34b0991beff2b6148d9a0d08f655fde5031e2a45dbf0af0109fb.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "23/fJ/SHA256E-s5112374525--9ac326a12a711e7931be8013697b84b8c18cbffcd2106e355766f53fa1b7be4e.gz/SHA256E-s5112374525--9ac326a12a711e7931be8013697b84b8c18cbffcd2106e355766f53fa1b7be4e.gz";
      r2 = "vJ/57/SHA256E-s5525785140--d330d43f4da17275435cb7bfae49116db65a81926700ce8f0ab0edbc0e32f37f.gz/SHA256E-s5525785140--d330d43f4da17275435cb7bfae49116db65a81926700ce8f0ab0edbc0e32f37f.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare's meeting notes 2021.08.26\nSFRC01244_1D:go ahead with WES. Clare to contact Inger for more information  \nIs odd case - Pax8 positive. Could be endometrial? WES would be very informative. \n\nMeeting notes 2020.01.23\nDNA amount after extraction too low for doing anything.  Inger update: one cycle of treatment at PeterMac still 5 cycles to go. \nAmandine/Briony to ask Josh if there is a block we can recall and see what DNA we can get that way.\n\nMeeting notes 12.12.2019\nDo not have much DNA after extracting from mince and snap frozen, no tumour in OCT. what can we do with 90ng ? Maybe we can try to recall a block for WES?\n\n\nMeeting notes: 2019.12.05\nCheck PIK3CA and KRAS mutation by ddPCR over at the Fox lab. Ask for assay price. \n\nlab meeting discussion 29.11.2019\nThis case could be a never responder. WGS is a priority.\nOCT block was made and very difficult to cut, histology is suggesting it could be fat.\nWe will combine Snap Frozen and mince to extract DNA, look for a way to screen the DNA for KRAS (G12V) and/or PIK3CA (E545K) mutation before sending for WGS.\nIdeally we want the WGS results within 6 months, which is when the patient will have finish first round treatment.";
      date_consented = "2019-11-17";
      tumour_type = "Cervical adenocarcinoma";
      tumour_details = "Cervical adenocarcinoma";
      case_details = "2013: punch biopsy, extensive AIS/CIN III  \n\n04-11-2019: Wedge resection: the tumour is predominantly papillary (70%), acinar (20%) and focal lepidic (10%) (Block received reviewed here) \n\nTumour cells: CK7 pos, PAX8 pos. TTF1 neg, CK20 neg, P40 neg, CDx2 neg. weak staining for ER, strong diffuse staining for P16, moderate staining for CEA \n\nDiagnosis: possibly a lung primary but immuno suggest metastasis from endometrial primary \n\n \n\n11-2019: Retroperitoneal LN biopsy: Poorly differentiated metastatic adecarcinoma from uterine cervix: P16 pos, CEA pos, ER neg, PR neg, P40 neg. (We received fresh tissue with no tumour) ___________________________________________________\nMetastatic cervcal adenoarcinoma, diagnosed in Nov 2019, after many months of investigations and procedures\n\nThis included wedge resection on 25/10/2019 showing adenocarcinoma of likely endometrial origin.\n\nAlso had PET/CT scan in Nov 2019 showing lung changes and evidence of pelvic and inguinal chain lymphadenompathy\n\nB/g of HGIL found on pap smear in 2013, ACIS and CIN III\n---------------------------------\nApril-July 2013: Cervical biopsy showed ACIS and CIN III - no invasive malignancy, clear margins. Lung biopsy, similar morphology to cervix. Likely missed primary diagnosis of metastatic adenocarcinoma of cervix \n\nOct 2019: Left upper lobe wedge resection - adenocarcinoma. \n\nDec-April 2020: Carboplatin/ Paclitaxel/ Bevacizumab X 6 \n\nMay-Nov 2020: Bevacizumab (compassionate access) \n\nFeb 2021: surgery (L) lung upper lobectomy - multifocal adenocarcinoma \n\nMarch 2021: completion pneumonectomy - multifocal adenocarcinoma consistent with cervical primary \n\nJuly 2021: commenced BGB-15025 trial ";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "Josh requested archival tissue for Adenocarcinoma from Barwon Health on 31/1/2020 via Fax\n\nJosh re-requested this tissue a/p request from Briony on 6/3/2020\n\nJosh re-requested this tissue a/p email from Clare on 28082020\n\n2019 Tissue containing Adenocarcinoma Block 1D received 10/09/2020";
    };
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SFRC01244";
  }
