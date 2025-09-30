with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        facets.reporting.preprocess = def facets.reporting.preprocess {
          mem = 50;
        };
        samtools.sort = def samtools.sort {walltime = "48:00:00";};
      })
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "wQ/FP/SHA256E-s41976805639--12561116664dd0cc294eb49f034e7c68b97803094c0d942f5093a6431432cb5c.gz/SHA256E-s41976805639--12561116664dd0cc294eb49f034e7c68b97803094c0d942f5093a6431432cb5c.gz";
      r2 = "30/36/SHA256E-s47191883453--bd9fa6d6d110e7a06d14c9cad83838b974f72bc4d233848956f86a32e2a70931.gz/SHA256E-s47191883453--bd9fa6d6d110e7a06d14c9cad83838b974f72bc4d233848956f86a32e2a70931.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "6x/0f/SHA256E-s69350369757--3b776d98d2808a9be56ef8e12fb11456233341f3a704de030bfba3467097b6d8.gz/SHA256E-s69350369757--3b776d98d2808a9be56ef8e12fb11456233341f3a704de030bfba3467097b6d8.gz";
      r2 = "Jk/40/SHA256E-s77477111579--80d032d4f6cf78a20c4b246cc1f327f5679cc66761c49b74c50d5af4818201b8.gz/SHA256E-s77477111579--80d032d4f6cf78a20c4b246cc1f327f5679cc66761c49b74c50d5af4818201b8.gz";
    }
    {
      site = "S2";
      class = "rna";
      pdx = false;
      r1 = "zQ/ZM/SHA256E-s8532986494--f5476a4b1d8cccc99b5a5c20a5edad6fd4445859e606d8667e68587cf67e7fc3.gz/SHA256E-s8532986494--f5476a4b1d8cccc99b5a5c20a5edad6fd4445859e606d8667e68587cf67e7fc3.gz";
      r2 = "0J/p0/SHA256E-s8880518590--e224e3f30d9dcd008287cfc4ea2cd4c19f94d17507632da871c03cb6cf122dc4.gz/SHA256E-s8880518590--e224e3f30d9dcd008287cfc4ea2cd4c19f94d17507632da871c03cb6cf122dc4.gz";
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
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01333";
  }
