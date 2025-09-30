with import ../milton-slurm.nix {};
with bionix;
with lib; let
  inherit (pkgs) writeText;
  cnvdb = import ./facetsdb.nix {subset = "100genomes"; what = "WGS";};
  refsites = ./100genomes-ref-sites.json;
  
  makegisticinput = writeText "gistictsv.sql" ''
    .headers on
    .mode csv
    .separator "\t"
    ATTACH "${cnvdb}" AS cnv;
    CREATE TEMP TABLE gistic AS
    SELECT
      donor AS Sample,
      chr AS 'Chromosome',
      start AS 'StartPosition',
      end AS 'EndPosition',
      nummark AS 'NumMarkers',
      CASE 
      WHEN tcn = 0 THEN -5
        ELSE log2(tcn)-1
        END AS 'Seg.CN'
    FROM
      regions
    LEFT JOIN (
      SELECT 
        UPPER(key) AS donor, 
        json_extract(refsites.value, '$.siteid') as refsite
      FROM
        json_each(readfile('${refsites}')) refsites
      ) USING (donor)
        WHERE
          refsite IS NULL OR
          regions.siteid = refsite
      ;
    -- Add dummy region for samples with no regions in chr X
    INSERT INTO gistic
    SELECT
      DISTINCT Sample,
      23 AS Chromosome,
      2781000 AS StartPosition,
      155700000 AS EndPosition,
      200000 AS NumMarkers,
      0 AS 'Seg.CN'
    FROM
      gistic
    WHERE Sample NOT IN (SELECT DISTINCT Sample FROM gistic WHERE Chromosome = 23)
    ;
    SELECT * FROM gistic;
    '';

in
  exec (_: _:
    stage {
      name = "facets_tcn2gistic";
      buildInputs = [pkgs.sqlite];
      buildCommand = ''
        cat "${makegisticinput}" | sqlite3 > $out
      '';
   }) {
 } {}


