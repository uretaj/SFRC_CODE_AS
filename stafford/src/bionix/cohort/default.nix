{
  bionix ? (import ../milton-slurm.nix {}).bionix,
  subset ? "100g",
  what ? "WGS",
}:
with bionix;
with pkgs.lib; let
  samples = callBionix ./sample-subset.nix {inherit subset what;};

  inherit (callBionix ./utils.nix {}) select;
in {
  # CNV heatmaps and PCA
  cnv =
    callBionixE ./cnv.nix {}
    (mapAttrs (_: x: x.postproc) (select "facets" samples));

  # PCA from samples with RNA
  rna-pca =
    callBionixE ./kallisto-r.nix
    {
      ppn = 10;
      mem = 30;
      script = ''
        source("${./pca.r}")
        zz[is.na(zz)] <- 0
        p <- codapca(t(zz),2)
        B <- scale(p$B)
        U <- scale(t(p$U))
        plot(B,pch=NA)
        text(B,colnames(zz),col='blue')
        plot(U,pch=NA)
        text(U,z$gene,col='red')
        dev.off()
      '';
      name = "pca";
    }
    (select "kallisto" samples);

  # these collate the respective tables across the cohort
  chord =
    callBionixE ./chord.nix {
      walltime = "00:01:00";
      mem = 1;
    }
    samples;
  gd =
    callBionixE ./cnv-stats.nix {
      gd = true;
      walltime = "00:01:00";
      mem = 1;
    }
    samples;

  # CNV signatures using Alexandrov method
  cnvsigs = with cnv-signatures;
    pipe samples [
      (mapAttrsToList (n: x: mapAttrsToList (m: y: getCNCF {name = "${n}-${m}";} y.postproc) (x.facets or {})))
      concatLists
      (mergeCNCFs {})
      (generateMatrix {})
      (extract {
        mem = 40;
        maxsigs = 10;
      })
    ];
}
