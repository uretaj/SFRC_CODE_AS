{
  stdenv,
  fetchFromGitHub,
  cmake,
  git,
  cacert,
  zlib,
}: let
  zstr = fetchFromGitHub {
    owner = "mateidavid";
    repo = "zstr";
    rev = "755da7890ea22478a702e3139092e6c964fab1f5";
    sha256 = "sha256-NVwfzDraZKn6CUjHctc03uokvvozxF5h8YbKS0BkyTI=";
  };
in
  stdenv.mkDerivation rec {
    pname = "strobealign";
    version = "0.11.0";

    src = fetchFromGitHub {
      owner = "ksahlin";
      repo = "strobealign";
      rev = "v${version}";
      sha256 = "sha256-15rR5DAb2cn++ylu8W5CQy7ojRVrtJj7PkKPmbxN0UQ=";
    };

    nativeBuildInputs = [cmake git cacert];
    buildInputs = [zlib];

    preConfigure = ''
      substituteInPlace CMakeLists.txt \
        --replace 'FetchContent_MakeAvailable(ZStrGitRepo)' 'add_subdirectory(${zstr} zstrbin) '
    '';
  }
