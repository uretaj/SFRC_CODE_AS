{
  stdenv,
  fetchFromGitHub,
  autoreconfHook,
  htslib,
}:
stdenv.mkDerivation rec {
  pname = "gridsstools";
  version = "2.13.2";
  src = fetchFromGitHub {
    owner = "PapenfussLab";
    repo = "gridss";
    rev = "v${version}";
    sha256 = "sha256-H/xcPqhLYzYt0uP57HWXXUIqQJghHzVpo5DF2n5iK5g=";
  };

  nativeBuildInputs = [autoreconfHook];
  buildInputs = [htslib];
  patches = [./gridss-nohts.patch];

  preAutoreconf = "cd src/main/c/gridsstools/";

  installPhase = ''
    runHook preInstall
    install -Dm755 ./gridsstools $out/bin/gridsstools
    runHook postInstall
  '';
}
