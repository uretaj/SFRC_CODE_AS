with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Vj/Pg/SHA256E-s1514629451--ec1b6b54370417d7a4dfd2f99aa08ff1b6ee341e0a3c31e3c0d2f5e44f14ad21.gz/SHA256E-s1514629451--ec1b6b54370417d7a4dfd2f99aa08ff1b6ee341e0a3c31e3c0d2f5e44f14ad21.gz";
      r2 = "xf/Xg/SHA256E-s1569411896--c80d265c3edb31545f3b1fd6b82cffe9fb035abb70a50027665f5679a7df0fd0.gz/SHA256E-s1569411896--c80d265c3edb31545f3b1fd6b82cffe9fb035abb70a50027665f5679a7df0fd0.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "7z/2X/SHA256E-s1440944675--ba97d0d822fa7a8ed0f91d88469acaec41a6c7cb62be365304aa1502f08b6770.gz/SHA256E-s1440944675--ba97d0d822fa7a8ed0f91d88469acaec41a6c7cb62be365304aa1502f08b6770.gz";
      r2 = "0K/V4/SHA256E-s1486874918--fd15d0acced4fbc65c81eeb4c2ba1a0c93ab5e1694e066514712cf2c10ad8491.gz/SHA256E-s1486874918--fd15d0acced4fbc65c81eeb4c2ba1a0c93ab5e1694e066514712cf2c10ad8491.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "0K/J1/SHA256E-s1443183710--aca6f066b1bfc08cfc504fcf1807d124505a94218166cd6a81800bab8ccdffbd.gz/SHA256E-s1443183710--aca6f066b1bfc08cfc504fcf1807d124505a94218166cd6a81800bab8ccdffbd.gz";
      r2 = "Xw/Jz/SHA256E-s1485233912--625e5cf1f7a44726bc085c7f17f772692d2ee6f1bd0924b0be5e078025b2bd8d.gz/SHA256E-s1485233912--625e5cf1f7a44726bc085c7f17f772692d2ee6f1bd0924b0be5e078025b2bd8d.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "8p/Pk/SHA256E-s1489916124--aae5e10aa57c5b73a24343cc9a3dd9fa5383019890fb8416808521fa8e7f0ac6.gz/SHA256E-s1489916124--aae5e10aa57c5b73a24343cc9a3dd9fa5383019890fb8416808521fa8e7f0ac6.gz";
      r2 = "vz/gM/SHA256E-s1532340727--534c9bc3ad1d154c7501fea7b8da5a92af730674a1fd57a036aecc7f26756660.gz/SHA256E-s1532340727--534c9bc3ad1d154c7501fea7b8da5a92af730674a1fd57a036aecc7f26756660.gz";
    }
    {
      site = "S2_T1-18391";
      class = "tumours";
      pdx = false;
      r1 = "3X/WG/SHA256E-s2810025572--c459d189e9491424bf241a08cfa0bece385ebfe51ec2db1d4b6667570ae48d51.gz/SHA256E-s2810025572--c459d189e9491424bf241a08cfa0bece385ebfe51ec2db1d4b6667570ae48d51.gz";
      r2 = "Q5/Qp/SHA256E-s2911262500--3f2db6d24e265157db5a75ad31812025ec9ed4d57edafc3ca747e97da2becb32.gz/SHA256E-s2911262500--3f2db6d24e265157db5a75ad31812025ec9ed4d57edafc3ca747e97da2becb32.gz";
    }
    {
      site = "S2_T1-18391";
      class = "tumours";
      pdx = false;
      r1 = "wv/1J/SHA256E-s2709532647--c5c698c0fbfa4a17366d9b2c1cd690691b89d0d8ed0f1d2c26fb6f652bf73914.gz/SHA256E-s2709532647--c5c698c0fbfa4a17366d9b2c1cd690691b89d0d8ed0f1d2c26fb6f652bf73914.gz";
      r2 = "qP/p0/SHA256E-s2795522893--8d128f6259f8f8ab3f6ef3c9a96ea19e6d5d729062666007f4bbd14a3694df45.gz/SHA256E-s2795522893--8d128f6259f8f8ab3f6ef3c9a96ea19e6d5d729062666007f4bbd14a3694df45.gz";
    }
    {
      site = "S2_T1-18391";
      class = "tumours";
      pdx = false;
      r1 = "xf/qq/SHA256E-s2714905932--90da3e0653f47aa5f09aed748abfc0560b6e07870d81ecaa556caf22427e23f9.gz/SHA256E-s2714905932--90da3e0653f47aa5f09aed748abfc0560b6e07870d81ecaa556caf22427e23f9.gz";
      r2 = "7v/7v/SHA256E-s2793417085--337ee4721db2b4f4a4dafba192ff8dfc76f906faba050c26b69e6bc800126ceb.gz/SHA256E-s2793417085--337ee4721db2b4f4a4dafba192ff8dfc76f906faba050c26b69e6bc800126ceb.gz";
    }
    {
      site = "S2_T1-18391";
      class = "tumours";
      pdx = false;
      r1 = "GZ/Q3/SHA256E-s2802820841--cf6ca78cf926a48933b8046f33b81e2eda758ba87a60d57a322c1db853447fb7.gz/SHA256E-s2802820841--cf6ca78cf926a48933b8046f33b81e2eda758ba87a60d57a322c1db853447fb7.gz";
      r2 = "kg/kx/SHA256E-s2881848809--228cbf8641a8ee3a2f53453698184cb2f9334622eb4ce0018070c3694058fb97.gz/SHA256E-s2881848809--228cbf8641a8ee3a2f53453698184cb2f9334622eb4ce0018070c3694058fb97.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "vulval vaginal";
      meeting_discussions_follow_up = "Email from Justin 25.02.2021\nDaniel has finished the viral integration analysis with negative results:\nno viral integrations were found.\n\nRC Meeting 04.02.2021\nDiscussed WGS report.\nThis is metastatic breast cancer. Mammary tissue went to vulva (milkline).\nTony's suggestions: Get Daniel Cameron to analyze this outside of the Stafford Fox Pipeline as he has a new method for detecting virus.    \nUrgent OCT sections required for HER2 ISH before next week. But our S2 are sectioned on uncharged slides at 10um thickness. We don't have FFPE block. \nPDX tumours are growing.\nWhatsApp message from Clare: The clinical sample FFPE is being submitted for HER2 ISH.\n\n17.11.2020\nGayanie queried if there was a mix up with sample S2, but Ratana is 95% certain it is correct. Have tumour purity, submit for WGS, but asked for identity check with the blood.\n\n09.11.2020\nS2 reviewed, Gayanie questioned if there was a sample mix upNo other tissue processing on that day. \nClare: Should look like adenocarcinoma. This is tumour metastasised to an inguinal lymph node which has been growing for some months. We expect it to look like a moderately /poorly differentiated adenocarcinoma. - to ask Gayanie. And what % tumour. - so can get molecular match \nWe have blood - should match the tumour. \nGayanie's reply: If you say this is tissue from a lymph node with metastatic tumour, I can say it's compatible with metastatic carcinoma (even though I do not see any residual lymph node tissue in any of the sections). I have estimated purity-see annotations in the case centre. If patient has paget's disease vulva with invasion, this is likely metastatic adenocarcinoma from that. If you definitely want to confirm this is metastatic adenocarcinoma from paget's- do CK7. \nNew purity: 30-50% tumour \n\n16.10.2020\nReview of S1 - no tumour, only fatty tissue. Clare has forwarded images to treating clinician.\nWant to know if she has targetable lesions. And evidence of radiosensitivity on WGS.";
      date_of_death = "09/2022";
      d_case_summary = "58 year old female diagnosed with Paget's disease of the vulva, right groin node diagnosed August 2019 now has a recurrence . Lymph nodes involved. To start urgent brachytherapy at PMCC.  For WGS.";
      tumour_type = "Breast cancer";
      tumour_details = "Vulva adenocarcinoma arising from Paget's disease (unusual skin cancer). Rare manifestation of rare disease.   This is metastatic breast cancer. Mammary tissue went to vulva.";
      case_details = "Has had initial vulval surgery. This is first episode of failure. Usually has a more chronic course. Very unusual. Vulva is ok - tracked to the LN - up to L3 on PET. Very unusual. Intended nodal field chemo RT. Should be radiosensitive. Want to know if she has targetable lesions. And evidence of radiosensitivity on WGS.";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      patient_alive = "No";
    };
    inherit samples;
    name = "SFRC01333";
    capture = TwistV2HR;
  }
