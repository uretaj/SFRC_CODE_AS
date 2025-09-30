{
  bionix,
  mosdepth,
  cnv,
  analysisType,
  tableFunctions,
}: let
  inherit (bionix) lib pkgs stage;
  inherit (lib) concatStringsSep mapAttrsToList;
  inherit (pkgs) writeText;

  r = pkgs.rWrapper.override {
    packages = with pkgs.rPackages; [purrr dplyr stringr];
  };

  depthScript = writeText "mosdepth_md.r" ''
    ### 'Coverage' for summary report, defined as the depth of reads from mosdepth
    ###  such that the depth has dropped by 3 dB, also known as the half power
    ###  point. Equivalent to the coverage such that 0.707107 proportion of bases
    ###  have this depth or more

    require( purrr ) # for map_dfr
    require( dplyr ) # for %>%, select, filter, case_when
    require( stringr ) # for tableFunctions
    source( "${tableFunctions}")

    analyType <- "${analysisType}"

    seqdepth <- list(
      ${
      concatStringsSep "," (
        map (mos: ''
          c(samplen = "${mos.name}",
            sampledir = "${mos}")
        '')
        mosdepth
      )
    } )
    covSummary <- purrr::map_dfr(
      seqdepth,
      function( sqd ){
          distTotal <- read.delim(
              file.path(
                  sqd['sampledir'], case_when(
                      str_detect(analyType, "WES|CCP") ~ "out.mosdepth.region.dist.txt",
                      str_detect(analyType, "WGS") ~ "out.mosdepth.global.dist.txt" )
              ), header = FALSE, col.names = c( "chrom", "cov", "propBases" )
          ) %>% filter( chrom == "total" ) %>%
              mutate( difftoHalfPower = abs( propBases - 0.707) )
          covHalfPower <- filter(
              distTotal, difftoHalfPower == min( difftoHalfPower ) ) %>%
              select( cov ) %>% filter( cov == max(cov) )
          return( c( sqd['samplen'], covHalfPower) )
      }
    )
    ##Get tumour sample names from cnv
    cnvnames <- c( ${
      concatStringsSep "," (
        mapAttrsToList (n: v: "'${n}'") cnv
      )
    } )

    covSummary <- transmute(covSummary, samtype = case_when(
        samplen %in% cnvnames ~ 'Tumour',
        TRUE ~ 'Germline' ),
        ## samtype 1st col, Germline 1st row
      samplen = samplen, cov = cov ) %>% arrange( samtype )
    writepipetable( covSummary, 'depth.md', colHeader = FALSE )

  '';
in
  stage {
    name = "seqdepth";
    buildInputs = [r];
    outputs = ["out"];
    buildCommand = ''
      Rscript ${depthScript}
      cp depth.md $out
    '';
  }
