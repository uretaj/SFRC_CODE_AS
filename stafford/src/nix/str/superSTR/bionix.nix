{bionix}:
with bionix;
with lib;
with pkgs; let
  getMode = types.matchFiletype "superstr" {
    bam = _: "bam";
    fq = _: "fq";
  };
in
  makeExtensible (self:
    with self; {
      superstr = callPackage ./. {};

      profile = exec ({
        retain-reads ? false,
        threshold ? null,
        ...
      }: input:
        stage {
          name = "superstr-profile";
          buildInputs = [superstr];
          buildCommand = ''
            mkdir out

            superstr \
              --mode=${getMode input} \
              -o out/ \
              ${optionalString retain-reads "-r"} \
              ${optionalString (threshold != null) "-t ${toString threshold}"} \
              ${input}

            cp -r out $out
          '';
        });
    })
