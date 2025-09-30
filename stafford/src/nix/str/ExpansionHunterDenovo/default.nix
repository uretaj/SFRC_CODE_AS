{
  lib,
  stdenv,
  fetchurl,
  fetchFromGitHub,
  cmake,
  zlib,
  bzip2,
  lzma,
  boost16x,
}:
stdenv.mkDerivation rec {
  pname = "ExpansionHunterDenovo";
  version = "0.9.0";

  src = fetchFromGitHub {
    owner = "illumina";
    repo = pname;
    rev = "v${version}";
    sha256 = "sha256-la46LSAWxlxM9ScqdqsIsDUNTboSml3vQfeFeRDlC1g=";
  };

  nativeBuildInputs = [cmake];
  buildInputs = [zlib bzip2 lzma];

  preConfigure = ''
    cd source
  '';

  cmakeFlags = ["-DBOOST_URL=file://${boost16x.src}" "-DBOOST_URL_SHA256=${boost16x.src.outputHash}"];

  installPhase = ''
    install -Dm 755 ExpansionHunterDenovo $out/bin/ExpansionHunterDenovo
  '';

  meta = with lib; {
    description = "A suite of tools for detecting novel expansions of short tandem repeats";
    license = licenses.asl20;
    homepage = "https://github.com/Illumina/ExpansionHunterDenovo";
    maintainers = with maintainers; [jbedo];
    platforms = platforms.all;
  };
}
