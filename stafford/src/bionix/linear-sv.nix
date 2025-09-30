{bionix}:
with bionix;
with pkgs;
  input: let
    r = rWrapper.override {
      packages = with rPackages; [
        ggplot2
        StructuralVariantAnnotation
        TSP
        data_table
      ];
    };

    script = writeText "plot.r" ''
      set.seed(42)
      library(data.table)
      library(ggplot2)
      library(TSP)
      library(StructuralVariantAnnotation)
      png("plot.png",width=1920, height=1080)
      vcf <- VariantAnnotation::readVcf("${input}")
      if(nrow(vcf)>0){
        bpgr_with_chr_prefix <- breakpointRanges(vcf)
        seqlevelsStyle(bpgr_with_chr_prefix) <- "UCSC"
        pairs <- breakpointgr2pairs(bpgr_with_chr_prefix)
        fst <- as.data.table(S4Vectors::first(pairs))
        snd <- as.data.table(S4Vectors::second(pairs))
        len <- fread("${refdbs.chromlengths}")
        len[,V2:=cumsum(as.numeric(V2))]
        len[,V2:=c(0,V2[-length(V2)])]
        setkey(len,V1)
        lines <- cbind(fst[,.(seqnames,start)],snd[,.(seqnames,end)])
        colnames(lines) <- c("chr1","p1","chr2","p2")
        lines[,q1:=p1+len[as.character(chr1)]$V2]
        lines[,q2:=p2+len[as.character(chr2)]$V2]
        if(nrow(lines) < 1000 && nrow(lines) > 1){
          n <- nrow(lines)
          d <- matrix(0, n, n)
          for(i in 1:n)
            for(j in 1:(i-1))
              d[i,j] <- pmin(ifelse(lines$chr1[i] == lines$chr2[j], abs(lines$q1[i]-lines$q2[j]), Inf),
                             ifelse(lines$chr2[i] == lines$chr1[j], abs(lines$q2[i]-lines$q1[j]), Inf),
                             ifelse(lines$chr2[i] == lines$chr2[j], abs(lines$q2[i]-lines$q2[j]), Inf),
                             ifelse(lines$chr1[i] == lines$chr1[j], abs(lines$q1[i]-lines$q1[j]), Inf))
          tour <- solve_TSP(TSP(as.dist(cbind(rbind(0,d),0))))
          while(tour[1] != 1) tour <- c(tour[-1],tour[1])
          lines <- lines[tour[-1]-1]
        } else
          lines <- lines[order(q1)]
        lines[,id:=1:nrow(lines)]
        plot(
        ggplot(lines, aes(x=q1,y=id,xend=q2,yend=id))+geom_segment()+
          theme(axis.line=element_blank(),
               axis.text.x=element_text(size = 20),
               axis.text.y=element_blank(),
               axis.ticks=element_blank(),
               axis.title.x=element_blank(),
               axis.title.y=element_blank(),
               legend.position="none",
               panel.background=element_blank(),
               panel.border=element_blank(),
               panel.grid.major=element_blank(),
               panel.grid.minor=element_blank(),
               plot.background=element_blank()) +
               geom_vline(xintercept=len$V2[-1],colour='grey') +
               scale_x_continuous(breaks= len$V2+2e7, labels= substring(len$V1, 4),
                 limits = c(1, max(len$V2, lines$q2)) ) +
               geom_point() + geom_point(aes(x=q2,y=id))
        )
      } else plot.new()
      dev.off()
    '';
  in
    stage {
      name = "linear-sv.png";
      nativeBuildInputs = [r];
      buildCommand = ''
        Rscript ${script}
        install -Dm 644 plot.png $out
      '';
    }
