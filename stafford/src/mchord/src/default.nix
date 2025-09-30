{ python3Packages }:

python3Packages.buildPythonApplication rec {
  pname = "McHoRD";
  version = "dev";

  src = ./.;

  propagatedBuildInputs = with python3Packages; [ scipy ];

  preConfigure = ''
    sed -i '1i#!/usr/bin/env python' ./mchord/mchord.py
  '';
}
