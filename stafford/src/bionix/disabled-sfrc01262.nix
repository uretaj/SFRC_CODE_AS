with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        samtools.sort = def samtools.sort {walltime = "48:00:00";};
        octopus.callSomatic = def octopus.callSomatic {mem = 160;};
        manta.call = def manta.call {walltime = "48:00:00";};
        gridss.callSomatic = def gridss.callSomatic {mem = 50;};
      })
  ];
}; let
  samples = [
    {
      site = "1D";
      class = "tumours";
      pdx = false;
      r1 = "Mf/96/SHA256E-s93261089121--71d5975f10f95dff3d4587121406f5f94f5e473fb56888cbacf42c036fb71923.gz/SHA256E-s93261089121--71d5975f10f95dff3d4587121406f5f94f5e473fb56888cbacf42c036fb71923.gz";
      r2 = "Vv/mV/SHA256E-s93919291935--4fc8c3e528f14a15b6d03bc6e106ce7c3a89ac988be77d28be549eb4a904ae31.gz/SHA256E-s93919291935--4fc8c3e528f14a15b6d03bc6e106ce7c3a89ac988be77d28be549eb4a904ae31.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "vw/Vq/SHA256E-s48549508098--97f35c9df9d43f12b0e409b17a643d33a310a418a8596426fc03e32331e0d11f.gz/SHA256E-s48549508098--97f35c9df9d43f12b0e409b17a643d33a310a418a8596426fc03e32331e0d11f.gz";
      r2 = "fk/X0/SHA256E-s51673249848--4c111833828babac0a465fdd6321e512dca0a48188aa58467e560a54153a6e73.gz/SHA256E-s51673249848--4c111833828babac0a465fdd6321e512dca0a48188aa58467e560a54153a6e73.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    redcap = {
      meeting_discussions_follow_up = "Broca meeting 21.03.2022\nAsk Devindee if she can recall more 10um uncharged slides from block 1D.\nIf we get enough DNA ask Kas to do a Methylation assay if it has not been done yet.\n\nBroca meeting 2021.10.07\nOrganise broca on FFPE block \n\nClare's meeting notes 2021.07.01\nCCNE reviewed by Gayanie on block 1D: +2 to +3, in 60% tumour nuclei\n\nTexts between Clare and Ratana 15.06.2021\nPlease do CCNE1 IHC on the FFPE block we have. Not urgent, we do not have fresh tissue, please do for completeness. \nShe is in Ignite, CCNE1 is over-expressed but not amplified. Our WGS on FFPE found 6 copies.\n\nMeeting notes 11.09.2020\nBlock 1D review - only 10% in tinier areas. Patient is on a PARPi - if she progresses, would get new tissue. Don't bother with extracting DNA from this block for BROCA.\n\nMeeting notes 14.08.2020\nFind 1D block to extract more DNA. Would go for BROCA.\n\nMeeting notes 2.4.20:\nShe has started on maintenance olaparib \nCass to pass tumour DNA to Clare on Friday (3.4.20) to take to Alex Dobrovic \nSent a preliminary report - Tony and Clare need to send a final report \n\nMeeting notes 12.12.2019\nHopefully get the block next week but Gayanie away. Check with Kym if they will receive the block and do analysis, dissection, extraction etc for us (Holly sent email 13.12.19).  Otherwise, get urgent H&E and 10 x 10um sections cut, Holly and Clare to look at section and circle tumour for dissection - send to Sean's lab for extraction. \n\nJustin to quickly check with Tony if WES would be ok instead - Tony says WGS is better ";
      date_consented = "2019-12-10";
      tumour_details = "HGSOC";
      case_details = "WGS clinical notes \n67 year old woman with HGSOC, PET and CA125 CR post second-line therapy; ? cause of platinum sensitivity; not methylated for BRCA1/RAD51C;\n\nDid not respond well to PARPi, signature 3 of unknown cause. \n";
      brca_report = "SFRC01262_BRCAPLUS 15-6-2018_Redacted.pdf";
    };
    inherit samples;
    name = "SFRC01262";
  }
