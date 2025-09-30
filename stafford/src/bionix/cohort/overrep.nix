attrs @ {threshold ? 0.1, ...}:
with import ../milton-slurm.nix {};
with bionix;
with lib; let
  db = import ./vardb.nix (builtins.removeAttrs attrs ["threshold"]);
in
  exec (_: _:
    stage {
      name = "cohort-overrep";
      buildInputs = [pkgs.sqlite];
      buildCommand = ''
        printf "%s" "''${sql}" | sqlite3 $out
      '';
      sql = ''
        PRAGMA journal_mode = OFF;
        PRAGMA synchronous = OFF;
        PRAGMA temp_store = memory;
        PRAGMA mmap_size = 30000000000;
        PRAGMA page_size = 32768;

        ATTACH "${db}" as db;

        CREATE TABLE IF NOT EXISTS overrep (
            chr TEXT NOT NULL,
            pos INTEGER NOT NULL,
            ref TEXT NOT NULL,
            alt TEXT NOT NULL,
            PRIMARY KEY (chr, pos, ref, alt)
        );

        INSERT INTO overrep
        SELECT
            chr,
            pos,
            ref,
            alt
        FROM
            muts
            NATURAL JOIN haplotypes
            NATURAL JOIN calls
            NATURAL JOIN samples
        WHERE
            NOT somatic
        GROUP BY
            mutid
        HAVING
            cast(count(DISTINCT donor) AS real) / (
                SELECT
                    count(DISTINCT donor)
                FROM
                    samples) > ${toString threshold};
      '';
    }) {
  } {}
