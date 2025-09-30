{
  bionix,
  vars,
  cnv,
  analysisType,
  tableFunctions,
}:
with bionix;
with lib;
with pkgs; let
  r = pkgs.rWrapper.override {
    packages = with pkgs.rPackages; [dplyr stringr purrr];
  };

  filterScript = writeText "filterVars.r" ''
    require(stringr)
    require(dplyr)
    require(purrr)
    source("${tableFunctions}")

    tumPurity <- function(cnv) {
      tumP <- orgToRtable(cnv["stats"])["purity"]
      names(tumP) <- cnv["name"]
      return(tumP)
    }
    predDamagList <- function(silico4) {
      paste(
        ifelse(str_sub(silico4, 1, 1) %in% "D", "MT", ""),
        ifelse(str_sub(silico4, 2, 2) %in% "D", "SIFT", ""),
        ifelse(str_sub(silico4, 3, 3) %in% "D", "PP_hd", ""),
        ifelse(str_sub(silico4, 4, 4) %in% "D", "PP_hv", "")
      ) %>% str_squish()
    }
    benignMaj <- function(silico4) {
      # called as probably non-patho by majority of predictors that make a call
      # MT=='A' and PolyPhen == 'P' considered uninformative, not pathogenic
      (str_sub(silico4, 1, 1) %in% c("N", "P")) + (str_sub(silico4, 2, 2) %in% "T") +
        (str_sub(silico4, 3, 3) %in% c("B")) + (str_sub(silico4, 4, 4) %in% c("B")) >
        (str_sub(silico4, 1, 1) %in% c("D")) + (str_sub(silico4, 2, 2) %in% "D") +
          (str_sub(silico4, 3, 3) %in% "D") + (str_sub(silico4, 4, 4) %in% "D")
    }
    abbrevClin <- function(cv) { # "." to match "_" or " "
      str_replace(cv, "Pathogenic", "P") %>%
        str_replace(., "Likely.pathogenic", "LP") %>%
        str_replace(., "Likely.benign", "LB") %>%
        str_replace(., "Benign", "B") %>%
        str_replace(., "Uncertain.significance", "VUS") %>%
        str_replace(., "Conflicting.interpretations.*", "CI") %>%
        str_replace(., "not.provided", "")
    }
    abbrevText <- paste(
      "ClinVar abbreviations: P: Pathogenic; LP: Likely pathogenic;",
      "B: Benign; LB: Likely benign; VUS: Uncertain significance;",
      "CI: Conflicting interpretations of significance",
      "\n\nVariant effect software: Mutation Taster (MT), SIFT,",
      "PolyPhen with HumDiv model (PP_hd), and PolyPhen with HumVar model",
      "(PP_hv)"
    )

    prettyColumns <- function(vardf) {
      mutate(vardf,
        Gene = gene,
        Mutation_type = annotation %>% str_replace_all("_", " ") %>%
          str_replace_all("&", "; ") %>% str_replace_all(" gene", "") %>%
          str_replace_all(" variant", ""),
        Nucleotide_change = str_trunc(hgvs_c, 26, "right"),
        ENST_ID = str_remove(transcript, "ENST0000"),
        ClinVar = abbrevClin(clinvar) %>%
          str_replace_all(., "_", " "),
        Pred_Damaging_by = predDamagList(insilicos),
        gnomAD_freq = ifelse(
          is.na(gnomAD) | as.numeric(gnomAD) == 0,
          "", format(as.numeric(gnomAD), digits = 1)
        )
      )
    }
    clinvOI <- function(cv) { # ClinVar string -> 1 of 4 classes
      cv <- abbrevClin(cv)
      case_when(
        nchar(str_trim(cv)) == 0 ~ "Absent",
        cv %in% c("B", "LB", "B/LB") ~ "Ben",
        cv %in% c("P", "LP", "P/LP") ~ "Path",
        TRUE ~ "Poss"
      )
    }
    ## get purity for each tumour sample from cnv stats
    cnv <- list(
      ${concatStringsSep
      ","
      (mapAttrsToList (n: v: ''
          c(name = "${n}", stats = "${v.stats}")
        '')
        cnv)}
    )
    casetumPurity <- map(cnv, tumPurity) %>% unlist()
    gnomADcrit <- 0.01
    analyType <- "${analysisType}"

      ##### filter germline variants table #####
      ### colnames expected values: set list plus samples
      germcols <- c(
        "gene", "transcript", "hgvs_c", "hgvs_p", "annotation",
        "gnomAD", "clinvar", "FCC", "Overrep",
        "insilicos",
        paste(names(casetumPurity), "alt count"),
        paste(names(casetumPurity), "AF")
      )
    if (file.size("${vars.germline}") == 0) {
      germname <- "None"
      germvar <- data.frame(setNames(
        replicate(length(germcols) + 1, logical(0), simplify = F),
        c(germcols, germname)
      ))
    } else {
      germvar <- orgToRtable("${vars.germline}")
      if (setdiff(germcols, colnames(germvar)) %>% length() > 0
      ) {
        stop("Colname assumptions for germline variants do not match input")
      }
      ## Assume sample(s) not in names(casetumPurity) are Normal. If >1 take 1st
      germname <- setdiff(colnames(germvar), germcols)[1] %>%
        str_remove(., " .*$") # remove ' alt count' or similar.
      if (!str_starts(germname, regex("b", ignore_case = TRUE)) &
        !str_starts(germname, regex("norm", ignore_case = TRUE))
      ) {
        warning(paste(
          "Expect", germname,
          "to be germline but does not start with B or Norm"
        ))
      }
    }

    germvarFilt1 <- dplyr::filter(
      germvar,
      # gene in fcc
      (nchar(str_trim(FCC)) > 0),
      # Not in list of over-represented
      (nchar(str_trim(Overrep)) == 0)
    )
    germvarFilt <- germvarFilt1 %>% dplyr::filter(
      # not called as Polymorphic or Probably Benign by 3 or more predictors
      !benignMaj(insilicos)
    )
    #### add summary of predictors ####
    germvarFilt <- prettyColumns(germvarFilt) %>%
      mutate(
        predDamagCount = str_count(insilicos, "D"),
        gnomAD = ifelse(
          is.na(gnomAD), 0, as.numeric(gnomAD)
        )
      ) %>%
      arrange(desc(predDamagCount), gnomAD)

    ## Write common section of filter description
    cat(
      paste(
        "Germline variants are included if", "",
        paste0(
          "- variant does not have a frequency of ",
          gnomADcrit * 100, "%", " or more in gnomAD"
        ),
        "- AND the gene is in FCC",
        "- AND the variant is not predicted to be benign by effect-prediction software",
        "- AND the variant is not in list of common germline calls",
        sep = "\n"
      ),
      file = "germFilt.txt"
    )

    ## Filter by ClinVar if analysis is WES or WGS and table is not small
    if (analyType != "CCP" & nrow(germvarFilt) > 5 &
      any(clinvOI(germvarFilt$clinvar) == "Ben")) {
      ## keep only where ClinVar is not Benign or likely_benign
      predDamagPrev <- sum(germvarFilt$predDamagCount > 2)
      germvarFilt <- filter(germvarFilt, clinvOI(clinvar) != "Ben")
      damagFilt <- predDamagPrev - sum(germvarFilt$predDamagCount > 2)
      ## Add to description of filters
      cat(
        paste(
          "- AND variant is not listed as Benign or Likely Benign by ClinVar",
          "",
          sep = "\n"
        ),
        append = TRUE,
        file = "germFilt.txt"
      )
      if (damagFilt > 0) {
        write(
          paste(
            "Of the variants not included,", damagFilt, "are",
            "predicted as pathogenic by 3 or more of the predictors."
          ),
          file = "germOmit.txt"
        )
      }
    } else {
      write("", file = "germOmit.txt")
    }

    germvarFinal <- dplyr::select(
      germvarFilt,
      Gene, Mutation_type, Nucleotide_change, ENST_ID,
      gnomAD_freq, Pred_Damaging_by, ClinVar
    ) %>%
      select_if(~ !all(is.na(.) | . == ""))
    colnames(germvarFinal) <- gsub("_", " ", colnames(germvarFinal))
    if (nrow(germvarFinal) == 0) {
      write("No variants pass all filters", file = "filtgerm.md")
    } else {
      writepipetable(germvarFinal, "filtgerm.md")
    }

    ##### filter somatic table 'high impact' #####
    ### Expected values of colnames:
    somcols <- c(
      "gene", "annotation", "transcript", "hgvs_c", "hgvs_p", "gnomAD",
      "insilicos", "clinvar", "Cosmic", "Overrep",
      paste(names(casetumPurity), "HF")
    )
    ### Read table or make empty data frame
    if (file.size("${vars.high}") == 0) {
      somavar <- data.frame(setNames(
        replicate(length(somcols), logical(0), simplify = F),
        somcols
      ))
    } else {
      somavar <- orgToRtable("${vars.high}")
      if (!setequal(somcols, colnames(somavar))
      ) {
        warning("Colname assumptions for somatic variants do not match input")
      }
    }
    somavarFilt <- somavar %>% dplyr::filter(
      nchar(Cosmic) > 0 &
        clinvOI(clinvar) != "Ben" &
        !(clinvOI(clinvar) == "Absent" & benignMaj(insilicos)) &
        (nchar(str_trim(Overrep)) == 0)
    )

    if (nrow(somavarFilt) == 0) {
      write("No somatic variants pass initial filters", file = "filtsoma.md")
      write("", file = "somOmit.txt")
      write("", file = "somaFilt.txt")
    } else {
      for (tum in names(casetumPurity)) {
        somavarFilt[[paste0("Raw_Freq_", tum)]] <-
          ifelse(
            somavarFilt[[paste(tum, "HF")]] == "",
            0,
            str_split_fixed(somavarFilt[[paste(tum, "HF")]], ";", 2)[, 1] %>%
              as.numeric()
          )
        somavarFilt[[paste0("Adj_Freq_", tum)]] <-
          somavarFilt[[paste0("Raw_Freq_", tum)]] / casetumPurity[tum]
      }

      ## Filter by Variant Frequency
      critFreq <- 0.1
      somavarFilt2 <- if (any(is.na(casetumPurity))) {
        select(somavarFilt, -starts_with("Adj_Freq")) %>%
          dplyr::filter_at(
            vars(starts_with("Raw_Freq")), any_vars(. > critFreq)
          )
      } else {
        select(somavarFilt, -starts_with("Raw_Freq")) %>%
          dplyr::filter_at(
            vars(starts_with("Adj_Freq")), any_vars(. > critFreq)
          )
      }
      somavarFilt2$maxF <- apply(
        select(
          somavarFilt2, starts_with("Adj_Freq") | starts_with("Raw_Freq")
        ),
        1, max
      )
      somavarFilt2 <- prettyColumns(somavarFilt2) %>%
        arrange(desc(maxF))

      ## Filter again if table is large
      maxSomRows <- 10
      if (nrow(somavarFilt2) > maxSomRows) {
        currCount <- nrow(somavarFilt2)
        lastFreq <- dplyr::select(
          somavarFilt2, maxF
        )[maxSomRows, ]
        somavarFilt2 <- somavarFilt2[1:maxSomRows, ]
        write(
          paste(
            "Top", maxSomRows, "variants by frequency. Another",
            (currCount - maxSomRows), "variants", "with frequency between",
            critFreq, "and", format(lastFreq, digits = 2),
            "are not shown, despite passing filters below."
          ),
          file = "somOmit.txt"
        )
      } else {
        write(
          paste(
            "Variants passing filters below, AND",
            "with frequency in some sample >", critFreq
          ),
          file = "somOmit.txt"
        )
      }
      somavarFinal <- dplyr::select(
        somavarFilt2, c(
          Gene, Mutation_type, Nucleotide_change, ENST_ID,
          gnomAD_freq, Pred_Damaging_by, ClinVar,
          contains("_Freq_")
        )
      ) %>%
        select_if(~ !all(is.na(.) | . == "")) %>%
        format(., digits = 1, nsmall = 2)
      colnames(somavarFinal) <- gsub("_", " ", colnames(somavarFinal))
      if (nrow(somavarFinal) == 0) {
        write("No variants pass filters below.", file = "filtsoma.md")
      } else {
        writepipetable(somavarFinal, "filtsoma.md")
      }
      write.table(c(
        "Somatic variants are included if", "",
        paste0(
          "- mutation does not have a frequency of ",
          gnomADcrit * 100, "%", " or more in gnomAD"
        ),
        "- AND gene is in COSMIC census",
        "- AND mutation is not listed as Benign or Likely Benign by ClinVar",
        "- AND the variant is not in list of common germline calls",
        paste(
          "- AND IF no ClinVar record THEN NOT mutation predicted to be",
          "benign by effect-prediction software."
        )
      ), sep = "\n", quote = F, row.names = F, col.names = F, file = "somaFilt.txt")
      write(paste0("\n", abbrevText), file = "somaFilt.txt", append = TRUE)
    } ## end of "filterVars.r"
  '';
in
  exec'' (stage {
    name = "filtered-vars";
    buildInputs = [r];
    outputs = ["out" "germline" "germomit" "somomit" "germfilttext" "somfilttext"];
    buildCommand = ''
      Rscript ${filterScript}
      cp filtsoma.md $out
      cp filtgerm.md $germline
      cp germOmit.txt $germomit
      cp somOmit.txt $somomit
      cp germFilt.txt $germfilttext
      cp somaFilt.txt $somfilttext
    '';
  })
