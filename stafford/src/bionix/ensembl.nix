{bionix}:
with bionix;
with lib;
with pkgs; {
  query =
    exec
    (_: {
      sql,
      sha256,
      header ? false,
    }:
      stage {
        name = "ensembl-query";
        buildInputs = [mariadb];
        buildCommand = ''
          mysql -u anonymous -D ${bionix.config.ensembl.dbname} \
            -h ensembldb.ensembl.org -B ${optionalString (!header) "-N"} \
            < ${writeText "ensembl-query.sql" sql} \
            > $out
        '';
        outputHashAlgo = "sha256";
        outputHash = sha256;
      })
    {
      mem = 1;
      walltime = "0:10:00";
    };
}
