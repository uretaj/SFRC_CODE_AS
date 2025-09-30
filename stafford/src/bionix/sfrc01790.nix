with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "0k/kx/SHA256E-s1462514233--0aae9e95bcab61521d18cdbece6849e23c6b3463193da24aa45d8923697ed004.gz/SHA256E-s1462514233--0aae9e95bcab61521d18cdbece6849e23c6b3463193da24aa45d8923697ed004.gz";
      r2 = "Mv/gG/SHA256E-s1474797668--e7c2e68b330233f619f71b545d1ed8b6ee539718cdafeb0e03cc2a35f734412e.gz/SHA256E-s1474797668--e7c2e68b330233f619f71b545d1ed8b6ee539718cdafeb0e03cc2a35f734412e.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "fp/74/SHA256E-s1459792126--6c5199ae5a75059b79602564f77f5bc9644a0019aa8d377ddd9a487eeb3bbd68.gz/SHA256E-s1459792126--6c5199ae5a75059b79602564f77f5bc9644a0019aa8d377ddd9a487eeb3bbd68.gz";
      r2 = "f6/qX/SHA256E-s1474792683--bc9e548952c78eff81d2a67d3a7cf6c1fb2938e0e1e589194e1020fb61ec9209.gz/SHA256E-s1474792683--bc9e548952c78eff81d2a67d3a7cf6c1fb2938e0e1e589194e1020fb61ec9209.gz";
    }
    {
      site = "S1_T1_2038";
      class = "tumours";
      pdx = true;
      r1 = "38/8f/SHA256E-s6702290801--8f10a0d183d447a2450548116ccfedd720a82217b5bc0dd7c91e494490a7faf8.gz/SHA256E-s6702290801--8f10a0d183d447a2450548116ccfedd720a82217b5bc0dd7c91e494490a7faf8.gz";
      r2 = "GX/Jk/SHA256E-s6660455786--b72ab606932ab5aa7ae1e391675b9167e50fb08ef7386551f523567ef151937b.gz/SHA256E-s6660455786--b72ab606932ab5aa7ae1e391675b9167e50fb08ef7386551f523567ef151937b.gz";
    }
    {
      site = "S1_T1_2038";
      class = "tumours";
      pdx = true;
      r1 = "Z2/Wf/SHA256E-s6580132420--ccc807c1e3b95cc6b3706ecc457a17eb2f0048282456aca938d82947db965ad4.gz/SHA256E-s6580132420--ccc807c1e3b95cc6b3706ecc457a17eb2f0048282456aca938d82947db965ad4.gz";
      r2 = "fK/jZ/SHA256E-s6550252663--171b6f37dff5ea2432c43e2d1b7b8b5a797767576c501168d16e4d3b71f75fb8.gz/SHA256E-s6550252663--171b6f37dff5ea2432c43e2d1b7b8b5a797767576c501168d16e4d3b71f75fb8.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      sophia_report = "SFRC01790_HRDReport_02Oct2023_Redacted.pdf";
      meeting_discussions_follow_up = "Clare sample meeting 21.12.2023\nPlan on fresh tissue S1: FFPE has only 20% purity at most, the OCT block from this case had 50-20% tumour purity. Should we just extract DNA from the OCT block and send for WES TWIST with low priority? \nCS: NO, PATIENT IS DECEASED AND WE DONT HAVE A CLEAR CELL OC PROJECT NEEDING CONFIRMATION OF THESE HITS. WE COULD CONSIDER THIS IN THE FUTURE IF WE DID WANT TO ACTIVATE THIS PROJECT EG FOR RUBY HUANG - IF IT WERE FUNDED. \n\n09Oct2023- Patient deceased Sep2023 as per email from treating clinician. BM. \nTo send for WES TWIST low priority as it will be a good comparator now that we also have the HRD report.\n\nClare's sample meeting 2023.10.05 \nWGS on hold for a month because she had TSO 500 and there are options for trials. Follow up on HRD results (Briony) \nPatient may self-fund len/pembro \n\nEmails from Clare 21.08.2023\nPatient has clear cell ovarian cancer, is not responding to 1st line therapy. Organising urgent TSO500 through Peter Mac/Nexomics. They recalled the block and made DNA, Ratana to submit form for testing.";
      blood_recall_history = "Sent text 11/9/23 LR";
      date_of_death = "09/2023";
      d_case_summary = "44y, clear cell ovarian cancer stage 4";
      date_consented = "2023-07-26";
      tumour_type = "Clear cell ovary";
      tumour_details = "clear cell ovarian cancer stage 4";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      patient_alive = "No";
    };
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01790";
  }
