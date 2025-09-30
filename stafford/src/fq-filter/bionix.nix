{bionix}:
with bionix;
with lib;
with pkgs; let
  fq-filter = callPackage ./. {};
in
  {
    input1,
    input2,
  }:
    stage {
      name = "fq-filter";
      buildInputs = [fq-filter pigz bc];
      outputs = ["input1" "input2" "out"];
      buildCommand = ''
        cores=$(echo $NIX_BUILD_CORES - 3 | bc)
        if [[ $cores -lt 2 ]] ; then
          cores=2
        fi
        cores=$(echo $cores / 2 | bc)

        fq-filter <(gunzip < ${input1}) <(gunzip <${input2}) \
                  >(pigz -p $cores > $input1) >(pigz -p $cores > $input2)
        touch $out
      '';
      passthru.multicore = true;
      passthru.filetype = input1.filetype;
    }
