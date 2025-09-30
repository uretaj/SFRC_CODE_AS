_: super:
with super; {
  facets = facets // {reporting = callBionix ./facets.nix {};};
  mutsigs = callBionix ./mutational-signatures.nix {};
  dbs = callBionix ./db.nix {};
  refdbs = callBionix ./refdbs.nix {};
  neoantigens = let
    neo = callBionix ./neoantigen.nix {};
  in
    lib.recursiveUpdate neo {peptides = def neo.peptides {mem = 30;};};
  chord.estimate = callBionixE ./chord.nix;
  circos = callBionixE ./circos.nix;
  linear-sv = def (callBionixE ./linear-sv.nix) {};
  fq-filter = callBionixE ../fq-filter/bionix.nix {};
  shatterseek = callBionixE ../shatterseek;
  gridss =
    gridss
    // {
      callSomatic = callBionixE ../nix/gridss-somatic-filter.nix;
      callFusions = callBionixE ../gridss-fusions;
      fusionDB = exec (_: xs:
        assert lib.length xs > 0;
          stage {
            name = "gridss-fusions-db";
            buildInputs = [pkgs.sqlite];
            buildCommand = ''
              cat $schema | sqlite3 db
              ${lib.concatMapStringsSep "\n" (p: ''
                  sed 's/^/${p.donor}\t/' ${p.fusions} > fusions.tsv
                  cat $importSQL | sqlite3 db
                '')
                xs}
                cp db $out
            '';
            importSQL = pkgs.writeText "import.sql" ''
              .mode tabs
              .import "./fusions.tsv" fusions
            '';
            schema = pkgs.writeText "schema.sql" ''
              CREATE TABLE IF NOT EXISTS fusions (
                  donor text NOT NULL,
                  a text NOT NULL,
                  b text NOT NULL,
                  PRIMARY KEY (donor, a, b)
              );
            '';
          });
    };
  ensembl = callBionix ./ensembl.nix {};
  xHLA = callBionixE ./xHLA.nix;
  str = callBionix ../nix/str {};
  cnv-signatures = callBionix ../cnv-signatures {};
  ecDNAPlots = callBionixE ../ecDNAPlots;
  mchord = callBionixE ../mchord;
}
