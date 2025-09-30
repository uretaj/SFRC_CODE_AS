{bionix ? (import ../milton-slurm.nix {}).bionix}:
with bionix;
with lib; let
  filt100somaticdb = callBionix ./filt100WGSsom.nix {};

  inherit (pkgs) writeText;
  r = pkgs.rWrapper.override {
    packages = with pkgs.rPackages; [dplyr stringr RSQLite];
  };

  filterdb = writeText "anonsimplecsv.R" ''
    library(dplyr)
    library(stringr)
    library(RSQLite)

    filt100db <- dbConnect(SQLite(), "${filt100somaticdb}")
    filtsom <- dbReadTable(filt100db, "filtsom100")
    dbDisconnect(filt100db)

    ## One entry per donor x Gene x mutation. Single site per donor
    filtsom <- filtsom |>
      dplyr::select(
        donor, mutid, siteid, gene, transcript, clinvar,
        cosmicgene, MattPARPiGene, FPgene
      ) |>
      group_by(donor, mutid, gene, clinvar,
               cosmicgene, MattPARPiGene, FPgene) |>
      summarise(
        transcriptIDs = paste0(unique(transcript), collapse = ";")
      )
    #### Write simplified summary ####
    #### Ordered factors for accepted mutations
    ## Lower-case prefixes so alphabetic order is importance order
    variantlabels <- as.factor(
      c("agMUT", "bMUT")
    )
    cvlabels <- as.factor(c("a", "bVUS", "cVPS"))
    variantlevels <- suppressWarnings(
      interaction(variantlabels, cvlabels, lex.order = FALSE, sep = ";")
    ) |>
      levels() |>
      str_remove_all(pattern = "[abcde]")
    abbrevClin <- function(cv) {
      cv <- if_else(is.na(cv), "", cv)
      case_when(
        str_detect(cv, "[Pp]athogenic") ~ "VPS",
        str_detect(cv, "Uncertain.significance") ~ "VUS",
        TRUE ~ ""
      )
    }
    filtvars <- data.frame(
      gene = filtsom$gene,
      record_id = filtsom$donor,
      variant = paste0("MUT;", abbrevClin(filtsom$clinvar)) |>
        factor(levels = variantlevels, ordered = TRUE),
      origin = "somatic",
      cosmicgene = as.logical(filtsom$cosmicgene),
      MattPARPiGene = as.logical(filtsom$MattPARPiGene),
      FPgene = as.logical(filtsom$FPgene)
    )
    write.csv(filtvars, "filtVardb.csv", row.names = FALSE, quote = FALSE)
  '';
in
  exec (_: _:
    stage {
      name = "filt100somatic";
      buildInputs = [r];
      buildCommand = ''
        Rscript ${filterdb}
        cp filtVardb.csv $out
      '';
    })
  {mem = 80;} {}
