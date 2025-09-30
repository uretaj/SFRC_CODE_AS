{
  stdenv,
  fetchFromGitHub,
  python3,
  util-linux
}: let
  python = python3.withPackages (pkgs:
    with pkgs; [
      matplotlib
      scipy
      intervaltree
    ]);

in
  stdenv.mkDerivation rec {
    pname = "AmpliconClassifier";
    version = "0.4.16";

    src = fetchFromGitHub {
      owner = "jluebeck";
      repo = pname;
      rev = "v${version}";
      sha256 = "sha256-291AhJKGQW7sLMn746ZKggA+0CQTpwPZUvTTUqZ8BWY=";
    };

    doBuild = false;
    installPhase = ''
      mkdir -p $out/libexec
      cp -r . $out/libexec/${pname}
      mkdir $out/bin
      ln -s $out/libexec/${pname}/{amplicon_classifier,amplicon_similarity,feature_simularity}.py $out/bin
      ln -s $out/libexec/${pname}/make_input.sh $out/bin
      substituteInPlace $out/bin/make_input.sh --replace 'rev' '${util-linux}/bin/rev'
    '';

    buildInputs = [python];
  }
