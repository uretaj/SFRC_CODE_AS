{ stdenv, fetchurl }:

stdenv.mkDerivation rec {
  pname = "sra-tools";
  version = "2.11.1";

  src = fetchurl {
    url = "https://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/2.11.1/sratoolkit.2.11.1-centos_linux64.tar.gz";
    sha256 = "sha256-T+woeyaC88AgsfHe9olWrj6PFFhOqE82+bga6HXEzLI=";
  };

  installPhase = ''
    runHook preInstall
    cp -r $(pwd) $out
    find $out/bin -name \*.${version} -type f -executable -print0 | xargs -0 -n1 \
      patchelf --set-interpreter ${stdenv.cc.bintools.dynamicLinker}
    runHook postInstall
  '';

}
