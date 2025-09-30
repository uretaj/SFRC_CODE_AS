suppressPackageStartupMessages({
  library(stringr)
  library(StructuralVariantAnnotation)
  library(circlize)
  library(valr)
  library(dplyr)
  library(tibble)
  library(RSQLite)
})
options(stringsAsFactors = FALSE)

load_data = function(facets, gridss, chr_len, genes, cosmic) {
  postprocs = list.files(facets, pattern="postproc", full.names=T, recursive=T)
  samples = basename(dirname(postprocs))
  cn_dfs = list()
  for (i in 1:length(postprocs)) {
    load(postprocs[i])
    cn_df = z$cncf[,c(1,10,11,13)] %>% as_tibble()
    cn_dfs[[i]] = cn_df
  }
  rm(x,y,z)
  names(cn_dfs) = samples

  # load genes for annotation
  ignored_genes = "(^AL[0-9]+)|(^AC[0-9]+)|(^AP[0-9]+)|(^LINC)|(^RP)"
  gene_df = read.table(genes, header = T, sep = "\t",
                       col.names = c("gene", "chrom", "start", "end")) %>%
    filter(nchar(chrom) <= 2 & !grepl(ignored_genes, gene))
  gene_df$chrom = paste0("chr", gene_df$chrom)
  cosmic_db = dbConnect(SQLite(), cosmic)
  cosmic_genes = dbGetQuery(cosmic_db, 'SELECT DISTINCT "Gene name" FROM cosmic')
  dbDisconnect(cosmic_db)
  gene_df$cosmic = gene_df$gene %in% cosmic_genes$`Gene name`

  chr_len = read.csv(chr_len, sep="\t", header=F, col.names=c("chrom","length"))

  # same as function defined in SVA, except it keeps partner.name for AF join
  breakpointgr2bedpe_keep_partner = function(gr) {
    bedpe <- data.frame(chrom1 = GenomeInfoDb::seqnames(gr),
                        start1 = start(gr) - 1,
                        end1 = end(gr),
                        chrom2 = GenomeInfoDb::seqnames(partner(gr)),
                        start2 = start(partner(gr)) - 1,
                        end2 = end(partner(gr)),
                        name = names(gr),
                        partner.name = names(partner(gr)),
                        score = gr$QUAL,
                        strand1 = strand(gr),
                        strand2 = strand(partner(gr)))
    bedpe <- bedpe[(as.character(bedpe$chrom1) < as.character(bedpe$chrom2)) |
                   (bedpe$chrom1 == bedpe$chrom2 & bedpe$start1 < bedpe$start2),]
    return(bedpe)
  }

  vcf = readVcf(GRIDSS)
  gr = vcf %>% breakpointRanges()
  bedpe = gr %>% breakpointgr2bedpe_keep_partner()

  if (nrow(bedpe) == 0) {
    return(NULL)
  }

  # get each sample's AF for all SVs in VCF
  AF_df = geno(vcf)$AF %>% as.data.frame()
  for (col in colnames(AF_df)) {
    AF_df[,col] = AF_df[,col] %>% unlist()
  }

  # join with bedpe for first breakend AF
  colnames(AF_df) = paste(colnames(AF_df), "AF", sep = "_")
  AF_df$name = row.names(AF_df)
  bedpe = dplyr::left_join(bedpe, AF_df, by = "name")
  # join with bedpe for partner breakend AF
  colnames(AF_df) = paste(colnames(AF_df), "partner", sep = "_")
  bedpe = dplyr::left_join(bedpe, AF_df, by = c("partner.name"="name_partner"))
  return(
    list("cn_dfs" = cn_dfs,
         "gene_df" = gene_df,
         "chr_len" = chr_len,
         "bedpe" = bedpe)
  )
}

#---------------------------Three main functions--------------------------------

generate_amplicons = function(
  cn_dfs, gene_df, chr_len,
  samples="all", min_CN=10, min_seg_size=0, verbose=F
) {
  start_time = Sys.time()
  # only include the requested samples in plot
  if (samples != "all") {
    cn_dfs = cn_dfs[names(cn_dfs) %in% samples]
  }
  if (length(cn_dfs) == 0) {
    if (verbose) {
      cat("No amplicons to plot\n")
    }
    return(NULL)
  }
  cn_all = list()
  cn_amp = list()
  windows = NULL
  for (i in 1:length(cn_dfs)) {
    cn_all[[i]] = cn_dfs[[i]]
    sample = names(cn_dfs)[i]
    if (verbose) cat("\n", sample, "\n")
    # rename chromosomes from int to string
    cn_all[[i]]$chrom[cn_all[[i]]$chrom == 23] = 'X'
    cn_all[[i]]$chrom[cn_all[[i]]$chrom == 24] = 'Y'
    cn_all[[i]]$chrom = paste0("chr", cn_all[[i]]$chrom)

    if (verbose) {
      cat("All intervals: \n")
      print(cn_all[[i]])
    }

    # merge adjacent facets intervals with same copy number, thanks to Breon Feran
    cn_all[[i]]$event = 0
    event = 0
    for (j in 2:nrow(cn_all[[i]])) {
      if ((cn_all[[i]][j, 'chrom' ] != cn_all[[i]][j-1, 'chrom' ]) ||
          (cn_all[[i]][j, 'tcn.em'] != cn_all[[i]][j-1, 'tcn.em'])) {
        event = event + 1
      }
      cn_all[[i]][j, 'event'] = event
    }

    cn_all[[i]] = cn_all[[i]] %>%
      dplyr::group_by(event) %>%
      dplyr::summarise(
        chrom = dplyr::first(chrom),
        start = min(start),
        end = max(end),
        tcn.em = dplyr::first(tcn.em)
      )
    cn_all[[i]] = cn_all[[i]] %>% select(-event)

    if (verbose) {
      cat("Merged adjacent intervals: \n")
      print(cn_all[[i]])
    }

    # subset to given width/CN intervals
    cn_amp[[i]] = subset(cn_all[[i]],
                         (cn_all[[i]]$end - cn_all[[i]]$start) >= min_seg_size &
                          cn_all[[i]]$tcn.em >= min_CN)

    names(cn_amp)[i] = names(cn_dfs)[i]
    names(cn_all)[i] = names(cn_dfs)[i]

    if (verbose) {
      cat("Amplified intervals (sufficient width and CN): \n")
      print(cn_amp[[i]])
    }
    # no point continuing with a sample without amplicons
    if (nrow(cn_amp[[i]]) == 0) {
      next
    }

    # record length of each amplicon's chromosome (used below as upper bound)
    cn_amp[[i]] = left_join(cn_amp[[i]], chr_len, by = "chrom")

    # extend intervals by their width either side
    seg.width = cn_amp[[i]]$end - cn_amp[[i]]$start
    # extend to left, making sure windows stay positive
    cn_amp[[i]]$window_start = cn_amp[[i]]$start - seg.width
    cn_amp[[i]]$window_start = pmax(cn_amp[[i]]$window_start, 1)
    # extend to right, making sure windows stay within chromosome length
    cn_amp[[i]]$window_end = cn_amp[[i]]$end + seg.width
    cn_amp[[i]]$window_end = pmin(cn_amp[[i]]$window_end, cn_amp[[i]]$length)

    # extract the extended amplified intervals, and merge overlapping ones
    new_windows = tibble(chrom = cn_amp[[i]]$chrom,
                         start = as.integer(cn_amp[[i]]$window_start),
                         end   = as.integer(cn_amp[[i]]$window_end))

    windows = rbind(windows, new_windows)

    if (verbose) {
      cat("Amplified intervals in ",
          sample,
          ", extended out (plotting windows): \n")
      print(new_windows)
    }
  }

  if (is.null(windows)) {
    if (verbose) {
      cat("No amplicons to plot\n")
    }
    return(NULL)
  }

  merged_windows = bed_merge(windows)

  # sort windows by chromosome
  chr.order = c(paste0("chr",1:22),"chrX","chrY","chrM")
  merged_windows$chrom = factor(merged_windows$chrom, levels=chr.order)
  merged_windows = merged_windows[order(merged_windows$chrom),]
  merged_windows$chrom = as.character(merged_windows$chrom)

  # if there are multiple segments in any chromosome
  merged_windows$seg = ""
  label_apart_rows = (
    merged_windows$chrom
    %in%
    merged_windows$chrom[duplicated(merged_windows$chrom)]
  )
  if (any(label_apart_rows)) {
    # label-apart the different chromosome segments with an index
    labelapart = merged_windows$chrom[label_apart_rows]
    num_segs = 1
    seg_identifier = character(length(labelapart))  # empty vector
    seg_identifier[1] = "a"
    for (i in 2:length(labelapart)) {
      if (labelapart[i] != labelapart[i-1]) {
        num_segs = 1
      } else {
        num_segs = num_segs + 1
      }
      seg_identifier[i] = letters[num_segs]
    }
    merged_windows$seg[label_apart_rows] = seg_identifier
    merged_windows$chrseg = paste0(merged_windows$chrom, merged_windows$seg)
  } else {
    merged_windows$chrseg = merged_windows$chrom
  }

  if (verbose) {
    cat("All samples' amplicons merged: \n")
    print(merged_windows)
  }

  merged_windows_gr = makeGRangesFromDataFrame(
    merged_windows,
    seqnames.field="chrom",
    start.field="start",
    end.field="end",
    ignore.strand=T,
    keep.extra.columns=T
  )

  # take all CN segments that overlap with these merged amplified windows
  for (i in 1:length(cn_all)) {
    cn.gr = makeGRangesFromDataFrame(
      cn_all[[i]],
      seqnames.field="chrom",
      start.field="start",
      end.field="end",
      ignore.strand=TRUE,
      keep.extra.columns=TRUE
    )

    # note: can't just do 'intersect' as it won't remember CN, first do overlaps
    olaps = GenomicRanges::findOverlaps(cn.gr, merged_windows_gr)
    cn_amp[[i]] = cn.gr[queryHits(olaps)]
    cn_amp.CN = cn_amp[[i]]$tcn.em
    cn_amp[[i]] = GenomicRanges::intersect(cn_amp[[i]], merged_windows_gr)

    # finalise amplicons - update CN, rename chrom to segments
    cn_amp[[i]]$tcn.em = cn_amp.CN
    cn_amp[[i]]$seg = merged_windows$seg[subjectHits(olaps)]
    cn_amp[[i]] = cn_amp[[i]] %>% as_tibble()
    cn_amp[[i]]$chrom = paste0(cn_amp[[i]]$seqnames, cn_amp[[i]]$seg)
    cn_amp[[i]] = cn_amp[[i]] %>% select(chrom, start, end, tcn.em)
  }

  if (verbose) {
    cat("All CN segments overlapping with these amplified regions: \n")
    print(cn_amp)
  }

  present_chroms = unique(merged_windows$chrom)
  gene_df = gene_df %>% filter(chrom %in% present_chroms)
  if (nrow(gene_df) > 0) {
    gene_df = gene_df %>%
      makeGRangesFromDataFrame(keep.extra.columns=T) %>%
      sort()

    # add gene annotations
    # note: can't just do 'intersect' as it won't remember label
    olaps = GenomicRanges::findOverlaps(gene_df, merged_windows_gr)
    amp_genes = gene_df[queryHits(olaps)]
    amp_genes_labels = amp_genes$gene
    amp_genes_cosmic = amp_genes$cosmic
    amp_genes_segs = merged_windows$seg[subjectHits(olaps)]
    # trim genes to just within the amplicons - only matters if gene on edge
    amp_genes$gene = c()
    amp_genes$cosmic = c()

    gene_starts = start(ranges(amp_genes))
    gene_ends = end(ranges(amp_genes))
    window_olaps = merged_windows_gr[subjectHits(olaps)]
    ordered_windows = merged_windows[subjectHits(olaps),]
    if (length(olaps) > 0) {
      for (i in 1:length(olaps)) {
        if (gene_starts[i] < ordered_windows[i,]$start |
            gene_ends[i] > ordered_windows[i,]$end) {
          amp_genes[i] = GenomicRanges::intersect(amp_genes[i], window_olaps[i])
        }
      }
    }
    amp_genes$gene = amp_genes_labels
    amp_genes$cosmic = amp_genes_cosmic
    amp_genes$chrseg = paste0(seqnames(amp_genes), amp_genes_segs)
    amp_genes = amp_genes %>%
      as_tibble() %>%
      select(chrseg, start, end, gene, cosmic)

    if (verbose) {
      cat("All genes within amplified regions: \n")
      print(amp_genes)
      print(Sys.time() - start_time)
    }
  } else {
    cat("No genes within amplified regions")
    amp_genes = NULL
  }

  return(
    list("cn_amp" = cn_amp,
         "genes" = amp_genes,
         "merged_windows" = merged_windows,
         "merged_windows_gr" = merged_windows_gr)
  )
}

get_amplicon_SVs = function(bedpe, amplicons, verbose = F) {
  start_time = Sys.time()
  if (verbose) {
    cat("All SVs: \n")
    print(bedpe)
  }

  amplicon_SVs = subset(bedpe,
                        bedpe$chrom1 %in% amplicons$merged_windows$chrom &
                        bedpe$chrom2 %in% amplicons$merged_windows$chrom)

  if (verbose) {
    cat("SVs in relevant chromosomes: \n")
    print(amplicon_SVs)
  }

  amplicon_SVs = amplicon_SVs %>% select(-name)
  # Filter SVs down to those that run between amplified intervals
  # label them with corresponding interval
  if (nrow(amplicon_SVs) > 0) {
    link_left = GRanges(seqnames = amplicon_SVs$chrom1,
                        ranges   = IRanges(amplicon_SVs$start1,
                                           amplicon_SVs$end1))
    link_rght = GRanges(seqnames = amplicon_SVs$chrom2,
                        ranges = IRanges(amplicon_SVs$start2,
                                         amplicon_SVs$end2))
    left_olaps = GenomicRanges::findOverlaps(link_left,
                                             amplicons$merged_windows_gr)
    rght_olaps = GenomicRanges::findOverlaps(link_rght,
                                             amplicons$merged_windows_gr)
    # Record which segment the SVs occured in e.g. 3a not just 3
    seg1 = amplicons$merged_windows_gr[subjectHits(left_olaps)]$seg
    seg2 = amplicons$merged_windows_gr[subjectHits(rght_olaps)]$seg
    stopifnot(length(seg1) == nrow(left_olaps))
    stopifnot(length(seg2) == nrow(rght_olaps))
    amplicon_SVs$seg2 = amplicon_SVs$seg1 = ""
    amplicon_SVs$seg1[queryHits(left_olaps)] = seg1
    amplicon_SVs$seg2[queryHits(rght_olaps)] = seg2
    amplicon_SVs$chrseg1 = paste0(amplicon_SVs$chrom1, amplicon_SVs$seg1)
    amplicon_SVs$chrseg2 = paste0(amplicon_SVs$chrom2, amplicon_SVs$seg2)
    keep_rows = intersect(queryHits(left_olaps), queryHits(rght_olaps))
    amplicon_SVs = amplicon_SVs[keep_rows,]
  }

  if (verbose) {
    cat("SVs in/between amplified windows: \n")
    print(amplicon_SVs)
    print(Sys.time() - start_time)
  }
  return(amplicon_SVs)
}

plot.circos = function(
  amplicons, amplicon_SVs, selected_segments=NULL,
  genome_scale_size=1.25, chr_label_size=1.85, min_SV_qual=0, min_AF=0,
  SV_types=c("intra segmental","inter segmental","inter chromosomal"),
  gene_padding=0.6, gene_font_size=1, cosmic_font_size=1.7,
  gene_track_height=0.6, include_genes=T,cosmic_only=F, save_as="", verbose=F
) {
  merged_windows = amplicons$merged_windows
  merged_windows$chrom = merged_windows$chrseg
  cn_amp = amplicons$cn_amp

  if (save_as != "") {
    png(file = save_as, width = 1720, height = 1720)
  }
  if (min_SV_qual > 0 || min_AF > 0) {
    AF_cols = paste0(names(cn_amp), "_AF")
    AF_cols = c(AF_cols, paste0(AF_cols, "_partner"))
    AFs = amplicon_SVs[,AF_cols]
    max_AFs = apply(AFs, 1, max)
    amplicon_SVs = amplicon_SVs %>%
      filter(score >= min_SV_qual & max_AFs > min_AF)
  }
  if (!is.null(selected_segments)) {
    if (selected_segments$inclusions != "") {
    inc = selected_segments$inclusions %>%
      strsplit(",") %>%
      unlist() %>%
      trimws()
    inc = paste0("chr", inc)
    merged_windows = merged_windows %>% filter(chrom %in% inc)
    for (i in 1:length(cn_amp)) {
      cn_amp[[i]] = cn_amp[[i]] %>% filter(chrom %in% inc)
    }
    amplicon_SVs = amplicon_SVs %>% filter(chrseg1 %in% inc &
                                           chrseg2 %in% inc)
    if (!is.null(amplicons$genes)) {
      amplicons$genes = amplicons$genes %>% filter(chrseg %in% inc)
    }
  }
    if (selected_segments$exclusions != "") {
    exc = selected_segments$exclusions %>%
      strsplit(",") %>%
      unlist() %>%
      trimws()
    exc = paste0("chr", exc)
    merged_windows = merged_windows %>% filter(!chrom %in% exc)
    for (i in 1:length(cn_amp)) {
      cn_amp[[i]] = cn_amp[[i]] %>% filter(!chrom %in% exc)
    }
    amplicon_SVs = amplicon_SVs %>% filter((!chrseg1 %in% exc) &
                                           (!chrseg2 %in% exc))
    if (!is.null(amplicons$genes)) {
      amplicons$genes = amplicons$genes %>% filter(!chrseg %in% exc)
    }
    }
  }

  if (nrow(merged_windows) == 0) {
    return(FALSE)
  }

  circos.clear()
  circos.par("start.degree" = 90, points.overflow.warning = FALSE)

  circos.genomicInitialize(merged_windows[,c("chrom", "start", "end")],
                           sector.names = substr(merged_windows$chrom, 4, 8),
                           tickLabelsStartFromZero = F,
                           axis.labels.cex = genome_scale_size,
                           labels.cex = chr_label_size
  )
  set_track_gap(gap = 0.01)

  if (include_genes && !is.null(amplicons$genes) && nrow(amplicons$genes) > 0) {
    if (nrow(amplicons$genes) > 200 || cosmic_only) {
      message = paste0(nrow(amplicons$genes), " labels; cosmic only")
      if (verbose) print(message)
      text(message,
           x = 0.85,
           y = 0.95,
           cex = 1.5)
      amplicons$genes = amplicons$genes %>% filter(amplicons$genes$cosmic)
    }
    if (verbose) {
      print("Plotting genelabels:")
      print(amplicons$genes)
    }
    cosmic_fontsize = 1.7
    label_size = if_else(amplicons$genes$cosmic, cosmic_fontsize, 1)
    circos.genomicLabels(data.frame(amplicons$genes),
                         labels.column = 4,
                         side = "outside",
                         cex = gene_font_size * label_size,
                         padding = gene_padding,
                         labels_height = 1.5 * gene_track_height * max(
                           strwidth(amplicons$genes$gene) * label_size
                         ))
  }

  # plot CN segments
  cn_all = bind_rows(cn_amp)
  circos.track(track.height = 0.2,
               bg.lwd = 0.6,
               ylim=c(min(cn_all$tcn.em), max(cn_all$tcn.em)),
               # x and y meaningless, called once for each segment
               panel.fun=function(x,y) {
                 # extract CNs for all samples on this segment only
                 seg_CNs = subset(cn_all, chrom == CELL_META$sector.index)
                 circos.segments(seg_CNs$start,
                                 seg_CNs$tcn.em,
                                 seg_CNs$end,
                                 seg_CNs$tcn.em,
                                 lwd = 3)
                 }
               )

  # add scale
  circos.yaxis()

  # add allele frequency track
  AF_cols = grep("AF", colnames(amplicon_SVs), value = T)
  if (nrow(amplicon_SVs) > 0 && length(AF_cols) > 0) {
    partner1 = grep("AF$", colnames(amplicon_SVs), value = T)
    partner2 = grep("AF_partner", colnames(amplicon_SVs), value = T)
    # filter AFs based on SV types
    included_SVs = amplicon_SVs
    if (!("intra segmental" %in% SV_types)) {
      included_SVs = filter(included_SVs, !(chrom1 == chrom2 & seg1 == seg2))
    }
    if (!("inter segmental" %in% SV_types)) {
      included_SVs = filter(included_SVs, !(chrom1 == chrom2 & seg1 != seg2))
    }
    if (!("inter chromosomal" %in% SV_types)) {
      included_SVs = filter(included_SVs, chrom1 == chrom2)
    }
    AF_starts = included_SVs[,c("chrseg1","start1","end1","strand1",partner1)]
    AF_ends   = included_SVs[,c("chrseg2","start2","end2","strand2",partner2)]
    colnames(AF_starts)[1:4] = str_remove_all(colnames(AF_starts)[1:4], "1")
    colnames(AF_ends)[1:4] = str_remove_all(colnames(AF_ends)[1:4], "2")
    colnames(AF_ends) = str_remove_all(colnames(AF_ends), "_partner")
    AFs = rbind(AF_starts, AF_ends)

    AF_cols = paste0(names(cn_amp), "_AF")
    plot_AFs = AFs[,c("chrseg","start","end","strand", AF_cols)]
    # create new columns for negative strand, allows stacking of positive vals
    neg_AF_cols = paste0(AF_cols, "_neg")
    plot_AFs[,neg_AF_cols] = -plot_AFs[,AF_cols]
    plot_AFs[plot_AFs$strand == "+",neg_AF_cols] = (
      plot_AFs[plot_AFs$strand == "+",neg_AF_cols]*0
    )
    plot_AFs[plot_AFs$strand == "-",AF_cols] = (
      plot_AFs[plot_AFs$strand == "-",AF_cols]*0
    )

    total_bp = sum(merged_windows$end - merged_windows$start)
    bar_width = total_bp %/% 1000
    colours = c("#994F00","#40B0A6","#006CD1","#E66100")

    if (verbose) {
      print("allele frequency")
      print(plot_AFs)
      print("colours:")
      print(colours)
    }

    circos.track(ylim = c(-length(cn_amp), length(cn_amp)),
                 track.height = 0.175,
                 bg.lwd = 0.6,
                 # x and y meaningless, called once for each segment
                 panel.fun = function(x, y) {
                   # extract AFs for this segment only
                   chrAFs = plot_AFs[plot_AFs$chrseg == CELL_META$sector.index,]
                   if (nrow(chrAFs) > 0) {
                     # necessary to avoid bug in circlize - expects multirow df
                     if (nrow(chrAFs) == 1) {
                       chrAFs = rbind(chrAFs, chrAFs)
                     }
                     # positive stacked bar
                     circos.barplot(
                       value = as.matrix(chrAFs[,AF_cols]),
                       pos = (chrAFs$start + chrAFs$end) %/% 2,
                       bar_width = bar_width,
                       col = colours[1:length(AF_cols)],
                       border = colours[1:length(AF_cols)])
                     # manual negative stacked barplot - sum values cumulatively
                     neg_cols = chrAFs[,neg_AF_cols]
                     if (length(neg_AF_cols) > 1) {
                       for (i in 2:ncol(neg_cols)) {
                         neg_cols[,i] = rowSums(neg_cols[,1:i])
                       }
                     }
                     # then plot on top of each other, will appear stacked
                     for (i in 1:length(neg_AF_cols)) {
                       # ensure R doesn't get confused with single-col df
                       if (length(neg_AF_cols) > 1) {
                         value = pull(neg_cols, rev(neg_AF_cols)[i])
                       } else {
                         value = neg_cols
                       }
                       circos.barplot(
                         value = value,
                         pos = (chrAFs$start + chrAFs$end) %/% 2,
                         bar_width = bar_width,
                         col = colours[length(AF_cols) + i],
                         border = colours[length(AF_cols) + i])
                     }
                   }
                   # add x-axis
                   circos.lines(x = CELL_META$xlim, y = c(0, 0), lwd = 0.3)
                 })
  }

  if (nrow(amplicon_SVs) > 0) {
    # takes bedpe table and gives either start or end links depending on linkNum
    bedpe_to_link = function(amplicon_SVs, linkNum) {
      cols = c("chrseg", "start", "end")
      amp_cols = paste0(cols, linkNum)
      links = amplicon_SVs[,amp_cols]
      colnames(links) = cols
      links$width = as.integer(links$end) - as.integer(links$start) + 1
      return(as.data.frame(links))
    }

    if ("intra segmental" %in% SV_types) {
      # intra segmental linktrack
      intra_seg = filter(amplicon_SVs, chrom1 == chrom2 & seg1 == seg2)
      if (nrow(intra_seg) > 0) {
        circos.genomicLink(bedpe_to_link(intra_seg, 1),
                           bedpe_to_link(intra_seg, 2),
                           col = "#7570b3",
                           h = 0.2)
      }
    }

    if ("inter segmental" %in% SV_types) {
      # inter segmental link track
      inter_seg = filter(amplicon_SVs, chrom1 == chrom2 & seg1 != seg2)
      if (nrow(inter_seg) > 0) {
        circos.genomicLink(bedpe_to_link(inter_seg, 1),
                           bedpe_to_link(inter_seg, 2),
                           col = "#1b9e77")
      }
    }

    if ("inter chromosomal" %in% SV_types) {
      # inter chromosomal link track
      inter_chr = subset(amplicon_SVs, chrom1 != chrom2)
      if (nrow(inter_chr) > 0) {
        circos.genomicLink(bedpe_to_link(inter_chr, 1),
                           bedpe_to_link(inter_chr, 2),
                           col = "#d95f02")
      }
    }

  }

  if (save_as != "") {
    circos.clear()
    dev.off()
  }

  return(TRUE)
}

