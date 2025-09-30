{bionix}:
with bionix;
with pkgs; let
  plotScript = ../plot-facets.r;
  r = pkgs.rWrapper.override {
    packages = with pkgs.rPackages; [
      ggplot2
      data_table
      bionix.facets.app
      cowplot
    ];
  };

  inherit (pkgs.callPackage ./rConverters.nix {}) rToOrg rToMd;
  inherit (refdbs) geneLocations;

  cosmicGeneLocations = let
    sql = writeText "sql" ''
      create table encode(gene, chr, start, end);
      .mode tabs
      .import ${geneLocations} encode
      attach database '${refdbs.cosmic}' as cosmic;
      delete from encode where gene not in (select "Gene name" from cosmic);
      create virtual table encode_idx using rtree(id, start, end);
      insert into encode_idx select rowid, start, end from encode;
    '';
  in
    exec'' (stage {
      name = "cosmic-gene-locs";
      buildInputs = with pkgs; [sqlite];
      buildCommand = "sqlite3 $out < ${sql}";
    });
in {
  preprocess = let
    onType = type: ccp: wgs: wes:
      if type == "CCP"
      then ccp
      else if type == "WGS"
      then wgs
      else if lib.hasPrefix "WES" type
      then wes
      else abort "facets: preprocess: unknown analysis type";
  in
    exec ({
      analysisType,
      preSeg ? onType analysisType 15 50 25,
      segCrit ? onType analysisType 75 400 150,
      widPerHet ? onType analysisType 150 500 250,
      dipLogR ? null,
    }: pileup: let
      preprocessScript = writeText "preprocess.r" ''
        library(facets)
        set.seed(42)
        ## Default params are for exome. See github.com/dariober/cnv_facets
        preSeg <- ${toString preSeg}
        segCrit <- ${toString segCrit}
        widPerHet <- ${toString widPerHet}
        x <- readSnpMatrix("${pileup}")
        xx <- preProcSample(x, gbuild="hg38", cval = preSeg, snp.nbhd = widPerHet )
        y <- procSample(xx, cval = segCrit)
        if( !is.null( y$flags ) ) warning( paste( y$flags, collapse = "; " ) )
        ${
          lib.optionalString (dipLogR != null)
          "y$dipLogR <- ${toString dipLogR}"
        }
        print( paste( "Facets preprocess is using dipLogR =", y$dipLogR))
        z <- emcncf(y)
        save(x, y, z, file="RData")
      '';
    in
      stage {
        name = "facets-preprocess";
        buildInputs = [r];
        buildCommand = ''
          Rscript ${preprocessScript}
          cp RData $out
        '';
      });

  stats = exec (_: preprocessed: let
    statsScript = writeText "stats.r" ''
      library(facets)
      library(data.table)
      load("${preprocessed}")
      cncf <- data.table(na.omit(z$cncf))
      loh <- sum((cncf$end-cncf$start)*(cncf$lcn.em == 0 & cncf$tcn.em > 0))/sum(cncf$end-cncf$start)
      pga <- sum((cncf$end-cncf$start)* !(cncf$lcn.em == 1 & cncf$tcn.em == 2))/sum(cncf$end-cncf$start)
      res <- data.frame(purity=z$purity, ploidy=z$ploidy, LOH=loh, PGA=pga)
      write.table(format(res, digits=2, nsmall=2), file="stats.csv", sep=",", quote=F, row.names=F, col.names=T)
    '';
  in
    stage {
      name = "facets-stats";
      buildInputs = with pkgs; [r gawk];
      buildCommand = ''
        Rscript ${statsScript}
        awk -f ${rToOrg} stats.csv > $out
      '';
    });

  spider = exec ({nfrac ? 0.01}: preprocessed: let
    spiderScript = writeText "spider.r" ''
      library(facets)
      library(data.table)
      load("${preprocessed}")
      svg("plot.svg")
      logRlogORspider(cncf=z$cncf, dipLogR=y$dipLogR, nfrac=${toString nfrac})
      dev.off()
      if( !is.null( y$flags ) ) {
        write( "Facets model had warning flags:\\\\", file = "warnings.txt" )
        write( paste0("- ", paste( y$flags, collapse = "\\\\\n- " ), "\\\\" ),
          file = "warnings.txt", append = TRUE )
        write( paste( "Model used log-ratio value of", format(y$dipLogR, digits=2, nsmall=2),
          "as diploid." ), file = "warnings.txt", append = TRUE )
      } else { write( "", file = "warnings.txt" ) }

    '';
  in
    stage {
      name = "facets-spider.svg";
      buildInputs = with pkgs; [r];
      outputs = ["out" "warning"];
      buildCommand = ''
        Rscript ${spiderScript}
        cp plot.svg $out
        cp warnings.txt $warning
      '';
    });

  regions = exec (_: db:
    stage {
      name = "facets-report-regions";
      buildInputs = with pkgs; [sqlite];
      buildCommand = ''
        printf "%s" "$sql" | sqlite3 -header :memory: > regions.csv
        cat regions.csv | tr -d '"' | awk -f ${rToOrg} > $out
      '';
      sql = ''
        .mode csv
        attach '${cosmicGeneLocations}' as cosmic;
        attach '${db}' as facets;
        select r.chr, r.start, r.end, round((cast(r.end as real)-cast(r.start as real))/1000000, 1) as "width (Mbp)" ,
          cast(tcn as integer) as "Total CN", cast(lcn as integer) as "Minor CN",
          group_concat(gene, ' ') as genes
        from regions as r
          left join encode_idx as ei on
          ei.start <= r.end and ei.end >= r.start
          left join encode as e on
          ei.id = e.rowid and (e.chr = r.chr or e.chr = 'X' and r.chr = 23)
        where
          tcn != 2 or ifnull(lcn, 1) != 1
        group by
          CAST(r.chr as integer), CAST(r.start as integer), CAST(r.end as integer);
      '';
    });
  filteredRegions = exec (_: db:
    stage {
      name = "facets-report-filtered-regions";
      buildInputs = with pkgs; [sqlite];
      buildCommand = ''
        printf "%s" "$sql" | sqlite3 -header :memory: > regions.csv
        cat regions.csv | tr -d '"' | awk -f ${rToMd} > $out
      '';
      sql = ''
        .mode csv
        attach '${cosmicGeneLocations}' as cosmic;
        attach '${db}' as facets;
        select r.chr, r.start, r.end, round((cast(r.end as real)-cast(r.start as real))/1000000, 1) as "width (Mbp)" ,
          cast(tcn as integer) as "Total CN", cast(lcn as integer) as "Minor CN",
          group_concat(gene, ' ') as genes
        from regions as r
          inner join encode_idx as ei on
          ei.start <= r.end and ei.end >= r.start
          inner join encode as e on
          ei.id = e.rowid and (e.chr = r.chr or e.chr = 'X' and r.chr = 23)
        where
          "width (Mbp)" <= 3
          and ("Total CN" == 0 or "Total CN" >= 8)
        group by
          CAST(r.chr as integer), CAST(r.start as integer), CAST(r.end as integer);
      '';
    });

  plotChrs = let
    script =
      writeText "script.r" ''
        library(facets)
        source("${plotScript}")
        preprocessed <- Sys.getenv("preprocessed")
        load(preprocessed)
        png("plot.png", width=1920, height=1080)
        start <- Sys.getenv("start")
        end <- Sys.getenv("end")
        plot(plotCNV(y, z, plotChr=seq(start, end),
             base_size=30))
        dev.off()
      '';
  in
    exec ({
      start,
      end,
    }: preprocessed:
      stage {
        name = "facets-plot.png";
        buildInputs = with pkgs; [r];
        inherit preprocessed;
        start = toString start;
        end = toString end;
        buildCommand = ''
          Rscript ${script}
          cp plot.png $out
        '';
      });
  plot = {analysisType}: pileup:
    with facets.reporting; let
      preprocessed =
        bionix.facets.reporting.preprocess {inherit analysisType;} pileup;
      db = bionix.facets.reporting.db {} [
        {
          donor = "";
          siteid = "";
          postproc = preprocessed;
        }
      ];
    in rec {
      stats = bionix.facets.reporting.stats {} preprocessed;
      regions =
        bionix.facets.reporting.regions {} db;
      spider = bionix.facets.reporting.spider {} preprocessed;
      filteredRegions = bionix.facets.reporting.filteredRegions {} db;
      first =
        plotChrs {
          start = 1;
          end = 7;
        }
        preprocessed;
      second =
        plotChrs {
          start = 8;
          end = 14;
        }
        preprocessed;
      third =
        plotChrs {
          start = 15;
          end = 23;
        }
        preprocessed;
      gdtest = callBionixE ../wgd.test {} (exec'' (stage {
        name = "extract-gd-test-input";
        buildCommand = ''
          printf "%s" "$sql" | sqlite3 ${db} > $out
        '';
        sql = ''
          .mode tabs
          .header on
          select chr as 'chromosome', start, end, lcn as 'Minor.Copy.Number', tcn - lcn as 'Major.Copy.Number'
          from regions
          where chr <= 22
        '';
        buildInputs = [sqlite];
      }));
    };

  db = exec (_: xs:
    stage {
      name = "facets-sqlite-db";
      buildInputs = [(rWrapper.override {packages = with rPackages; [RSQLite bionix.facets.app data_table];}) sqlite];
      buildCommand = ''
        cat $schema | sqlite3 db
        ${lib.concatMapStringsSep "\n" (p: ''
            echo exporting
            DONOR=${lib.escapeShellArg p.donor} SITEID=${lib.escapeShellArg p.siteid} BLOB=${lib.escapeShellArg p.postproc} Rscript $src
            echo importing
            cat $importSQL | sqlite3 db
          '')
          xs}
          cp db $out
      '';
      importSQL = writeText "import.sql" ''
        .mode csv
        .import "./stats.csv" stats
        .import "./regions.csv" regions
      '';
      schema = writeText "schema.sql" ''
        CREATE TABLE IF NOT EXISTS stats(donor TEXT NOT NULL, siteid TEXT NOT NULL, loh REAL, pga REAL, purity REAL, ploidy REAL, PRIMARY KEY(donor, siteid));
        CREATE TABLE IF NOT EXISTS regions(donor TEXT NOT NULL, siteid TEXT NOT NULL, chr INTEGER NOT NULL, start INTEGER NOT NULL
                                          , end INTEGER NOT NULL, tcn REAL NOT NULL, lcn REAL, nummark INTEGER NOT NULL, mafR REAL NOT NULL
                                          , cf REAL NOT NULL
                                          , PRIMARY KEY(donor, siteid, chr, start, end));
      '';
      src = writeText "export.r" ''
        library(facets)
        library(data.table)
        path <- Sys.getenv("BLOB")
        donor <- Sys.getenv("DONOR")
        siteid <- Sys.getenv("SITEID")
        load(path)

        cncf <- data.table(na.omit(z$cncf))
        if(nrow(cncf) == 0){
          cat("", file="stats.csv")
        } else {
          loh <- sum((cncf$end-cncf$start)*(cncf$lcn.em == 0 & cncf$tcn.em > 0))/sum(cncf$end-cncf$start)
          pga <- sum((cncf$end-cncf$start)* !(cncf$lcn.em == 1 & cncf$tcn.em == 2))/sum(cncf$end-cncf$start)
          purity <- z$purity
          ploidy <- z$ploidy
          write.table(data.frame(donor, siteid, loh, pga, purity, ploidy), file="stats.csv", sep=',', row.names=F, col.names=F, quote=F, na = "NULL")
        }

        cncf <- na.omit(cncf[, .( chrom, start, end, lcn.em, tcn.em, num.mark, mafR, cf.em ) ])
        if(nrow(cncf) == 0){
          cat("", file="regions.csv")
        } else
          write.table(with(cncf, data.frame(donor, siteid, chrom, start, end, tcn.em, lcn.em, num.mark, mafR, cf.em)), file="regions.csv", sep=',', row.names=F, col.names=F, quote=F, na = "NULL")
      '';
    });
}
