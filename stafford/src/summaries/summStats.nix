{
  bionix,
  vars,
  cnv,
  svs,
  analysisType,
  tableFunctions,
}: let
  inherit (bionix) lib pkgs stage;
  inherit (lib) concatStringsSep mapAttrsToList;
  inherit (pkgs) writeText;

  r = pkgs.rWrapper.override {
    packages = with pkgs.rPackages; [purrr dplyr stringr];
  };

  summScript = writeText "summstats_md.r" ''
    ## Rewrite a number of summary stats in Pandoc markdown, with wordier descriptions
    require(purrr) # for map, flatten
    require(dplyr) # for %>%, and others
    require(stringr) # for tableFunctions
    source("${tableFunctions}")
    analyType <- "${analysisType}"
    #### CNV stats table ####
    cnv <- list( ${
      concatStringsSep "," (
        mapAttrsToList (n: v: ''
          c(samplen = "${n}",
            stats = "${v.stats}",
            gdoub = "${v.gdtest}" )
        '')
        cnv
      )
    } )
    cn2list <- function(cn1) {
        cndf <- orgToRtable(cn1["stats"]) %>%
          transmute(
            if_else(purity > 0.3,
              paste0(purity * 100, "%"),
              paste0("*", purity * 100, "%*")
            ),
            ploidy = format(ploidy, digits = 2, nsmall = 1),
            LOH = paste0(LOH * 100, "%"),
            PGA = paste0(PGA * 100, "%")
          )
        cndf$gd <- read.table(cn1["gdoub"])[, 1]
        cnl <- as.list(cndf) %>% flatten_chr()
        names(cnl) <- NULL
        return(cnl)
      }
    cnsamp <- map(cnv, cn2list)
    names(cnsamp) <- map(cnv, ~ .["samplen"])
    ## Descriptions of fields, in display order:
    DescriptionText <- c(
      "Calculated Purity (> 30% required for confident analysis)",
      "Highest somatic frequency (lower bound on true purity)",
      "Ploidy (normal is 2)",
      "Percentage Loss Of Heterozygosity (LOH)",
      "Percentage of genome with CN alteration",
      "Genomic Doubling (GD) ?"
    )
    cnstats <- cbind(
      Description = DescriptionText[c(1, 3:6)],
      as.data.frame(do.call(cbind, cnsamp))
    )
    ## Include maximum observed somatic HF for each tumour sample
    ## Use maximum of any with multiple haplotypes (usually all same value)
    if (file.size("${vars.high}") == 0) {
      somaHF <- setNames(
        replicate(length(names(cnsamp)), logical(0), simplify = F),
        paste0(names(cnsamp), " HF")
      ) %>%
        data.frame(., check.names = FALSE)
    } else {
      somaHF <- orgToRtable("${vars.high}") %>%
        select(., ends_with(" HF"))
    }
    maxMulti <- function(s) {
      ifelse(str_detect(s, ";"),
        str_split(s, ";") %>% unlist() %>% as.numeric() %>%
          max(),
        as.numeric(s)
      )
    }
    maxAF <- map(colnames(somaHF), function(x) {
      AF <- apply(somaHF[x], 1, maxMulti)
      paste0(max(na.omit(AF)) * 100, "%")
    })
    names(maxAF) <- str_remove(colnames(somaHF), " HF$")

    cnstats <- rbind(
      cnstats,
      cbind(
        Description = DescriptionText[2],
        do.call(cbind, maxAF)
      )
    )
    cnstats <- mutate(cnstats,
      Description = factor(Description,
        levels = DescriptionText
      )
    ) %>%
      arrange(., Description)
    addEmphasis <- function(s) {
      str_replace(s, "^", "*") %>% str_replace(., "$", "*")
    }
    writepipetable(
      rename(cnstats, "Tumour Sample:" = Description) %>%
        rename_with(addEmphasis),
      "cnstats.md"
    )

    #### Counts of Small Mutations ####
    vars.count <- read.table(
      sep = "|", stringsAsFactors = FALSE, header = FALSE,
      file = "${vars.count}"
    ) %>% dplyr::select(., -1, -ncol(.))
    vars.count$V2 <- c("All Germline", "All Somatic", "Somatic Coding")
    writepipetable(vars.count, "counts.md", colHeader = F)

    #### TMB and HRD ###
    if (analyType %in% c("WES", "WGS")) {
      if (file.size("${vars.tmb}") == 0) {
        tmbtble <- data.frame(Sample = names(cnsamp), tmb = NA)
      } else {
        tmbtble <- read.table(
          sep = "|", colClasses = c("NULL", "character", "numeric", "numeric", "NULL"),
          file = "${vars.tmb}"
        )
        colnames(tmbtble) <- c("Sample", "tmb", "tmb20")
        tmbtble <- mutate(tmbtble,
          tmb = case_when(
            tmb > 20 ~ paste0("**", tmb, "**"),
            TRUE ~ as.character(tmb)
          ),
          tmb20 = case_when(
            tmb20 > 10 ~ paste0("**", tmb20, "**"),
            TRUE ~ as.character(tmb20)
          )
        )
      }

      ${
      if (analysisType == "WGS" && svs ? manta)
      then ''
        hrd <- list( ${
          concatStringsSep "," (
            mapAttrsToList (n: v: ''
              c(samplen = "${n}",
                filen = "${v.chord}" )
            '')
            svs.manta
          )
        } )
        hrdpersam <- function( x ){
          hrdf <- orgToRtable( x[ "filen" ] )
          hrdf$Sample <- as.character( x[ "samplen" ] )
          return( hrdf ) }
        hrdtble <- map_dfr( hrd, hrdpersam )
      ''
      else ''
        hrdtble <- data.frame(
          Sample = names(cnsamp), hr_status = "Not available", p_hrd = NA )
      ''
    }

      tmbhrd <- full_join(tmbtble, hrdtble, by = "Sample") %>%
        mutate(samtype = case_when(
          Sample %in% names(cnsamp) ~ "Tumour",
          TRUE ~ "Germline"
        )) %>%
        arrange(samtype)
      displaynames <- c(
        "Full TMB (>20 is High)" = "tmb",
        "Filtered TMB (>10 is High)" = "tmb20",
        "Homologous Recombination Status" = "hr_status",
        "HRD probability" = "p_hrd"
      )
      writepipetable(rename(select(tmbhrd, -samtype), any_of(displaynames)), "tmbhrd.md")
    } else {
      write("TMB only available for WGS and WES analysis", "tmbhrd.md")
    }
  '';
in
  stage {
    name = "summstatstage";
    buildInputs = [r];
    outputs = ["out" "counts" "tmbhrd"];
    buildCommand = ''
      Rscript ${summScript}
      cp cnstats.md $out
      cp counts.md $counts
      cp tmbhrd.md $tmbhrd
    '';
  }