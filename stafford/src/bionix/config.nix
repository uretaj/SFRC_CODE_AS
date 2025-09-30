_: _: {
  config.ensembl = rec {
    dbname = "homo_sapiens_core_${toString version}_38";
    version = 110;
  };
}
