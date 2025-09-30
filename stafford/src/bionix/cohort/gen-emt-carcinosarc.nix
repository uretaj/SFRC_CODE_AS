{bionix ? (import ../milton-slurm.nix {}).bionix}:
with bionix;
with lib; let
  inherit (callBionix ./utils.nix {}) select;

  oldrna = (callBionix ../rnaseq/sfrc {}).linkInputs;
  newrna = pipe (callBionix ./all.nix {}) [
    (filterAttrs (n: _:
      builtins.elem n [
        "sfrc01073"
        "sfrc01105"
        "sfrc01131"
        "sfrc01304"
        "sfrc01342"
        "sfrc01343"
        "sfrc01507"
        "sfrc01534"
      ]))
    (select "kallisto")
  ];
  allrna = oldrna // newrna;

  pca =
    callBionixE ./kallisto-r.nix
    {
      ppn = 10;
      script = ''
        ind <- grep("(SFRC01025|SFRC01068|SFRC01073|SFRC01131|SFRC01343|PH419|PH142|PH003|PH006|PH592|SFRC01039|SFRC01040|SFRC01042|SFRC01105|SFRC01304|SFRC01534|SFRC01342|SFRC01507)", toupper(colnames(fit$X)))

        library(easyCODA)
        plot(LRA(fit$X[,ind]),map="colgreen")
        dev.off()
      '';
      extraPackages = with pkgs.rPackages; [easyCODA];
      name = "gen-emt-carcinosarc-pca";
    }
    allrna;

  chiyodaUp = ../../../lib/Chiyoda_up.txt;
  chiyodaDown = ../../../lib/Chiyoda_down.txt;
  tcga =
    bionix.fetchers.fetchAnnexFile
    "5j/7F/SHA256E-s272478333--ae98b5886b83da0b6423e77bba1145c515522997a723238c7631ce921309cd63/SHA256E-s272478333--ae98b5886b83da0b6423e77bba1145c515522997a723238c7631ce921309cd63";

  singscore =
    callBionixE ./kallisto-r.nix
    {
      ppn = 10;
      script = ''
        up <- data.table(gene=scan("${chiyodaUp}",what=character()))
        down <- data.table(gene=scan("${chiyodaDown}",what=character()))
        rnk <- function(x) rank(x) / (1+length(x))
        x[,rank:=rnk(cnt),by=sample]

        up[,up:=1]
        down[,up:=0]
        chiyoda <- rbind(up, down)
        setkey(chiyoda,gene)
        setkey(x,gene)
        x <- x[chiyoda]

        x[grep("(SFRC01025|SFRC01068|SFRC01073|SFRC01131|SFRC01343)", toupper(sample)),type:="uterine"]
        x[grep("(PH419[^_]*_D|PH142[^_]*_D|PH003[^_]*_D|PH006[^_]*_D|PH592[^_]*_D|SFRC01039|SFRC01040|SFRC01042|SFRC01105|SFRC01304)", toupper(sample)),type:="ovarian"]

        ss <- x[,.(singscore = mean(rank[up])-mean(rank[!up]),type),by=sample]

        load("${tcga}")
        tcga[,sample:=path]
        tcga[,rank:=rnk(FPKM),by=sample]
        setkey(tcga,gene)
        tcga <- tcga[chiyoda]
        ss <- rbind(ss, tcga[,.(singscore = mean(rank[up])-mean(rank[!up]),type="tcga-ov"),by=sample])

        library(ggplot2)
        pdf("Rplots.pdf", width=12, height=12/1.62)
        ggplot(ss, aes(type, singscore)) + geom_boxplot() + theme_minimal()
        dev.off()
      '';
      extraPackages = with pkgs.rPackages; [ggplot2];
      name = "gen-emt-carcinosarc-ss";
    }
    allrna;
in
  linkOutputs {
    "pca.pdf" = pca;
    "singscore.pdf" = singscore;
  }
