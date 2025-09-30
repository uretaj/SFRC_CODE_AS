{
  stdenvNoCC,
  aria2,
  ncftp,
  version,
}:
stdenvNoCC.mkDerivation {
  name = "fetch-peaks";
  nativeBuildInputs = [aria2 ncftp];
  buildCommand = ''
    ncftpls -1R ftp://ftp.ensembl.org/pub/release-${
      toString version
    }/regulation/homo_sapiens/Peaks | \
      awk '/gff.gz$/{print "ftp://ftp.ensembl.org/pub/release-${
      toString version
    }/regulation/homo_sapiens/" $0}' \
      > urls.txt
    aria2c -i urls.txt
    cat *gff.gz > $out
  '';
  preferLocalBuild = true;
  allowSubstitutes = true;
  outputHashAlgo = "sha256";
  outputHash = "sha256-6l5/55U7of82SQPS27JgVph5OAIW+/6foMRDD2kUpFc=";
}
