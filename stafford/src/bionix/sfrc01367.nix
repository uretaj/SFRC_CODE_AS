with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        facets.reporting.preprocess = def facets.reporting.preprocess {
          mem = 50;
        };
      })
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "21/85/SHA256E-s22686089006--92bcb1376ee800b09c9f50a9f60aff546c4f26a7f487f2c81907287a0cea3cda.gz/SHA256E-s22686089006--92bcb1376ee800b09c9f50a9f60aff546c4f26a7f487f2c81907287a0cea3cda.gz";
      r2 = "pX/qk/SHA256E-s23544194974--098a856bea654ffcb13180b1fd6e22352947cbf191f1e0d52607a21132cb24f7.gz/SHA256E-s23544194974--098a856bea654ffcb13180b1fd6e22352947cbf191f1e0d52607a21132cb24f7.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "0W/V3/SHA256E-s22495259284--368f0084925b39e3e815a8906ba71c8dd8127e3453b8601338970ee7adf9b48b.gz/SHA256E-s22495259284--368f0084925b39e3e815a8906ba71c8dd8127e3453b8601338970ee7adf9b48b.gz";
      r2 = "p7/mG/SHA256E-s23299245887--6b2fe4b64a7c6ac402d8ba4a9ce716819a6599128b21eb055c89b557b6d470a1.gz/SHA256E-s23299245887--6b2fe4b64a7c6ac402d8ba4a9ce716819a6599128b21eb055c89b557b6d470a1.gz";
    }
    {
      site = "S2";
      class = "tumours";
      pdx = false;
      r1 = "gX/37/SHA256E-s88967095568--e409f629a9268fe516ebb36da916962ef8928751b433c2993e8194d9bad2349c.gz/SHA256E-s88967095568--e409f629a9268fe516ebb36da916962ef8928751b433c2993e8194d9bad2349c.gz";
      r2 = "9P/mW/SHA256E-s93611273534--bcaa742aa11a27e47ac5bdb646528569826aa9f85c2ae2e421d610acec563033.gz/SHA256E-s93611273534--bcaa742aa11a27e47ac5bdb646528569826aa9f85c2ae2e421d610acec563033.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC Meeting 29.02.2024\nDiscussed WGS report (Grimmond and SFRC).\nTypical uLMS profile.\nSuper responder.\nFirst SFRC case that Grimmond found a gTP53.\n\nClare Sample meeting 2023.09.21\nS2 fresh tissue - all tumour, 90% \n\nTo do WGTS AFTER getting informed permission (clinical karyotype will be done as well) \n\nRC meeting 16.12 2021\nBriony/Clare to chase up what is happening with patient.\n\nClare's meeting 02.12.2021\nlook at STR profiling results, Matt and Clare to decide what is the next step for testing.\n\nMeeting with Clare 18.11.2021\nAlready planned to go for STR profiling (B1, 1J, and S1). Ask for ETA, urgent case (by week starting 13th December) \nNothing more for now (WGS) until this has been resolved with patient. \n\nClare and Ratana quick meeting 15.11.2021\nThe karyotype came from 11/11/2016, which is block 1J. Have the recent S1 and B1 collected. Extract DNA from all three and send for STR Profiling. Is urgent case, request electropherograms with data and give to Matt.\n\nRC meeting 28.10.2021\ndiscussion about 65% cell with male karyotype.\nCan do STR Profiling (which could be mixed) \nOnce our S1 is reviewed, would do WGS. Add these details to the submission. But sort this out first (Clare to speak to Paul James, Cancer Clinic) \n\nClare's meeting 2021.10.21\nWait for review for S1 and see if we can do WGS ";
      d_case_summary = "DAMIEN 23/11/23 History Synopsis:\nFemale in her 50's\ngTP53 as found in SFRC WGS.\nUterine leiomyosarcoma, near 20 year history of oligometastatic recurrences\n2005 - TAH BSO: ULMS, adjuvant epirubcin x6\n2009 - Dermal met resected\n2013 - Pancreatic met resected (Whipples)\n2014 - Right kidney met resected (Partial nephrectomy)\n2015 - Right gluteal met resected\n2016 - Right kidney met re-resected\n2021 - Lung and Rich ankle met - SRS and excised, respectively\n2023 - July, new abdominal mass, resected September (still ULMS)\n2023 - gTP53 mutation on WGS- Li Fraumeni syndrome\n2024 - new dx breast cancer, not uLMS. ";
      date_consented = "2021-01-27";
      tumour_type = "uLMS";
      tumour_details = "uLMS with gTP53";
      case_details = "50 years old with mixed karyotype\n\n2005: TH BSO, adjuvant chemotherapy with epirubicin x 6 (35 years old) \n\nImmunochemistry: SMA, Desmin positive.  S100 negative \n\n2009: resection of skin recurrence  \n\n2013: Whipple's procedure for abdominal recurrence  \n\n2014: right partial nephrectomy for metastatic disease (block 1A) \n\n2015 August: right gluteal soft tissue mass resection for recurrent disease  \n\n2016 Nov: right partial nephrectomy for metastatic disease with clear margins (Block 1J) \n\n2021 Feb: Blood B1 received \n\n2021 Oct: Fresh tissue S1 received  ";
      arc_portal_enrolled = "Yes";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2014,2016 blocks requested from Mater, 2013,2015 blocks requested from PAH by Warren 5/9/21\n2014, 2016 blocks received from Mater \n2013,2015 blocks received from PAH by Warren 18/10/21";
      mp_subgroup_sfrcp4_new_id = "Super Responder";
      patient_germline_mutations = "TP53";
    };
    inherit samples;
    name = "SFRC01367";
  }
