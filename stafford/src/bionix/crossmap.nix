{
  python3Packages,
  zlib,
  lzo,
}:
with python3Packages; let
  python-lzo = buildPythonPackage rec {
    pname = "python-lzo";
    version = "1.12";

    src = fetchPypi {
      inherit pname version;
      sha256 = "0iakqgd51n1cd7r3lpdylm2rgbmd16y74cra9kcapwg84mlf9a4p";
    };

    propagatedBuildInputs = [lzo nose];
  };

  bx-python = buildPythonPackage rec {
    pname = "bx-python";
    version = "0.8.6";

    doCheck = false;

    src = fetchPypi {
      inherit pname version;
      sha256 = "1jj8wvz7malbwck9z6bjahd8ijcmyc1sdq41abs746wpck4xgf1n";
    };

    propagatedBuildInputs = [numpy cython six python-lzo nose];
    buildInputs = [zlib];
  };

  pyBigWig = buildPythonPackage rec {
    pname = "pyBigWig";
    version = "0.3.17";

    src = fetchPypi {
      inherit pname version;
      sha256 = "157x6v48y299zm382krf1dw08fdxg95im8lnabhp5vc94s04zxj1";
    };

    propagatedBuildInputs = [numpy];
    buildInputs = [zlib];
  };
in
  buildPythonApplication rec {
    pname = "CrossMap";
    version = "0.3.9";

    src = fetchPypi {
      inherit pname version;
      sha256 = "0k67fbzwk7pvdiq8751gnkr3qg7889xw7kx6yp03lcgwx59lc2p2";
    };

    propagatedBuildInputs = [cython nose pyBigWig bx-python pysam numpy];
  }
