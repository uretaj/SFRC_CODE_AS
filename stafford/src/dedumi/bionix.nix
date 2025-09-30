self: super:
with super; {
  dedumi = {
    app = import ./src {};

    dedup = exec (attrs: {
      input1,
      input2,
    }: let
      inherit (lib) optionalString;
    in
      stage {
        name = "dedumi";
        buildInputs = [self.dedumi.app];
        outputs = ["out" "out2"];
        buildCommand = ''
          dedumi \
            ${optionalString (attrs ? umiLength) "--umiLength ${toString attrs.umiLength}"} \
            ${optionalString (attrs ? extraHashBases) "--extraHashBases ${toString attrs.extraHashBases}"} \
            ${optionalString (attrs ? filterSize) "--filterSize ${toString attrs.filterSize}"} \
            ${input1} ${input2} $out $out2
        '';
        passthru.filetype = input1.filetype;
      });
  };
}
