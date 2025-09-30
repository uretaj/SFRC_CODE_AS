self: super: with super; {
  ecdna = {
    app = pkgs.callPackage ./. {};
    gridss2facts = exec (_: vcf:
      stage {
        name = "vcf2pl";
        buildInputs = [self.ecdna.app];
        buildCommand = ''
          gridss2pl ${vcf} > $out
        '';
        stripStorePaths = false;
      });
    callRegions = exec (_: input:
      stage {
        inherit input;
        name = "circle-regions";
        buildInputs = [pkgs.scryer-prolog pkgs.sqlite];
        sql = ''
          .mode csv
          create table regions(chr TEXT, start INTEGER, end INTEGER, primary key(chr, start, end));
          create temp table regionsTmp(chr TEXT, start INTEGER, end INTEGER);
          .import circles regionsTmp
          insert or ignore into regions select * from regionsTmp;
        '';
        buildCommand = ''
          scryer-prolog $input ${./circles.pl} -g main < /dev/null > circles
          printf "%s" "$sql" | sqlite3 $out
        '';
      });
  };
}
