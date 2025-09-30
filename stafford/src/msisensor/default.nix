{
  stdenv,
  fetchFromGitHub,
  meson,
  ninja,
  writeText,
  htslib,
  pkg-config,
}: let
  mesonfile = writeText "msisensor-meson.build" ''
    project('msisensor-pro', 'cpp', version: '${version}')
    htslib = dependency('htslib')
    omp = dependency('openmp')
    sources = 'cmds.cpp scan.cpp distribution.cpp refseq.cpp polyscan.cpp param.cpp utilities.cpp homo.cpp window.cpp bamreader.cpp sample.cpp chi.cpp somatic.cpp'.split(' ')
    executable('msisensor-pro', sources, install: true, dependencies: [htslib, omp])
  '';
  version = "1.2.0";
in
  stdenv.mkDerivation rec {
    pname = "msisensor-pro";
    inherit version;
    src = fetchFromGitHub {
      owner = "xjtu-omics";
      repo = pname;
      rev = "v${version}";
      sha256 = "sha256-tU4WVmhoY/2aXM3V3jngyWFqdR0wUB7mnB56D9nGN9w=";
    };
    nativeBuildInputs = [meson ninja pkg-config];
    buildInputs = [htslib];
    preConfigure = ''
      cd cpp
      cp ${mesonfile} meson.build
    '';
  }
