{bionix}:
with bionix;
with pkgs;
  input: let
    r = rWrapper.override {
      packages = with rPackages; [circlize StructuralVariantAnnotation];
    };

    # Script thanks to Ruining Dong
    script = writeText "circos.r" ''
      library(dplyr)
      library(circlize)
      library(StructuralVariantAnnotation)
      vcf <- VariantAnnotation::readVcf("${input}")
      hg38lengths <- read.delim( "${refdbs.chromlengths}",
                            header = FALSE, sep = "\t", col.names = c("name", "end") )
      hg38lengths$name <- factor( hg38lengths$name,
        levels = paste0("chr", c( (1:22), "X", "Y", "M") ) )
      hg38lengths$start <- 1

      png("plot.png",width=1720, height=1720)
      if(nrow(vcf)>0){
        bpgr_with_chr_prefix <- breakpointRanges(vcf)
        seqlevelsStyle(bpgr_with_chr_prefix) <- "UCSC"
        pairs <- breakpointgr2pairs(bpgr_with_chr_prefix)
        link1 <- as.data.frame(S4Vectors::first(pairs))
        link2 <- as.data.frame(S4Vectors::second(pairs))
        circos.par("start.degree" = 90)
        circos.genomicInitialize( hg38lengths[, c("name", "start", "end")]
          , sector.names = gsub("^chr", "", hg38lengths$name)
          , major.by = 2e8, axis.labels.cex = 1.5, labels.cex = 2
          )
        circos.genomicLink(link1, link2
                          , lwd = 1.5, h.ratio = 0.9
                         )
        circos.clear()
      } else plot.new()
      dev.off()
    '';
  in
    stage {
      name = "circos.png";
      nativeBuildInputs = [r];
      buildCommand = ''
        Rscript ${script}
        install -Dm 644 plot.png $out
      '';
    }
