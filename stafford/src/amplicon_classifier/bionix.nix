self: super:
with super; {
  amplicon_classifier = {
    app = pkgs.callPackage ./. {};

    makeInput = exec (_: input:
      stage {
        inherit input;
        name = "amplicon_classifier-mkinput";
        buildInputs = [self.amplicon_classifier.app];
        buildCommand = ''
          make_input.sh $input out
          cp out.input $out
        '';
        stripStorePaths = false;
      });

    classify = exec ({
      flags ? "",
      downsample ? 0.1,
      ...
    }: input:
      stage {
        input = self.amplicon_classifier.makeInput {} input;
        name = "amplicon_classifier-call";
        buildInputs = [self.amplicon_classifier.app];
        buildCommand = ''
          mkdir $out
          export AA_DATA_REPO=$TMPDIR
          tar -xzf ${super.aa.ref}
          amplicon_classifier.py \
            --ref GRCh38 \
            -o $out/out \
            --input $input \
            $flags
        '';
      });
  };
}
