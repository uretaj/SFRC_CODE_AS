{bionix}: samples:
with bionix;
with pkgs;
with lib; let
  quant-app = stdenv.mkDerivation {
    name = "cnv-region-quant";
    nativeBuildInputs = [ghc];
    src = ./cnv-region-quant.hs;
    phases = ["buildPhase" "installPhase" "fixupPhase"];
    buildPhase = ''
      ghc -O3 -o quant $src
    '';
    installPhase = ''
      install -Dm 755 quant $out/bin/quant
    '';
  };

  quant = sample:
    exec'' (stage {
      name = "quant-cnv-regions";
      buildInputs = [quant-app];
      buildCommand = ''
        quant ${uniform} ${sample} > $out
      '';
    });

  toRegions = sample:
    exec'' (stage {
      name = "facets-regions-tcn";
      nativeBuildInputs = [(rWrapper.override {packages = [rPackages.data_table];})];
      buildCommand = ''
        Rscript $script
        cp regions.tsv $out
      '';
      script = writeText "cnv.r" ''
        library(data.table)
        load("${sample}")
        tmp <- as.data.table(z$cncf)
        tmp <- tmp[,.(chrom,start,end,tcn=tcn.em)]
        write.table(tmp, file="regions.tsv", sep="\t", row.names=F, col.names=F, quote=F)
      '';
    });

  cytobands = exec'' (stage {
    name = "query-cytobands";
    nativeBuildInputs = [mysql];
    buildCommand = ''
      mysql --user=genome --host=genome-mysql.cse.ucsc.edu -A -D hg38 -e "select chrom, chromStart, chromEnd, name from cytoBand where chrom not like '%\_%'" > $out
    '';
    outputHashMode = "flat";
    outputHashAlgo = "sha256";
    outputHash = "sha256:1aw8fnhvr5x1w39ncbakp9igkc37xdmmmpcnylnp4c5d94gsy09v";
  });

  uniform = exec'' (stage {
    name = "uniform-chunks";
    buildCommand = ''
      awk -f $script ${bionix.refdbs.chromlengths} > $out
    '';
    script = pkgs.writeText "uniform.awk" ''
      BEGIN{nchunks = 190;}
      function min(x, y){
        if(x < y)
          return x
        else
          return y
      }
      {
        width = int($2/nchunks+0.5)
        for(i = 0; i < nchunks; i++)
          print $1, 1+i*width, min((i+1)*width, $2), i
      }
    '';
  });

  r = rWrapper.override {
    packages = with rPackages; [data_table ggplot2 TSP forcats easyCODA];
  };

  heatmap = stage {
    name = "cnv-heatmap";
    nativeBuildInputs = [r];
    outputs = ["out" "data"];
    buildCommand = ''
      OMP_NUM_THREADS=$NIX_BUILD_CORES Rscript $script
      cp Rplots.pdf $out
      cp data.rds $data
    '';
    passthru.multicore = true;
    script = writeText "cnv-heatmap.r" ''
      library(data.table)

      # Load data
      x <- data.table()
      ${
        concatStringsSep "\n" (mapAttrsToList (n: s: ''
            tmp <- fread("${quant (toRegions s)}")
            colnames(tmp) <- c("name","chr","start","end","tcn")
            tmp[,sample:="${n}"]
            x <- rbind(x, tmp)
          '')
          samples)
      }

      # Order chromosomes and names
      library(forcats)
      x[,chr:=factor(chr,paste0("chr", 1:22))]
      x[,name:=fct_reorder2(paste(chr, name), start, chr, .desc=F)]

      # Seriation
      library(TSP)
      y <- dcast(x, sample~name,value.var="tcn")
      yy <- data.matrix(y[,-1])
      yy[is.na(yy)] <- 2
      rownames(yy) <- y$sample
      z <- rbind(yy, 2)
      tour <- solve_TSP(TSP(d <- dist(z)))
      while(tour[1] != nrow(z))
        tour <- c(tour[-1],tour[1])
      tour <- tour[-1]
      x[,sample:=factor(sample, y$sample[tour])]

      # Bin copy numbers to a max of 6
      x[,otcn := tcn]
      x[,tcn := cut(tcn, c(0,(1:6)-0.5, Inf), right=F)]

      saveRDS(x, file="data.rds")

      # Ploting
      library(ggplot2)
      pdf("Rplots.pdf", width=30, height=30/1.62)

      # Heatmap
      print(ggplot(x, aes(name, sample, fill=tcn)) +
        geom_tile() +
        theme(axis.text.x = element_text(angle=45, hjust=1)) +
        scale_x_discrete(breaks=function(x) x[seq(1,length(x),by=5)]) +
        scale_fill_manual(values=c("#31a354","#a1d99b","#ffffff","#efedf5","#bcbddc","#756bb1","#54278f")))

      # PCA
      library(easyCODA)
      plot(LRA(0.5+yy,'rowgreen'))

      dev.off()
    '';
  };
in
  heatmap
