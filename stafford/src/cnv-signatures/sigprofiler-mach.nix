{pkgs}:
with pkgs; let
  references = ["GRCh38"];

  mach-nix =
    import
    (fetchFromGitHub {
      owner = "DavHau";
      repo = "mach-nix";
      rev = "refs/tags/3.3.0";
      sha256 = "sha256-RvbFjxnnY/+/zEkvQpl85MICmyp9p2EoncjuN80yrYA=";
    })
    {
      inherit pkgs;
      pypiDataRev = "b1b4dcb59dafdf07069afe2c35b80b17bd98e15f";
      pypiDataSha256 = "sha256:06vg3ifs8lmz2ch6jvxjc0jlqh213z1kf76y36gbv7qvdzm57rck";
    };

  buildAlexDrv = what: extras:
    mach-nix.buildPythonPackage
    ({
        pname = what;
        src = "https://github.com/AlexandrovLab/${what}/archive/refs/tags/v${extras.version}.tar.gz";
      }
      // extras);

  MatrixGenerator = buildAlexDrv "SigProfilerMatrixGenerator" {
    version = "1.2";
    requirements = ''
      matplotlib>=2.2.2
      sigProfilerPlotting>=1.0.1
      statsmodels>=0.9.0
      scipy>=1.1.0
      numpy>=1.18.5
      pandas>=0.23.4
    '';
  };

  patchMatrixGenerator = refdir:
    MatrixGenerator.overrideAttrs (_: {
      preConfigure = ''
        find . -type f -name \*.py -print0 | xargs -0 sed -i 's|ref_dir *=.*$|ref_dir = ${refdir}|'
      '';
    });

  referenceDir = let
    mg = patchMatrixGenerator "os.getcwd()";
  in
    stdenvNoCC.mkDerivation {
      name = "sigprofiler-references";
      nativeBuildInputs = [mg wget];
      buildCommand = ''
        mkdir references
        cd references
        cp -r ${mg.src}/SigProfilerMatrixGenerator/{scripts,references} .
        chmod u+w -R {scripts,references}
        python $script
        rm install.log
        cd ..
        cp -r references $out
      '';
      script = writeText "sigprofiler-references" ''
        from SigProfilerMatrixGenerator import install as genInstall
        ${lib.concatMapStringsSep "\n" (ref: "genInstall.install('${ref}')") references}
      '';
      outputHash = "sha256-/GbsxSRVmdfNcY53FA1nG8+B/fhWPolFWjLTx8u1ajk=";
      outputHashAlgo = "sha256";
      outputHashMode = "recursive";
    };
in rec {
  Extractor = buildAlexDrv "SigProfilerExtractor" {
    version = "1.1.3";
    requirements = ''
      psutil>=5.6.1
      PyPDF2>=1.26.0
      xlrd==1.2.0
      reportlab>=3.5.42
      torch>=1.5.1
      nimfa>=1.1.0
      numpy>=1.20.2
      scikit-learn>=0.22
      SigProfilerMatrixGenerator>=1.1.30
      setuptools
    '';
    preConfigure = ''
      substituteInPlace setup.py --replace "numpy>=1.20.3" "numpy>=1.20.2"
    '';
  };
  MatrixGenerator = patchMatrixGenerator "'${referenceDir}'";
}
