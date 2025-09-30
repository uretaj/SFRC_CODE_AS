args = commandArgs(trailingOnly=TRUE)
if (length(args) != 6) {
  stop("Invalid args. Need:
       plot-functions.r, facets dir, gridss vcf, chrlen, gene tbl, cosmic db",
       call.=FALSE)
}
PLOT_FUNCTIONS = args[1]
FACETS  = args[2]
GRIDSS  = args[3]
CHR_LEN = args[4]
GENES   = args[5]
COSMIC  = args[6]

# e.g.
# PLOT_FUNCTIONS = "/home/users/allstaff/doig.l/work/stafford/src/ecDNAPlots/plot-functions.r"
# FACETS = "/nix/store/wkyal1dwx24bq18ygpa3i0xpx2kggzgw-link-outputs"
# GRIDSS = "/nix/store/q7h9161x1bxpp7pxici9b19li6npkmwd-bionix-gridss-somatic"
# CHR_LEN = "/nix/store/4xdc37djaini0vv8jzhh74pxrixnq8xs-bionix-chromlen"
# GENES = "/nix/store/bxp8jdxlhdqq8hna9m14kq9v2k6m2w9r-bionix-fetch-gene-locations"
# COSMIC = "/nix/store/a7phvqbbn7cj4559a7rj2lj539isj25a-bionix-cosmic"

source(PLOT_FUNCTIONS)
data = load_data(FACETS, GRIDSS, CHR_LEN, GENES, COSMIC)
if (is.null(data)) {
  quit(save = "no")
}
amplicons = generate_amplicons(cn_dfs = data$cn_dfs,
                               gene_df = data$gene_df,
                               chr_len = data$chr_len,
                               min_seg_size = 0)
if (is.null(amplicons)) {
  quit(save = "no")
}
amplicon_SVs = get_amplicon_SVs(bedpe = data$bedpe, amplicons)
plot.circos(amplicons, amplicon_SVs, save_as = "out.png")

