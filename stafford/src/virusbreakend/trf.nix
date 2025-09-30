{
  stdenv,
  fetchFromGitHub,
}:
stdenv.mkDerivation rec {
  pname = "TRF";
  version = "4.09.1";
  src = fetchFromGitHub {
    owner = "Benson-Genomics-Lab";
    repo = pname;
    rev = "v${version}";
    sha256 = "sha256-73LypVqBdlRdDCblf9JNZQmS5Za8xpId4ha5GjTJHDo=";
  };
}
