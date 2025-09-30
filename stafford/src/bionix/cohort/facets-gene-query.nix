{
  bionix ? (import ../milton-slurm.nix {}).bionix,
  subset ? "procan",
  genes ? ["TP53" "RB1" "ATRX" "PTEN" "BRCA1" "BRCA2"],
}:
assert builtins.length genes > 0;
let
  inherit (bionix) callBionix stage exec'' linkOutputs pkgs refdbs lib;

  dbwgs = callBionix ./facetsdb.nix {
    what = "WGS";
    subset = "procan";
  };
  dbwes = callBionix ./facetsdb.nix {
    what = "WES";
    subset = "procan";
  };

  getmuts = facetsdb:
    exec'' (stage {
      name = "facetsdb-query";
      buildInputs = [pkgs.sqlite];
      buildCommand = ''
        printf "%s" "$sql" | sqlite3 -header -csv > $out
      '';
      sql = ''
        PRAGMA temp_store = memory;
        PRAGMA mmap_size = 30000000000;
        attach "${facetsdb}" as db;
        attach "${refdbs.geneLocationsDB}" as geneloc;

        select donor, siteid, gene, r.chr, r.start, r.end, tcn, lcn from regions as r
        inner join genelocs as g on
          (g.chr == r.chr or g.chr = 'X' and r.chr = 23)
          and g.start <= r.end
          and g.end >= r.start
        where
          ${lib.concatMapStringsSep " or " (g: "gene = '${g}'") genes};
      '';
    });
in
  linkOutputs {
    "wes.csv" = getmuts dbwes;
    "wgs.csv" = getmuts dbwgs;
  }
