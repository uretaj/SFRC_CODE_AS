self: super:
with super; {
  hrscore = {
    renv = pkgs.rWrapper.override {packages = with pkgs.rPackages; [RSQLite data_table];};

    script = pkgs.stdenv.mkDerivation {
      name = "hdscore-script.r";
      nativeBuildInputs = [pkgs.unzip];
      src = pkgs.fetchurl {
        url = "https://static-content.springer.com/esm/art%3A10.1186%2Fs40364-015-0033-4/MediaObjects/40364_2015_33_MOESM9_ESM.zip";
        sha256 = "sha256-THLjjaP3MpKs5p/nI9QurBd3jwsXpGp0ixl0z+on92w=";
      };
      chromInfo = pkgs.fetchurl {
        url = "http://hgdownload.soe.ucsc.edu/goldenPath/hg38/database/chromInfo.txt.gz";
        sha256 = "15qx2cxxdxmlhjg2ym2gdq87fwrahcm17yqsgcswk57r30mbd237";
      };
      centromeres = pkgs.fetchurl {
        url = "http://hgdownload.soe.ucsc.edu/goldenPath/hg38/database/centromeres.txt.gz";
        sha256 = "1gf3r833p8k6f49d57ayqxdcilps6h2qdrvdkry8z402ahb8sg01";
      };
      patches = [./grch38.patch];
      sourceRoot = ".";
      buildPhase = ''
        substituteInPlace 40364_2015_33_add9.r \
          --replace '@chromInfo@' "$chromInfo" \
          --replace '@centromeres@' "$centromeres"
      '';
      installPhase = ''
        install -Dm644 40364_2015_33_add9.r $out
      '';
    };

    score = exec (_: facetsdb:
      stage {
        inherit facetsdb;
        name = "hd-score";
        buildInputs = with pkgs; [sqlite self.hrscore.renv];
        buildCommand = ''
          Rscript $script
          sed 's/^/|/' < out > $out
        '';
        script = pkgs.writeText "hd-score.r" ''
          library(DBI)
          library(data.table)
          source("${self.hrscore.script}")
          shrink.seg.ai <- function(x) x # their implementation is complete bollocks: no implementation of the comment is possible
          sql <- Sys.getenv("sql")
          db <- dbConnect(RSQLite::SQLite(), Sys.getenv("facetsdb"))
          sites <- dbGetQuery(db, "select distinct siteid from stats")$siteid
          scores <- do.call(rbind, lapply(sites, function(site){
            x <- dbGetQuery(db, sql, params=list(siteid=site))
            chrominfo <- GetChrominfo()
            ntai <- calc.ai(x, chrominfo, check.names = F)
            lst <- calc.lst(x, chrominfo, check.names = F)
            hrd <- calc.hrd(x, check.names = F)
            res <- data.table(site=site, ntai=as.numeric(ntai[1]), lst=as.numeric(lst), hrd=as.numeric(hrd))
            res[,sum := ntai + lst + hrd]
          }))

          write.table(scores, file="out", row.names=F, col.names=F, sep='|', quote=F)
        '';
        sql = ''
          select donor || ' ' || siteid as id, chr, start, end, nummark, tcn, tcn-lcn as "nA", lcn as "nB", ploidy, purity
          from regions
          natural join stats
          where siteid = :siteid
        '';
      });
  };
}
