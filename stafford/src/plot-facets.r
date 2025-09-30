library(ggplot2)
library(cowplot)
## https://www.r-bloggers.com/setting-axes-to-integer-values-in-ggplot2/
integer_breaks <- function(n = 5, ...) {
    fxn <- function(x) {
        breaks <- floor(pretty(x, n, ...))
        names(breaks) <- attr(breaks, "labels")
        breaks
    }
    return(fxn)
}

plotCNV <- function (x, emfit, plotChr=NA, pointalpha = 0.2,
                     pointsize = 1, segsize = 1.5, maxpoints = 1e5,
                     ...)
{
  theme_set(theme_minimal(...))
  jseg <- x$jointseg
  out <- emfit$cncf
  chrbdry <- which(diff(jseg$chrom) != 0)
  segbdry <- cumsum(c(0, out$num.mark))
  segstart <- 1 + segbdry[-length(segbdry)]
  segend <- segbdry[-1]
  mafR <- out$mafR.clust
  mafR <- abs(mafR)
  cfpalette <- c(colorRampPalette(c("white", "steelblue"))(10), "bisque2")
  cfcol <- cfpalette[round(10 * out$cf.em + 0.501)]
  cfcol[is.na(cfcol)] <- "bisque2"

  segpos <- data.frame(tcn=out$tcn.em, lcn=out$lcn.em, cfcol = cfcol,
                       cf=out$cf.em, mafR=sqrt(mafR),
                       cnlr=out$cnlr.median.clust,
                       segBAF1 = ifelse(out$tcn.em == 0, 0,   out$lcn.em / out$tcn.em ),
                       segBAF2 = ifelse(out$tcn.em == 0, 0, 1-out$lcn.em / out$tcn.em ),
                       start=jseg$maploc[segstart], end=jseg$maploc[segend],
                       chr=jseg$chrom[segstart], chrend=jseg$chrom[segend])
  if( any(segpos$chr != segpos$chrend) ){ 
    warning( "A segment has start and end on different chromosomes") }
  while(any(segpos$chr != segpos$chrend)){
    i <- which(segpos$chr != segpos$chrend)[1]
    tmp <- segpos[i,]
    segpos[i,"chrend"] <- segpos[i,"chr"]
    segpos[i,"end"] <- max(jseg$maploc[jseg$chr == segpos[i,"chr"]])
    j <- max(which(jseg$chrom == segpos[i,"chr"]))
    tmp[,"start"] <- jseg$maploc[1 + j]
    tmp[,"chr"] <- jseg$chrom[1 + j]
    segpos[1 + nrow(segpos),] <- tmp
  }
  ## Filter to requested chromosomes, if any
  if(!all(is.na(plotChr))) {
    jseg <- jseg[which(jseg$chrom %in% plotChr),]
    out <- out[which(out$chrom %in% plotChr),]
    segpos <- segpos[which(segpos$chr %in% plotChr),]
  }
  ## Break y-axis into 2 facets if max(TotalCN) is large ----
  TotCNcrit <- 10
  ## Add blank data instead of expand_limits() to control y-axis scale 
  segpos <- rbind( segpos, NA)
  segpos[ nrow( segpos ), c( "chr", "tcn", "lcn" ) ] <- 
    c( segpos$chr[1], 3, 0 )
  if( any( segpos$tcn > TotCNcrit ) ){
    segposTop <- segpos[ which( segpos$tcn > TotCNcrit ), ]
    segposTop$lcn[ which( segposTop$lcn <= TotCNcrit ) ] <- NA
    segpos$tcn[ which( segpos$tcn > TotCNcrit ) ] <- NA
    segpos$lcn[ which( segpos$lcn > TotCNcrit ) ] <- NA
    segpos <- rbind( segpos, segposTop, NA )
    ## blank data for 'Large' panel, to prevent single value oddity
    segpos[ nrow( segpos ), c( "chr", "tcn", "lcn" ) ] <- 
      c( segpos$chr[1], 
         max( segposTop$tcn ) + 0.5, max( segposTop$tcn ) - 0.5 )
  }
  segpos$tcnLarge <- ( segpos$tcn > TotCNcrit ) & !is.na( segpos$tcn )
  ##  ----

  HETpos <- na.omit(data.frame(chr=jseg$chrom, pos=jseg$maploc,
                               lr=jseg$cnlr, lor=jseg$valor, 
                               hetBAF1=jseg$vafT, hetBAF2=1-jseg$vafT))
  ## Return empty plot if no data. jseg$valor included above as NA filter
  if ( nrow( HETpos ) == 0 ) {
    warning ("Returning empty plot" )
    return ( ggplot( HETpos) )
  }
  
  ## Subsample the points if number is large
  if(nrow(HETpos) > maxpoints) {
    HETpos <- HETpos[sample(nrow(HETpos), size = maxpoints, replace = FALSE),]
  }

  pltLRR <- ggplot(HETpos, aes(pos, lr)) +
    geom_point(alpha=pointalpha, size = pointsize) +
    facet_grid(~chr, scales = "free_x" ) +
    geom_segment(data=segpos,
                 aes(x=start, y=cnlr, xend=end, yend=cnlr),
                 inherit.aes=F, col='red', size=segsize) +
    theme(axis.line.x=element_blank(),  # top plot of 3 has no x-axis text
          axis.title.x=element_blank(),
          axis.text.x=element_blank(),
          strip.text.x=element_text(face="bold"),
	  plot.margin=unit(c(0, 0, 0, 0), "cm")) +
    ylim(c(-2,2)) +
    ylab("log-ratio") +
    xlab("Pos. (Mb)") +
    scale_x_continuous(labels = function(x) as.character(round(x/1e6)))

  pltBAF <- ggplot(HETpos, aes(pos, hetBAF1)) +
    geom_point(alpha=pointalpha/2, size = pointsize) +
      # half alpha of LRR because plotting effectively plotting points twice
    geom_point(alpha=pointalpha/2, size=pointsize, aes(pos, hetBAF2)) +
    facet_grid(~chr, scales="free_x") +
    geom_segment(data = segpos,
                 aes(x = start, y=segBAF1, xend=end, yend=segBAF1),
                 inherit.aes=F, col='red', size=segsize) +
    geom_segment(data=segpos,
                 aes(x=start, y=segBAF2, xend=end, yend=segBAF2),
                 inherit.aes=F, col='red', size=segsize) +
    theme(axis.line.x = element_blank() # central plot of 3 has no x-axis text
          , axis.title.x = element_blank()
          , axis.text.x = element_blank()
          , strip.text.x = element_blank() # central plot of 3 has no x facet labels
          , plot.margin = unit(c(0, 0, 0, 0), "cm")
    ) +
    ylab("Allele frequencies") +
    xlab("Pos. (Mb)") +
    scale_x_continuous(labels = function(x) as.character(round(x/1e6))) +
    scale_y_continuous(breaks = c(0, 0.5, 1))

  pltCN <- ggplot( data=segpos ) +
    geom_segment(aes(x=start, xend=end, y=lcn, yend=lcn),
                 col='red', size=segsize) +
    geom_segment(aes(x=start, xend=end, y=tcn, yend=tcn),
                 col='black', size=segsize) +
    facet_grid( !tcnLarge ~ chr, scales="free" ) + 
    # NOT( tcnLarge ) because F plots above T
    theme(strip.text=element_blank() 
          , plot.margin=unit(c(0, 0, 0, 0), "cm")) +
    ylab("Copy Number") +
    xlab("Pos. (Mb)") +
    scale_x_continuous(labels = function(x) as.character(round(x/1e6))) +
    scale_y_continuous(breaks = integer_breaks())
  

  ## Can't use simple align with faceted pltCN
  ## Can't use null plots to control space between plots with align+axis
  plot_grid(pltLRR, pltBAF, pltCN,
            rel_heights = c(1, 1, 1), ncol=1 
            , align = 'v' , axis = c("lr" ) 
            ) + 
    theme(plot.margin = unit(c(0.2,0.2,0.2,0.2), "cm"))
}
