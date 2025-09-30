with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        samtools.sort = def sambamba.sort {
          ppn = 10;
          walltime = "48:00:00";
          mem = 38;
          flags = "-m 32G";
        };
      })
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "qQ/VM/SHA256E-s40605874621--101b6f1e2130ceb417dc6d711e6114cee396b428f9319260219eb6e8c9d55de8.gz/SHA256E-s40605874621--101b6f1e2130ceb417dc6d711e6114cee396b428f9319260219eb6e8c9d55de8.gz";
      r2 = "FG/WZ/SHA256E-s43145670057--0ecde728c051d36077d8435b43672ce39e20d132d1e27e61fd4adde81ab199bb.gz/SHA256E-s43145670057--0ecde728c051d36077d8435b43672ce39e20d132d1e27e61fd4adde81ab199bb.gz";
    }
    {
      site = "S1";
      class = "tumours";
      pdx = false;
      r1 = "2V/8X/SHA256E-s91140988249--aa84d7124bfce2bd011d723e8aa972e6877d51219af92c0432bba95da9a264d5.gz/SHA256E-s91140988249--aa84d7124bfce2bd011d723e8aa972e6877d51219af92c0432bba95da9a264d5.gz";
      r2 = "2p/j4/SHA256E-s96221007287--3d0b69d7da93e95bb14041e06007693642237435a129ac02919d0935ed9744b9.gz/SHA256E-s96221007287--3d0b69d7da93e95bb14041e06007693642237435a129ac02919d0935ed9744b9.gz";
    }
    {
      site = "S1";
      class = "rna";
      pdx = false;
      r1 = "4z/Zz/SHA256E-s7931807308--5407ec632f824ede17db2282a8e1fddb0408e211c7c106e9fbf9a461733cd12c.gz/SHA256E-s7931807308--5407ec632f824ede17db2282a8e1fddb0408e211c7c106e9fbf9a461733cd12c.gz";
      r2 = "Wk/jM/SHA256E-s7637734605--131e3b3a7e70ae56c69bd8aa793f657013b1127ffcaf3a858da51f8615697748.gz/SHA256E-s7637734605--131e3b3a7e70ae56c69bd8aa793f657013b1127ffcaf3a858da51f8615697748.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "non-gynae cancer";
      meeting_discussions_follow_up = "WEHI/Monash group meeting 2021.11.16\nSend S1 RNA for both WTS (Grimmond) and RNA analysis for Monash (Peter Mac; they have just submitted early PDX samples for RNAseq). Have 20 ul RNA remaining for potential cDNA.\n\nRC Meeting 2021.10.28\nDiscussed WGS report (Grimmond only).\nNew PDX in Renea Taylor's group (Monash). Can try treatments. \nDo you want RNA? Yes, do now.  \nThere is a brain met project. \nCan get TSO500 though MoST - Ask doctor for referral.\nTry to get another block from primary - Renee to do the IHC \nHigh Sig 3 - due to bleed through from Sig 8? \n\nMeeting with Clare 2021.09.10\nmacrodissect and send S1 for WGS. DNA only for now\n\nMeeting notes 22.10.2020\nAngela chasing letter from current clinician to check status. Only 50 ng DNA from FFPE block. Wait to see if he gets fresh tissue. Would then be able to send to Sean for WGS \n\nMeeting notes 16.10.2020\nReview by Gayanie back on Block 1. Very small areas of tumour, Plan: Microdissect for DNA. Aim for WES, but might only be enough for panel";
      date_of_death = "05/2023";
      d_case_summary = "71M, small cell cancer of the prostate. 8/2020 1L CRT carbo etop x4. Good response. 8/2021 MRI: new right frontal met. Resected and WBI.";
      tumour_type = "Prostate cancer";
      tumour_details = "small cell NET of prostate";
      case_details = "71 years old male \n\n07-2020:\tDiagnosis, Small cell carcinoma of prostate. Biopsy  \nCD56 diffuse strong \nBlock was recalled, we tried extracting DNA for WES but no success, not enough DNA \n\n08-2021:\tbrain surgery \nPositive for cytokeratin, synaptophysin and chromogranin \nConfirming metastatic small cell carcinoma \nBlood and Fresh tissue received and sent for WGS";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "2020 Small Cell Prostate Ca block recalled from AnatPath on 5/10/2020 by Josh via Fax, a/p Holly\n\n2020 Small Cell Prostate C block 1 received on 13/10/2020";
      mp_subgroup_sfrcp4_new_id = "Single Cancer control";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01320";
  }
