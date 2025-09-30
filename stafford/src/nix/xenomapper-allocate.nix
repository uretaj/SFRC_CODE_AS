{
  bionix,
  flags ? null,
}: {
  primary,
  secondary,
}:
with bionix;
with lib;
with types; let
  isSortedBam = matchFiletype "xenomapper-allocate" {
    bam = matchSorting "xenomapper-allocate" {
      coord = _: false;
      name = _: true;
      none = _: false;
    };
  };
  xenomapperhs = import ../xenomapper-hs;
in
  assert isSortedBam primary;
  assert isSortedBam secondary;
    stage {
      name = "xenomapper-allocate";
      buildInputs = [xenomapperhs];
      buildCommand = ''
        xenomapper ${primary} ${secondary}
        cp primary.bam $out
      '';
      passthru.filetype = primary.filetype;
    }
