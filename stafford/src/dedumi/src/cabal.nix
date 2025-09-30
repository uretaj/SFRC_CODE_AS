{ mkDerivation, base, bytestring, criterion, cuckoo, fusion-plugin
, ghc-prim, hpack, lib, microlens, microlens-th, optparse-generic
, QuickCheck, streaming-commons, streamly-bytestring, streamly-core
, temporary, text
}:
mkDerivation {
  pname = "dedumi";
  version = "0.1";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  libraryToolDepends = [ hpack ];
  executableHaskellDepends = [
    base bytestring cuckoo fusion-plugin ghc-prim microlens
    microlens-th optparse-generic streaming-commons streamly-bytestring
    streamly-core
  ];
  testHaskellDepends = [
    base bytestring criterion cuckoo fusion-plugin ghc-prim microlens
    microlens-th optparse-generic QuickCheck streaming-commons
    streamly-bytestring streamly-core temporary text
  ];
  prePatch = "hpack";
  license = "unknown";
  mainProgram = "dedumi";
}
