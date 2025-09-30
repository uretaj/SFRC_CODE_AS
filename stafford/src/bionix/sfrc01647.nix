with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        facets.reporting.preprocess = def facets.reporting.preprocess {
          mem = 30;
        };
      })
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "5X/pP/SHA256E-s57422616024--816f02512868280f1c29bc3af9df3b79cbb0be83011522ef4e03797511586a48.gz/SHA256E-s57422616024--816f02512868280f1c29bc3af9df3b79cbb0be83011522ef4e03797511586a48.gz";
      r2 = "3q/Kf/SHA256E-s60603883690--209980d32dba2ee7675ea54909e16729a86a9cdf95798c6a5db70c3e6f88bc7e.gz/SHA256E-s60603883690--209980d32dba2ee7675ea54909e16729a86a9cdf95798c6a5db70c3e6f88bc7e.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "zv/Mk/SHA256E-s104860548565--34da8e300233006639aa6651ad5feb05b5fb84236c2e9822f38c943829c9f3b3.gz/SHA256E-s104860548565--34da8e300233006639aa6651ad5feb05b5fb84236c2e9822f38c943829c9f3b3.gz";
      r2 = "K8/Pk/SHA256E-s110428845502--401e6caead2761ff564513af6751a5783b41012c1c4a877d97c15af994b5d5f5.gz/SHA256E-s110428845502--401e6caead2761ff564513af6751a5783b41012c1c4a877d97c15af994b5d5f5.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "km/GQ/SHA256E-s4231990863--20fa0323323e56d9abd158b125c65df2fbd16b4b18a0d4d21bda4025975e091d.gz/SHA256E-s4231990863--20fa0323323e56d9abd158b125c65df2fbd16b4b18a0d4d21bda4025975e091d.gz";
      r2 = "15/5m/SHA256E-s4197317673--b2ab0205b1a8a288aa4d0ec84b6a7bd1167fd6bcd90aeba37b6067db63dd9fcf.gz/SHA256E-s4197317673--b2ab0205b1a8a288aa4d0ec84b6a7bd1167fd6bcd90aeba37b6067db63dd9fcf.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      meeting_discussions_follow_up = "RC meeting 02.02.2023\nDiscussed WGS report (Grimmond and SFRC).\nDamien's Variant Meeting notes: \nSingle variant \nRB1 LoF variant with LoH. Not a common feature of SLTs.\nNo therapeutics \nDiscussion: \nNo DICER mutation, no CDKN2A loss. \n\nClare's Meeting 22.12.2022\nFFPE Block 1E from same surgery as S1, we already have WGS data. Do nothing with this block. \n\nClare Meeting 19.09.2022\nStill need letters and path reports. Our S1 tissue is all tumour, 60-70% tumour purity, Gayanie noted it looks like recurrent sex cord stromal tumour.\nTo send for WGS (SF tissue)";
      d_case_summary = "28F with recurrent Sertoli Leydig Tumour\n7/2019 - Stage IA Sertoli Leydig Tumour\n7/2022 - Large pelvic mass with peritoneal deposits\n31/8/2022 - Lap partial R Oopherectomy, partial omentectomy = recurrent sex cord tumour\n20/9/2022 - Carbo/Pac";
      date_consented = "2022-09-27";
      tumour_type = "GCT (Granulosa Cell Tumour - including Sertoli Leydig Cell)";
      tumour_details = "Recurrent ovarian Sertoli Leydig tumor";
      case_details = "28F\n\n2019-07: Dx Stage 1A Sertoli Leydig tumour\nSurgery: LSO\nIHC Postitve: CD56, WT1, Calretinin, inhibin (focal)\nIHC Negative: CK7, EMA\n\n2022-08: Recurrence\nSurgery: partial RSO, partial omentectomy. Ovarian tumour fixed and blocked (same as S1, Block 1E)\nIHC Positive: PR (1+/2+, 10%), vimentin, calretinine, AE1/3, CD56; WT-1, inhibin (focal positivity), \nIHC negative: ER, EMA\n\n2022-08: Blood B1 received. Fresh tissue S1 received\n\n2022-09 - current: Carboplatin/Paclitaxel\n\n2022-11: Sections from FFPE Block 1E received.\n\n2022-11: S1 DNA Sent for WGS:\nRB1 inactivating mutation of uncertain clinical significance";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      block_recall_history = "14/11/2022: 2022 sample requested from RWH pathology by Devindee.\n21/11/2022: 2022 slides received.";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01647";
  }
