{
  bionix ? (import ../milton-slurm.nix {}).bionix,
  name,
  script,
  extraPackages ? [],
  tx2gene ? true,
}: samples:
with bionix;
with pkgs;
with lib; let
  t2g = callBionix ./t2g.nix {};

  script' = writeText "kallisto-analysis-${name}.r" ''
    library(data.table)
    library(gcimputeR)

    # Load data
    lab <- data.table(
      sample=c(${concatMapStringsSep "," (n: "'${n}'") (attrNames samples)}),
      path=c(${
      concatMapStringsSep "," (p: "'${p}/abundance.${
        if tx2gene
        then "h5"
        else "tsv"
      }'")
      (attrValues samples)
    })
    )
    t2g <- fread('${t2g}')
    ${
      if tx2gene
      then ''
        library(tximport)
        x <- tximport(lab$path, "kallisto", tx2gene=t2g)
        # Reshape
        x <- x$counts
        colnames(x) <- lab$sample
        x <- melt(as.data.table(x,keep.rownames=T))
        colnames(x) <- c("gene","sample","cnt")
      ''
      else ''
        x <- do.call(rbind, apply(lab, 1, function(p) {
          x <- fread(p[2])
          x[,sample:=p[1]]
          x[,.(sample=p[1],gene=target_id,cnt=est_counts)]
        }))
      ''
    }
    x <- x[cnt>0]

    # Resolve zeros
    z <- dcast(x, gene~sample, value.var="cnt")
    zz <- data.matrix(z[,-1])
    fit <-  impute_GC(zz)
    colnames(fit$X) <- colnames(zz)
    rownames(fit$X) <- z$gene
    x <- melt(as.data.table(fit$X, keep.rownames=T))
    colnames(x) <- c("gene","sample","cnt")

    ${script}
  '';

  gcimputeR = with rPackages;
    buildRPackage {
      name = "gcimputeR";
      src = fetchFromGitHub {
        owner = "udellgroup";
        repo = "gcimputeR";
        rev = "0d7c0e6fd3be9ff7d1c3a3f8100d91e721dad468";
        sha256 = "sha256-54WsZM4i8Jsbi7zd1YNcOMWdox6rqXOb1acRy5t5B4M=";
      };
      propagatedBuildInputs = [MASS purrr rootSolve];
    };

  r = rWrapper.override {
    packages = with rPackages;
      [gcimputeR tximport data_table rhdf5] ++ extraPackages;
  };
in
  stage {
    name = "kallisto-analysis-${name}";
    nativeBuildInputs = [r];
    buildCommand = ''
      OMP_NUM_THREADS=$NIX_BUILD_CORES Rscript ${script'}
      cp Rplots.pdf $out
    '';
    passthru.multicore = true;
  }
