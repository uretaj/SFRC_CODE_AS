{bionix}:
with bionix;
with pkgs; let
  sql = writeText "t2g.sql" ''
    select concat(t.stable_id, '.', t.version) as id
      , ga.value as gene
    from gene as g
    inner join transcript as t
      on g.gene_id = t.gene_id
    inner join gene_attrib as ga
      on ga.gene_id = g.gene_id
    where ga.attrib_type_id = 4;
  '';
in
  stage {
    name = "t2g";
    buildInputs = [mysql];
    buildCommand = "mysql -u anonymous -h ensembldb.ensembl.org -D ${bionix.config.ensembl.dbname} < ${sql} > $out";
    outputHash = "sha256-ut6syx9ZkuFEdgjIcDJEmfjJxHZSEYaVhMfot6bek+A=";
    outputHashAlgo = "sha256";
  }
