{ bionix }:

with bionix;
with lib;
with types;

id:

let
  files = callBionix ./files.nix {};

  fetch = read:
    with files."${id}"."${toString read}";
    stage {
      name = "fetch-fastq";
      buildInputs = [ pkgs.curl ];
      buildCommand = ''
        curl ${url} > $out
      '';
      outputHashType = "flat";
      outputHashAlgo = "md5";
      outputHash = md5;
      passthru.filetype = filetype.gz (filetype.fq { });
      stripStorePaths = false;
    };

in {
  input1 = fetch 1;
  input2 = fetch 2;
}
