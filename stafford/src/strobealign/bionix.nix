self: super:
with super; {
  strobealign = {
    app = pkgs.callPackage ./. {};

    align = exec ({
      ref,
      RG,
    }: {
      input1,
      input2,
    }:
      with lib;
        stage {
          name = "strobealign-align";
          buildInputs = [self.strobealign.app pkgs.samtools];
          buildCommand = ''
            strobealign ${escapeShellArg ref} ${escapeShellArg input1} ${escapeShellArg input2} \
              -t $NIX_BUILD_CORES \
              --no-progress \
              --rg-id=${escapeShellArg RG.ID} \
              ${with lib; escapeShellArgs (mapAttrsToList (k: v: "--rg=${k}:${v}") (filterAttrs (k: _: k != "ID") RG))} \
              | samtools view -b > $out
          '';
          passthru = with lib.types; {
            filetype = filetype.bam {
              inherit ref;
              sorting = sort.none {};
            };
            multicore = true;
          };
          stripStorePaths = false;
        });
  };
}
