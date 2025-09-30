{ bionix ? (import ../../milton-slurm.nix {}).bionix }:

with bionix;
with lib;
with types;

let
  samples = [
    {
      sample = "SFRC01039";
      type = "OCS";
      path =
        "fastqs/rnaseq/AGRF_CAGRF17900_HG3VGDMXX/SFRC01039_S1_HG3VGDMXX_TTCCTGTT-AGTATCTT_L001_R1.fastq.gz";
      sha256 =
        "0d79607a1140952dd2f1a9eec0626863f18043bbad4ce37b157fb8d4be6c50bd";
    }
    {
      sample = "SFRC01039";
      type = "pdx";
      path =
        "fastqs/rnaseq/AGRF_CAGRF17900_HG3VGDMXX/SFRC01039_T1_HG3VGDMXX_GTCGGAGC-GGTTATAA_L001_R1.fastq.gz";
      sha256 =
        "4d3ffce0f716407b0472b7577914c06aebc6e9847bc52be1682d68789c993e9a";
    }
    {
      sample = "SFRC01040";
      type = "OCS";
      path =
        "fastqs/rnaseq/AGRF_CAGRF17900_HG3VGDMXX/SFRC01040_S1_HG3VGDMXX_GCCACAGG-CATGCCAT_L001_R1.fastq.gz";
      sha256 =
        "9ab899d4523bdb6e2a32f8ed03fb7b8c39e53e964117bee947ba3e4524bd0ee5";
    }
    {
      sample = "SFRC01040";
      type = "pdx";
      path =
        "fastqs/rnaseq/AGRF_CAGRF17900_HG3VGDMXX/SFRC01040_T1_HG3VGDMXX_CTTGGTAT-CCAAGTCC_L001_R1.fastq.gz";
      sha256 =
        "72130d073f19210cb28abc7dbd0a055698568ebfc4a47999ae55b92c966fc1fe";
    }
    {
      sample = "SFRC01042";
      type = "left_ovary";
      path =
        "fastqs/rnaseq/AGRF_CAGRF17900_HG3VGDMXX/SFRC01042_S1_HG3VGDMXX_ACTCGTGT-ATTGGAAC_L001_R1.fastq.gz";
      sha256 =
        "be057d21e862063d9ee8b9c5a76dd66e12c50ec6b463940baab04276981a1aaf";
    }
    {
      sample = "SFRC01042";
      type = "right_ovary";
      path =
        "fastqs/rnaseq/AGRF_CAGRF17900_HG3VGDMXX/SFRC01042_S2_HG3VGDMXX_TCCAACGC-TTGGACTT_L001_R1.fastq.gz";
      sha256 =
        "a11cb16afba1bbfeeea3c36166cab88d13f3c633e331cfbc6e87439b9023dbf1";
    }
    {
      sample = "SFRC01105";
      type = "OCS";
      path = "grimmond/s3/batch3/MDX190063_SFRC01105_S1_RNA_S3_R1_001.fastq.gz";
      path2 =
        "grimmond/s3/batch3/MDX190063_SFRC01105_S1_RNA_S3_R2_001.fastq.gz";
      sha256 =
        "4874d82335259b3c9876d3f27f0c8a52a7b26d2328f79a9016078799cc249b36";
      sha256-2 =
        "9f818a4f1b15222a27d717e67a9b770d33c38a61f7d72221ccfe58ea4c399d94";
    }
    {
      sample = "SFRC01032";
      type = "HGSOC";
      path =
        "fastqs/rnaseq/AGRF_CAGRF17900_HG3VGDMXX/SFRC01032_S1_HG3VGDMXX_TTACAGGA-TGACAAGC_L001_R1.fastq.gz";
      sha256 =
        "aae3aed0aadd6395340b18cbc65182f4883785d3c8b94e8abb2f757d7bfc5795";
    }
    {
      sample = "SFRC01032";
      type = "pdx";
      path =
        "fastqs/rnaseq/AGRF_CAGRF17900_HG3VGDMXX/SFRC01032_T1_HG3VGDMXX_AGTACTCC-AACCTGTT_L001_R1.fastq.gz";
      sha256 =
        "5d651161371a4d395863ba89c7b8489bef0eec0cc2a18c7145ad65f94a2da01e";
    }
    {
      sample = "SFRC01049";
      type = "HGSOC";
      path =
        "fastqs/rnaseq/AGRF_CAGRF17900_HG3VGDMXX/SFRC01049_S1_HG3VGDMXX_TGCGAGAC-CATTGTTG_L001_R1.fastq.gz";
      sha256 =
        "12b145b766ff94ebb166fd7bb5ebca49499968f7d25f9a504e41013ac4fbb7fe";
    }
    {
      sample = "SFRC01049";
      type = "pdx";
      path =
        "fastqs/rnaseq/AGRF_CAGRF17900_HG3VGDMXX/SFRC01049_T1_HG3VGDMXX_AATGCCTC-TCGATCCA_L001_R1.fastq.gz";
      sha256 =
        "cea01f7b1c5439c3b8ac8b97271797d88c4bdcf78ba1d5b990ed43b440bdc33c";
    }
    {
      sample = "SFRC01052";
      type = "HGSOC";
      path =
        "fastqs/rnaseq/AGRF_CAGRF17900_HG3VGDMXX/SFRC01052_S1_HG3VGDMXX_ACAGGCGC-CTCTGCCT_L001_R1.fastq.gz";
      sha256 =
        "e8632720d0d62dda1be43a622d462e7a8d7c5cd880920515d0cd006f9f79330d";
    }
    {
      sample = "SFRC01052";
      type = "pdx";
      path =
        "fastqs/rnaseq/AGRF_CAGRF17900_HG3VGDMXX/SFRC01052_T2_HG3VGDMXX_TACCGAGG-CCTGAACT_L001_R1.fastq.gz";
      sha256 =
        "e009e05ef2035a39106e32fff8c7437242971f8e79b5618c34663d7ee58bd5ca";
    }
    {
      sample = "PH419";
      type = "10623_E";
      path =
        "fastqs/rnaseq/AGRF_CAGRF18568_HG3VGDMXX/PH419_10623_E_HG3VGDMXX_ATATGGAT-CTGTATTA_L001_R1.fastq.gz";
      sha256 =
        "da5d4eb804a780881af3aee6025c98130aae983dfef6af892633806c2a58fb7a";
    }
    {
      sample = "PH419";
      type = "10627_D";
      path =
        "fastqs/rnaseq/AGRF_CAGRF18568_HG3VGDMXX/PH419_10627_D_HG3VGDMXX_CGGACAAC-TCCGGATT_L001_R1.fastq.gz";
      sha256 =
        "33bffdfe7f23e83c2e5db005206722e04276c5ce17a1c72d8e1ad6aca8fc1de0";
    }
    {
      sample = "PH142";
      type = "11235_E";
      path =
        "fastqs/rnaseq/AGRF_CAGRF18568_HG3VGDMXX/PH142_11235_E_HG3VGDMXX_TAAGTGGT-CTTAAGCC_L001_R1.fastq.gz";
      sha256 =
        "73cc3d4ff38a12130bf4d4d07e046e7e58c9962b2b813934bddb3ab207a60f57";
    }
    {
      sample = "PH006";
      type = "10351_E";
      path =
        "fastqs/rnaseq/AGRF_CAGRF18568_HG3VGDMXX/PH006_10351_E_HG3VGDMXX_TCGATATC-ACACGAGT_L001_R1.fastq.gz";
      sha256 =
        "34f6e75022dd4167901560c448b8d3d51e9adabf894841fc75cb4f6849dcc3ec";
    }
    {
      sample = "PH006";
      type = "10353_D";
      path =
        "fastqs/rnaseq/AGRF_CAGRF18568_HG3VGDMXX/PH006_10353_D_HG3VGDMXX_TCGTAGTG-AGACTTGG_L001_R1.fastq.gz";
      sha256 =
        "5d6ad6ca71a094fe6592ccfa1b02eb56fbd64d1020b1f748b46eae55a7b542a9";
    }
    {
      sample = "PH003";
      type = "10647_D";
      path =
        "fastqs/rnaseq/AGRF_CAGRF18568_HG3VGDMXX/PH003_10647_D_HG3VGDMXX_AGCCTCAT-AGTAGAGA_L001_R1.fastq.gz";
      sha256 =
        "2174b7a44021e02d1650a1b4df17f2af5fba8c2e045b71e076949d3f2b212791";
    }
    {
      sample = "PH003";
      type = "10649_E";
      path =
        "fastqs/rnaseq/AGRF_CAGRF18568_HG3VGDMXX/PH003_10649_E_HG3VGDMXX_GATTCTGC-GACGAGAG_L001_R1.fastq.gz";
      sha256 =
        "d2019e7e3022055c43fd0d573a881f15c2ee71a568b435d7de8076fbc7da8dae";
    }
    {
      sample = "PH003";
      type = "10840_E";
      path =
        "fastqs/rnaseq/AGRF_CAGRF18568_HG3VGDMXX/PH003_10840_E_HG3VGDMXX_CGTTAGAA-TTCAGGTC_L001_R1.fastq.gz";
      sha256 =
        "8ba510732ff52125a4337235b56061c23e5016ad7fd3206f1426fb27b5eee038";
    }
  ];

  fetch = { path, sha256, sha256-2 ? null, path2 ? null, ... }:
    let fq = filetype.gz (filetype.fq { });
    in tagFiletype fq (pkgs.fetchurl {
      inherit sha256;
      url =
        "file:///stornext/Bioinf/data/bioinf-data/Papenfuss_lab/projects/stafford/lib/"
        + path;

    }) // optionalAttrs (path2 != null && sha256-2 != null) {
      pair = tagFiletype fq (pkgs.fetchurl {
        url =
          "file:///stornext/Bioinf/data/bioinf-data/Papenfuss_lab/projects/stafford/lib/"
          + path2;
        sha256 = sha256-2;
      });
    };

  procSampleKallisto = flip pipe [
    fetch
    (x:
      kallisto.quant ({
        bootstrapSamples = 100;
        ref = ref.grch38.ensembl.cdna;
      } // optionalAttrs (!(x ? pair)) {
        single = true;
        fragmentLength = 200;
        fragmentSD = 50;
      }) ([ x ] ++ optional (x ? pair) x.pair))
  ];
  organise = { sample, type, ... }@s:
    nameValuePair "${sample}-${type}" (procSampleKallisto s);
in linkOutputs (listToAttrs (map organise samples))
