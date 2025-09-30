{
  bionix ? (import ../milton-slurm.nix {}).bionix,
  samples ? [],
  genes,
  text ? false,
  tx2gene ? true,
  width ? 12,
  height ? 7.4,
  violin ? false,
}:
with bionix;
with lib;
with pkgs;
  callBionix ./kallisto-r.nix {
    inherit tx2gene;
    name =
      if violin
      then "violin"
      else "boxplot";
    extraPackages = with rPackages; [ggplot2 ggrepel];
    script = ''
      samples <- c(${concatMapStringsSep "," (x: "'${x}'") samples})
      genes <- toupper(c(${concatMapStringsSep "," (x: "'${x}'") genes}))
      ${optionalString (!tx2gene) "genes <- t2g[gene%in%genes]$id"}
      x[,clr:=scale(log(cnt),scale=F),by=sample]
      library(ggplot2)
      library(ggrepel)
      x <- x[gene %in% genes]
      x[,out:=clr%in%boxplot.stats(clr)$out,by=gene]
      x[tstrsplit(sample,"-")[[1]]%in%samples,out:=T]
      if(${
        if text
        then "1"
        else "0"
      }){
        write.table(x, file="Rplots.pdf", sep="\t", row.names=F)
      } else {
        pdf("Rplots.pdf", width=${toString width}, height=${toString height})
        print(ggplot(x, aes(gene, clr)) +
          geom_${
        if violin
        then "violin"
        else "boxplot"
      }() +
          geom_text_repel(aes(label=sample,colour=factor(1+tstrsplit(sample,"-")[[1]]%in%samples)), data=x[out==T]) +
          theme_minimal() +
          theme(legend.position="none",axis.text.x=element_text(angle=45,hjust=1)) +
          scale_colour_brewer(type="qual", palette=2))
        dev.off()
      }
    '';
  }
