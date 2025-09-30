{bionix}:
with bionix;
with pkgs;
with dbs; let
  inherit (bionix.config.ensembl) version;

  regulation = callPackage ./peaks.nix {inherit version;};

  pairs = f: t:
    with lib;
      if length t < 2
      then t
      else let
        x = head t;
        y = head (tail t);
        rest = tail (tail t);
      in
        [(f x y)] ++ pairs f rest;

  foldt = f: x0: xs:
    with lib;
      if length xs == 0
      then x0
      else if length xs == 1
      then head xs
      else foldt f x0 (pairs f xs);
in {
  snpeff = exec'' (stage {
    name = "snpeff-db";
    buildInputs = with pkgs; [snpeff];
    stripStorePaths = false;
    buildCommand = ''
      mkdir -p bionix-snpeff-db
      gunzip < $genes > bionix-snpeff-db/genes.gtf
      gunzip < $proteins > bionix-snpeff-db/protein.fa
      gunzip < $cds > bionix-snpeff-db/cda.fa
      gunzip < ${regulation} > bionix-snpeff-db/regulation.gff
      gunzip < $genome > bionix-snpeff-db/sequences.fa
      cp $config snpEff.config
      snpeff build -dataDir $TMPDIR -storeSeqs -v bionix-snpeff-db
      mkdir $out
      cp bionix-snpeff-db/*bin $out
      cp $config $out/snpEff.config
    '';
    config = pkgs.writeText "snpEff.config" ''
      bionix-snpeff-db.genome : Homo_sapiens
      bionix-snpeff-db.reference : ftp://ftp.ensembl.org/pub/release-${
        toString version
      }/gtf/
    '';
    genome = pkgs.fetchurl {
      url = "ftp://ftp.ensembl.org/pub/release-${toString version}/fasta/homo_sapiens/dna/Homo_sapiens.GRCh38.dna.toplevel.fa.gz";
      sha256 = "sha256-qbmPAbNAV2k9sSSo4nb31igiwzgOU4w4bJhRLg9iEdE=";
    };
    genes = pkgs.fetchurl {
      url = "ftp://ftp.ensembl.org/pub/release-${toString version}/gtf/homo_sapiens/Homo_sapiens.GRCh38.${toString version}.gtf.gz";
      sha256 = "sha256-XTw2ODW9pM+LoCX3KLGQ9p1FTolFFLs8gRI+/bFe8bk=";
    };
    proteins = pkgs.fetchurl {
      url = "ftp://ftp.ensembl.org/pub/release-${toString version}/fasta/homo_sapiens/pep/Homo_sapiens.GRCh38.pep.all.fa.gz";
      sha256 = "sha256-KEnR2wsBb4RN4w/60wo2BFR8y7c29WI+Yom30GpPtIM=";
    };
    cds = pkgs.fetchurl {
      url = "ftp://ftp.ensembl.org/pub/release-${toString version}/fasta/homo_sapiens/cdna/Homo_sapiens.GRCh38.cdna.all.fa.gz";
      sha256 = "sha256-GIHoApjxkgcVm2C/HrebDF/jTrOMJMW055ajXwFsHn0=";
    };
  });

  db = callBionixE ../vardb/bionix.nix;
}
