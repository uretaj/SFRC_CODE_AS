{bionix}:
with bionix;
with lib;
with pkgs; let
  getref = types.matchFiletype "ehdn" {bam = x: x.ref;};
in
  makeExtensible (self:
    with self; {
      ehdn = callPackage ./. {};

      profile = exec ({
        min-unit-len ? 2,
        max-unit-len ? 20,
        min-anchor-mapq ? 50,
        max-irr-mapq ? 40,
        log-reads ? false,
        ...
      }: bam:
        stage {
          name = "ehdn-profile";
          buildInputs = [ehdn];
          buildCommand = ''
            ExpansionHunterDenovo profile \
              --reads ${bam} \
              --reference ${getref bam} \
              --output-prefix out \
              --min-unit-len ${toString min-unit-len} \
              --max-unit-len ${toString max-unit-len} \
              --min-anchor-mapq ${toString min-anchor-mapq} \
              --max-irr-mapq ${toString max-irr-mapq} \
              ${optionalString log-reads "--log-reads"}

            mkdir $out
            cp -r out* $out
          '';
        });
    })
