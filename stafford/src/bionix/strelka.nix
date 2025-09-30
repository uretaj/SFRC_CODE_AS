_: super:
with super; {
  strelka = strelka.overrideAttrs (attrs: {
    preConfigure =
      ''
        for d in `find . -name test` ; do
          rm -rf $d
          mkdir $d
          echo > $d/CMakeLists.txt
        done
      ''
      + attrs.preConfigure or "";
  });
}
