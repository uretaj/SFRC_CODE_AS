self: super:
with super; {
  msisensor = {
    app = pkgs.callPackage ./. {};

    scan = exec (_: ref:
      stage {
        name = "msisensor-scan";
        buildInputs = [self.msisensor.app];
        buildCommand = ''
          msisensor-pro scan -d ${ref} -o $out
        '';
      });

    msi = exec (_: input @ {
      normal,
      tumour,
    }: let
      getref = with types; matchFiletype "msisensor" {bam = x: x.ref;};
      ref = getref normal;
      links = with lib;
        pipe input [
          (mapAttrsToList (n: bam: {
            "${n}.bam" = bam;
            "${n}.bam.bai" = samtools.index {} bam;
          }))
          (foldl' mergeAttrs {})
          linkOutputs
        ];
    in
      assert ref == getref tumour;
        stage {
          inherit links;
          name = "msisensor-msi";
          buildInputs = [self.msisensor.app];
          buildCommand = ''
            msisensor-pro msi -d ${self.msisensor.scan {} ref} \
              -n $links/normal.bam -t $links/tumour.bam -o $out
          '';
        });
  };
}
