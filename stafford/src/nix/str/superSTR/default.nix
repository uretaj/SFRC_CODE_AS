{
  stdenv,
  fetchFromGitHub,
  cmake,
  zlib,
  htslib,
}:
stdenv.mkDerivation rec {
  pname = "superSTR";
  version = "git";

  src = fetchFromGitHub {
    owner = "bahlolab";
    repo = "superSTR";
    rev = "457bbec20e236d42e616a6da19b0832ab26d01ee";
    sha256 = "sha256-ZTIeIRZGT/9gV0UY4BCGrQZDH9YbYvb9vS9KXrjxNAM=";
  };

  preConfigure = ''
    sed -i 37d Cmakes/Findhtslib.cmake
  '';

  installPhase = ''
    install -Dm 755 superstr $out/bin/superstr
  '';

  sourceRoot = "source/C";

  nativeBuildInputs = [cmake];
  buildInputs = [zlib.dev htslib];
}
