with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        samtools.sort = def samtools.sort {walltime = "48:00:00";};
        facets.reporting.preprocess = def facets.reporting.preprocess {
          mem = 50;
        };
      })
  ];
}; let
  samples = [
    {
      prefix = "grimmond/s3/batch8/L2000235_S15";
      suffix = "_001";
      site = "B1";
      class = "normals";
      sha256-1 = "a4da87721c8e6fa88cc348094546b5bcf6b33d36e0d83457bad2801b4d6cf99a";
      sha256-2 = "7021c878969b27bb3b8de8138cb6c8551dd46eb918c60453230311f29f9f8959";
    }
    {
      prefix = "grimmond/s3/batch8/L2000236_S16";
      suffix = "_001";
      site = "S1";
      class = "tumours";
      sha256-1 = "5f463c24c4602bda73902e4f6b4c5875255fa36561757004a9ab8d66118b3c23";
      sha256-2 = "98b31d78dc306329b36a73c7f2d8044fd37a01effbf035c7122ea6ccca9f92d5";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      genomes100_tumour_types = "clear cell";
      meeting_discussions_follow_up = "RC meeting 08.09.2022\nDiscussed BROCA results.\nARID1A - BROCA and WGS are calling the same changes - frameshift in the same area.\n\nClare, Ratana meeting 2.05.2022\nS2 sample had IHC done. Is CD45+ and panCK-, so is not tumour, only lymphocytes. Clare emailing treating doctor about this, see if another biopsy is needed (patient may be getting Ipi/Nivo). For now, can't do anything with our S2.\n\n\nRC meeting 21.04.2022\nSend tissue S2 for WGS\n\nBroca meeting 2021.10.07\nOrganise BROCA on fresh tissue.\n\nRC Meeting notes 2020.07.09\nThe ARID1A mutations might not be that interesting, where they are on the alleles (as opposed to opposite ends), so wouldn't affect treatment options. \n2 germline MMR mutations in one person - interesting? Germline PMS2 and MLH1. Somatic MSH2 and MSH6. Loss of PMS2 and MLH1 together - methylation, rather than mutation? MLH1 mutation is not that severe? \nIHC for MMR - the germline or somatic mutations come up? \nPaul James's option needed before issuing a report. About the germline mutations. Will affect what Damien reports to doctor. Need FCC discussion. \n\nMeeting notes 2020.03.12.\nGo ahead for WGS ";
      date_consented = "2020-02-11";
      tumour_type = "Clear cell ovary";
      tumour_details = "Clear cell Ovarian";
      case_details = "59yo woman\n\n2020-02: diagnosis of clear cell ovarian carcinoma. PMS2 mutation detected. No pathogenic BRCA1/2 detected. \n\nFresh tissue S1 and Blood B1 received.\n\n2020-03: commenced chemo (carboplatin, paclitaxel, bevacizumab, 6 cycles)\nIHC positive: CK7, PAX8, Napsin A\nIHC negative: CK20, oestrogen receptors\nProgesterone receptors demonstrate moderate, +2 nuclear positivity in less than 2% tumor nuclei\np53: wild type\n\nS1 & B1 DNA sent for WGS\n\n2020-06: completed chemo, ongoing bevacizumab\n\n2021-02: completed adjuvant bevacizumab\n\n2022-01: S1 DNA sent for BROCA.\n\n2022-04: IHC on L groin lesion following potential recurrence clear cell ca ovary\nPositive: BCL6, CD20, CD10\nNegative: BCL2, wide spectrum keratin\nLight chains show polyclonal plasma cells\nNo CD20/CD5 expressing population\n\nTissue from core biopsy S2 received.  IHC Is CD45+ and panCK-, so is not tumour, only lymphocytes.\n-----------------------------------------------------------------------\n57 yo Clear cell ovarian cancer. FHx of ovarian, bowel, cervical , lung and blood cancer.PMS2 mutation (pathogenic c.1831dupA). MLH1 unkn path (c.2219T>C). Petermac FCC.";
      patient_information_complete = "Incomplete";
      receipt_eyebrow_hairs_complete = "Incomplete";
    };
    aligner = "minimap2";
    inherit samples;
    name = "SFRC01273";
  }
