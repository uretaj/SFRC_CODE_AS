{
  stdenv,
  fetchurl,
  fetchFromGitHub,
  python3,
}: let
  python = python3.withPackages (pkgs:
    with pkgs; [
      numpy
      scipy
      pysam
      matplotlib
      future
      intervaltree
      (mosek pkgs)
    ]);

  mosek = assert stdenv.system == "x86_64-linux";
    pkgs:
      pkgs.buildPythonPackage {
        pname = "mosek";
        version = "8.1.0.83";
        src = fetchurl {
          url = "https://download.mosek.com/stable/8.1.0.83/mosektoolslinux64x86.tar.bz2";
          sha256 = "sha256-d/S/IalmQwizWYZ89ZskUoVAaXWYszuw7w+w0Vp+13k";
        };
        doCheck = false;
        preBuild = ''
          cd 8/tools/platform/linux64x86/python/3/
        '';
        propagatedBuildInputs = with pkgs; [numpy];
        postInstall = ''
          find $out -name lib\*.so\* -print0 | xargs -0 \
            patchelf --add-rpath ${stdenv.cc.cc.lib}/lib
        '';
      };
in
  stdenv.mkDerivation rec {
    pname = "AmpliconSuite-pipeline";
    version = "1.2.1";

    srcs = [
      (fetchFromGitHub {
      owner = "uretaj";
      repo = pname;
      rev = "30ea64a4b72436b2166af5c15068131e17bb206b";
      sha256 = "sha256-w2bhPX3pRo/P5CHNLFVja+SA1qbdYxp4vnpxlZCtRSs=";
      name = "src";
     })
      (fetchFromGitHub {
      owner = "virajbdeshpande";
      repo = "AmpliconArchitect";
      rev = "40da8520a953810ad43e5a6fdf4aba7449d7f5e0";
      sha256 = "sha256-4SAOpdjXiZFTfpD6WpLfs2zDyGT2hcWabl+sUjboBpc=";
      name = "src2";
     })
      (fetchFromGitHub {
      owner = "AmpliconSuite";
      repo = "AmpliconClassifier";
      rev = "8bf64ad363d2263a04a33265abcba02f6c1b7c90";
      sha256 = "sha256-RYthWCQFC4bCQYxaX+kXsf39nzy+NNonc1KuJ3IbRPU=";
      name = "src3";
     })
    ];
    sourceRoot = "src";
    doBuild = false;
    installPhase = ''
      mkdir -p $out/libexec
      cp -r ../src $out/libexec/as
      cp -r ../src2 $out/libexec/aa
      cp -r ../src3 $out/libexec/ac
      mkdir $out/bin
      ln -s $out/libexec/as/AmpliconSuite-pipeline.py $out/bin
      ln -s $out/libexec/aa/src/{AmpliconArchitect,amplified_intervals,ref_util,downsample}.py $out/bin
      ln -s $out/libexec/ac/amplicon_classifier.py $out/bin
    '';

    buildInputs = [python];
  }
