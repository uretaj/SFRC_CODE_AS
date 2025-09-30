{
  stdenv,
  lib,
  fetchurl,
  python3,
  hmmer,
  trf,
  perl,
}:
stdenv.mkDerivation rec {
  pname = "RepeatMasker";
  version = "4.1.4";

  src = fetchurl {
    url = "https://repeatmasker.org/${pname}/${pname}-${version}.tar.gz";
    sha256 = "sha256-169fSbfsxfuQ5mlWyFh3Ig7EYfbk1U4GpZlrsv1rY/o=";
  };

  buildInputs = [
    (python3.withPackages (ps: with ps; [h5py]))
    perl
  ];

  dontConfigure = true;
  dontInstall = true;

  dfam = fetchurl {
    url = "https://www.dfam.org/releases/Dfam_3.6/families/Dfam.h5.gz";
    sha256 = "sha256-nquspA+NPYFCv5L0y5AXJxqrJYcOaq7DeSQAweZT4HI=";
  };

  buildPhase = ''
    runHook preBuild
    patchShebangs .
    mkdir -p $out/bin
    cp -r * $out/bin
    cd $out/bin
    gunzip < $dfam > Libraries/Dfam.h5
    ./configure -trf_prgm ${lib.getBin trf}/bin/trf \
      -hmmer_dir ${lib.getBin hmmer}/bin \
      -default_search_engine hmmer
    runHook postBuild
  '';
}
