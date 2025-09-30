# Script to call Shatterseek using a facets 'postproc' and manta VCF
#
# Usage: Rscript ___.R $FACETS_FILENAME $MANTA_FILENAME $OUTPUT_DIRECTORY
#
# Produces a table with shatterseek output, and pdf visualising LOW/HIGH confidence calls

# Original script from:
#   Breon Feran
#   Jan 2021

# Edited:
#   Lachlan Doig
#   Aug 2021

suppressPackageStartupMessages(library(ShatterSeek))
suppressPackageStartupMessages(library(StructuralVariantAnnotation))
suppressPackageStartupMessages(library(stringr))
suppressPackageStartupMessages(library(dplyr))
suppressPackageStartupMessages(library(staplr))
suppressPackageStartupMessages(library(gridExtra))
suppressPackageStartupMessages(library(cowplot))

args = commandArgs(trailingOnly=TRUE)
if (length(args) != 3) {
  stop("Invalid arguments. Need: facets postproc file,
                                 manta vcf file,
                                 path of output directory", call.=FALSE)
}
FACETS = args[1]
MANTA = args[2]
OUT_DIR = args[3]

#--------------------------------SV data----------------------------------------

cat("Generating SV data frame\n")

vcf = readVcf(MANTA)
filter = ((info(vcf)$SOMATICSCORE >= 50) & (filt(vcf) == "PASS"))
bedpe = subset(vcf, filter) %>% breakpointRanges() %>% breakpointgr2bedpe()

bedpe = subset(bedpe, !((bedpe$chrom1 %in% c("chrM","chrY")) |
                        (bedpe$chrom2 %in% c("chrM","chrY"))))

if (nrow(bedpe) == 0) {
  cat("No rows left in SV data frame\n")
  write.table(data.frame(), file = paste0(OUT_DIR, "/shatterseek_df.tsv"), quote = F)
  quit(save = "no")
}

simpleEventType = ifelse(
  bedpe$chrom1 != bedpe$chrom2, "TRA",
  ifelse(bedpe$strand1 == bedpe$strand2 & bedpe$strand1 == '+', "h2hINV",
         ifelse(bedpe$strand1 == bedpe$strand2, "t2tINV",
                ifelse(bedpe$strand1 == '+', "DEL",
                       "DUP"))))

SV_data = SVs(
  chrom1=substr(bedpe$chrom1, 4, 5),
  pos1=as.integer((bedpe$start1 + bedpe$end1) / 2),
  chrom2=substr(bedpe$chrom2, 4, 5),
  pos2=as.integer((bedpe$start2 + bedpe$end2) / 2),
  SVtype=simpleEventType,
  strand1=as.character(bedpe$strand1),
  strand2=as.character(bedpe$strand2)
)

rm(simpleEventType)
rm(bedpe)

#-------------------------------CNV data----------------------------------------

cat("Generating CNV data frame\n")
load(FACETS)
rm(x)
rm(y)

CN_df = z$cncf[,c(1,10:11,13)]
rm(z)

CN_df$chrom[CN_df$chrom == 23] = 'X'
CN_df = subset(CN_df, chrom != 24) # no Ys allowed

# remove adjacent intervals with the same copy number
CN_df$event = 0
event = 0
for (i in 2:nrow(CN_df)) {
  if ((CN_df[i, 'chrom'] != CN_df[i-1, 'chrom']) ||
      (CN_df[i, 'tcn.em'] != CN_df[i-1, 'tcn.em'])) {
    event = event + 1
  }
  CN_df[i, 'event'] = event
}

CN_df = CN_df %>%
  group_by(event) %>%
  summarise(
    chrom = dplyr::first(chrom),
    start = min(start),
    end = max(end),
    tcn.em = dplyr::first(tcn.em)
  )

CN_data = CNVsegs(
  chrom = as.character(CN_df$chrom),
  start = CN_df$start,
  end = CN_df$end,
  total_cn = as.numeric(CN_df$tcn.em)
)

#-----------------------------Shatter Seek--------------------------------------

cat("Running shatterseek\n")

chromothripsis = shatterseek(SV.sample = SV_data, seg.sample = CN_data)
rm(SV_data)
rm(CN_data)

#-----------------------------Visualisation-------------------------------------

Q_VALUE_CUTOFF = 0.2

shatterseek_df = as(chromothripsis, "data.frame")
shatterseek_df <- shatterseek_df %>%

  mutate(
    qval_fragment_joins = p.adjust(pval_fragment_joins,  method = 'fdr'),
    qchr_breakpoint_enrichment = p.adjust(chr_breakpoint_enrichment,  method = 'fdr'),
    qval_exp_cluster = p.adjust(pval_exp_cluster,  method = 'fdr')
  ) %>%

  # According to "3. Recommended cut-off values to interpret the output of ShatterSeek"
  # https://github.com/parklab/ShatterSeek/blob/master/tutorial.pdf
  mutate(
    confidence_raw = case_when(

      (clusterSize_including_TRA - number_TRA) >= 6 &
        max_number_oscillating_CN_segments_2_states >= 7 &
        qval_fragment_joins >= Q_VALUE_CUTOFF &
        (qchr_breakpoint_enrichment <= Q_VALUE_CUTOFF | qval_exp_cluster <= Q_VALUE_CUTOFF)
      ~ 'HIGH-INTRA',

      (clusterSize_including_TRA - number_TRA) >= 3 &
        number_TRA >= 4 &
        max_number_oscillating_CN_segments_2_states >= 7 &
        qval_fragment_joins >= Q_VALUE_CUTOFF
      ~ 'HIGH-INTER',

      (clusterSize_including_TRA - number_TRA) >= 6 &
        max_number_oscillating_CN_segments_2_states >= 4 &
        qval_fragment_joins >= Q_VALUE_CUTOFF &
        (qchr_breakpoint_enrichment <= Q_VALUE_CUTOFF | qval_exp_cluster <= Q_VALUE_CUTOFF)
      ~ 'LOW-NA',

      T ~ 'NONE-NA'
    ),

    confidence        = str_split_fixed(confidence_raw, '-', 2)[,1],
    confidence_reason = str_split_fixed(confidence_raw, '-', 2)[,2]
  ) %>%

  dplyr::select(-confidence_raw) %>%

  mutate(
    # Canonical chromothripsis if at least 60% of the CN segments in the event are oscillating
    canonical = (pmax(max_number_oscillating_CN_segments_2_states,
                      max_number_oscillating_CN_segments_3_states)
                 /number_CNV_segments) >= 0.6
  ) %>%

  dplyr::select(chrom, start, end, confidence, confidence_reason, canonical, everything()) %>%
  arrange(factor(chrom, levels = c(1:22, 'X')), start)

positives = subset(shatterseek_df, confidence != "NONE")

if (nrow(positives)) {

  cat("Beginning visualisation\n")

  plot.chr = function(n) {
    suppressMessages((
      plots_chr = plot_chromothripsis(ShatterSeek_output = chromothripsis, chr = paste0("chr", n))
    ))
    plot_chr = arrangeGrob(plots_chr[[2]], plots_chr[[3]], plots_chr[[4]],
                           nrow = 3, ncol = 1)
    return(plot_chr)
  }

  for (i in 1:nrow(positives)) {
    current = positives[i,]
    pdf(paste0(OUT_DIR, '/chr', current$chrom, 'vis.pdf'), width=5, onefile=F)
    print(plot_grid(plotlist = lapply(current$chrom, plot.chr),
                    labels = paste("Chr", current$chrom, ";",
                                   current$confidence,
                                   ifelse(current$confidence == "HIGH",
                                          current$confidence_reason,
                                          "")
                    )
    ),
    label_size = 5,
    scale = 0.92)
    dev.off()
  }
  staple_pdf(input_directory=OUT_DIR,
             output_filepath=paste0(OUT_DIR, "/cthrpsis_vis.pdf"))
  for (file in list.files(OUT_DIR, "chr", full.names = T)) file.remove(file)

  cat("Finished plotting\n")
} else {
  cat("Shatterseek has no confidence in any calls\n")
}

write.table(shatterseek_df, file = paste0(OUT_DIR, "/shatterseek_df.tsv"), quote = F)
