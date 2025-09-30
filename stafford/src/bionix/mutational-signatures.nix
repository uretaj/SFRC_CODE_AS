{bionix}:
with bionix;
with pkgs; let
  inherit (callPackage ./rConverters.nix {}) rToOrg;
in {
  sigs = pkgs.fetchurl {
    url = "http://cancer.sanger.ac.uk/cancergenome/assets/signatures_probabilities.txt";
    sha256 = "0v9nw1l2fs40qzqm3zmsz7lcmlldaqkhswici6v4vsb355a259a9";
  };

  sigsMatV3 = pkgs.fetchurl {
    url = "https://cancer.sanger.ac.uk/signatures/documents/453/COSMIC_v3.2_SBS_GRCh38.txt";
    sha256 = "0p3wzih6cyxhlj4c41zdh1nc7l0575xy5ka37mfd4l30w78ph48z";
  };

  decompose = exec ({
    vcf,
    sigs,
    ...
  }: name: let
    extractFromVCF = s: let
      script = writeText "extract.awk" ''
        BEGIN{OFS=FS="\t"}
        /^##/{print;next}
        /^#CH/{
          for(i = 10; i <= NF; i++)
            sample[$i]=i
        }
        {
          $10 = $sample["${s}"]
          NF = 10
        }
        /^#/{print;next}
        /SOMATIC/ && $7 == "PASS"{
          n=split($10, arr, ":")
          if(arr[1] ~ /[1-9]/)
            print
        }
      '';
    in
      exec'' (stage {
        name = "extract-${s}";
        buildInputs = with pkgs; [gawk];
        buildCommand = ''
          awk -f ${script} ${vcf} > $out
        '';
      });

    r = pkgs.rWrapper.override {
      packages = with pkgs.rPackages; [
        data_table
        gtable
        MutationalPatterns
        pkgs.rPackages."BSgenome_Hsapiens_UCSC_hg38"
        dplyr
        readr
      ];
    };
    script = writeText "script.r" ''
      library(MutationalPatterns)
      library(BSgenome.Hsapiens.UCSC.hg38)
      ref_genome <- "BSgenome.Hsapiens.UCSC.hg38"
      vcf <- read_vcfs_as_granges(
        c("${extractFromVCF name}"),
        sample_names = c("${name}"),
        genome = ref_genome,
        group = "auto+sex")
      library(dplyr)
      library(readr)
      library(data.table)

      ${sigs}

      # Fit mutation matrix to cancer signatures. This function finds the optimal linear
      # combination of mutation signatures that most closely reconstructs the
      # mutation matrix by solving a non-negative least-squares constraints problem.
      mut_mat <- mut_matrix(vcf_list = vcf, ref_genome = ref_genome)
      fit_res <- fit_to_signatures(mut_mat, cancer_signatures)
      # Select signatures with some contribution
      fit_res_contr <- fit_res$contribution[fit_res$contribution[, 1] > 0, ]
      res <- data.table(sig=names(fit_res_contr),fit=round(fit_res_contr, digits=1),pct=signif(fit_res_contr/sum(fit_res_contr)*100,2))

      write.table(res, file="output.csv", sep=",", row.names=F, col.names=T, quote=F)
    '';
  in
    stage {
      name = "mutational-signatures";
      buildInputs = with pkgs; [r gawk];
      buildCommand = ''
        Rscript ${script}
        awk -f ${rToOrg} output.csv > $out
      '';
    });

  v2 = def mutsigs.decompose {
    sigs = ''
      # Get Sanger sigs
      # better be explicit - the sig_probs file has 7 extra empty columns
      col_types <- paste0(c("ccc", paste0(rep("d", 30), collapse = ""), "ccccccc"), collapse = "")
      col_names <- c("SubstType", "Trinucleotide", "SomMutType", paste0("Sig", 1:30), paste0("foo", 1:7))
      cancer_signatures <- readr::read_tsv("${mutsigs.sigs}", col_names = col_names, col_types = col_types, skip = 1) %>%
        dplyr::arrange(SubstType) %>%
        dplyr::select(4:33) %>%
        as.matrix()
    '';
  };

  v3 = def mutsigs.decompose {
    sigs = ''
      cancer_signatures <- fread("${mutsigs.sigsMatV3}")
      cancer_signatures[,Type := NULL]
      cancer_signatures <- as.matrix(cancer_signatures, rownames=T)
    '';
  };
}
