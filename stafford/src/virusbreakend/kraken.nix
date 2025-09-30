{
  stdenv,
  fetchFromGitHub,
  perl,
}:
stdenv.mkDerivation rec {
  pname = "kraken2";
  version = "2.1.2";

  src = fetchFromGitHub {
    owner = "DerrickWood";
    repo = pname;
    rev = "v${version}";
    sha256 = "sha256-Tuqew4ZSerKukTbCiUN6A/NAHcCm6Is8tFC8RgOtht4=";
  };

  dontInstall = true;

  nativeBuildInputs = [perl];

  buildPhase = ''
    patchShebangs .
    mkdir -p $out/bin
    ./install_kraken2.sh $out/bin
  '';
}
