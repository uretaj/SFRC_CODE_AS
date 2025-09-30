with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "19974211";
      class = "tumours";
      pdx = false;
      r1 = "Gq/6z/SHA256E-s6659758513--d67cda967ebc22ed83a9c1e8e997e157474c4587cbe9240afb0d3610be424198.gz/SHA256E-s6659758513--d67cda967ebc22ed83a9c1e8e997e157474c4587cbe9240afb0d3610be424198.gz";
      r2 = "ZP/Pg/SHA256E-s6698281672--8fd423e0ff3b5923216c86bd4131dbdb1abefd3dfb2a8e8d67ef0ebba921569b.gz/SHA256E-s6698281672--8fd423e0ff3b5923216c86bd4131dbdb1abefd3dfb2a8e8d67ef0ebba921569b.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "X9/56/SHA256E-s2794363196--fa850f4a7e3389a6631c9961dd299ecdacde49452da851ea12c3c676438829f4.gz/SHA256E-s2794363196--fa850f4a7e3389a6631c9961dd299ecdacde49452da851ea12c3c676438829f4.gz";
      r2 = "39/XG/SHA256E-s2812556842--a160da5d8208ab7661a6e0a83d5329ea694e87051f9e6e6341b612490ec21950.gz/SHA256E-s2812556842--a160da5d8208ab7661a6e0a83d5329ea694e87051f9e6e6341b612490ec21950.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "Clare's meeting 2023.10.05\nHave new S1 fresh tissue. The FFPE block had higher tumour purity. Send for CRC Panel, specifically looking at PIK3CA.\n\nClare's meeting 2021.07.15\nBriony to follow up with Trishia to collect an extra  blood, just because the patient is alive and we have 1 blood from 2019 only.\n\nClare's meeting 2021.06.03\nPlan: Make DNA from 2019 - for WES. If Stafford renewed, add the 2014 sample. \n\nMeeting notes 22.04.2021\nSFRC01157_2E \nBlock from 23/09/2014. No analysis done for SFRCP \nTo do WES? (good responder to chemo). Hold off on WES \nLetters from Peter Mac? Angela to find out. Also try to find other blocks \n\n03.12.2020\nBlock 2E reviewed. For Gen? Patient was recruited in the hopes of getting fresh tissue but we missed out both times (March 2019 surgery and then May 2019 TAHBSO) so Josh requested a block - 2E is from 2014 \nHave blood. \nPlan: optimal debulking in May 2019 with no residual disease. At 2020, patient is well. Ask Warren to recall the 2019 block. To do WES later (when have funding). Maybe Trisha kept frozen tissue in 2017? \n\nEmail from Briony 04/06/2020: was recruited to SFRC with the idea of us getting tissue at the Mar2019 surgery, but we didn't end up getting any. Trisha didn't either, which makes me think that there wasn't much tissue to go around (I think it was just a biopsy). The patient then had further surgery 2 months later, full TAHBSO, but unfortunately this one seems to have slipped us by. Josh to request block. \n\nMeeting notes 04.06.2020\nBriony to check with Trisha if patient had surgery in 2019 and there's some tissue stored somewhere - also pathology. Will organise with Josh to recall block from 2014 if so.\n\nMeeting note (Gen and Clare 03/2020)\nPatient was consented in March 2019 - we got blood that day. The only histology/history we have is from a sample received in 2014. Why did we consent this patient? Was there a sample taken in 2019 that went straight to Simon Chu? If so I will follow up with him but if not should we just recall the block from 2014 in? \n";
      d_case_summary = "female with granulosa cell tumour.\nnotes from Trisha 03/12/20-no tissue collected at surgery as there was no disease present. This lady had chemo prior to surgery. Laparotomy LSO September 2014   Provera TAH, RSO, Omentectomy, Debulking May 2019 for recurrence with no residual disease. Her last medical review was on 08/09/2020 and she will have another medical review on 15/12/2020.";
      date_consented = "2019-03-25";
      tumour_type = "GCT (Granulosa Cell Tumour - including Sertoli Leydig Cell)";
      tumour_details = "Granulosa Cell Tumour of the Ovary";
      case_details = "female  50 years old with granulosa cell tumour. \n09-2014: GCT diagnosis Laparotomy LSO + Provera  \nInhibin positive \nEMA/AE1/3 negative \n05-2019: block sample used for this WES, Provera TAH, RSO, Omentectomy, Debulking for recurrence with no residual disease followed by Arimidex therapy \nInhibin positive \nOestrogen receptor +2 in 30% of tumour cells \nProgesterone receptor +3 in 60-70% of tumour cells  \n12-2020: no tissue collected at surgery as there was no disease present. This lady had chemo prior to surgery.  ";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "2014 GCT tissue recalled a/p Gen from RWH via email on 9/10/2020 by Josh\n\n2014 GCT Block 2E slides received on 27/10/2020 by Josh\n\n2019 GCT block requested from RCH/RWH on 30/04/21 by Warren, received 17/5/21";
      histology_summary = "IHC:\n- Inhibin positive\n- EMA/AE1/3 negative";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01157";
    capture = CREv2;
  }
