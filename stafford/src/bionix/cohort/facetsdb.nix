{
  bionix ? (import ../milton-slurm.nix {}).bionix,
  what ? "WES",
  subset ? null,
  useDonorId ? true,
  ids ? null,
}:
with bionix;
with lib; let
  all = callBionix ./sample-subset.nix {inherit subset what ids;};
  subset' = filterAttrs (_: v: v ? facets) all;
in
  facets.reporting.db {} (
    concatLists (
      mapAttrsToList (filename: s @ {facets, ...}:
        mapAttrsToList (
          siteid: {postproc, ...}: {
            inherit siteid postproc;
            donor =
              if useDonorId
              then s."report.org".name
              else filename;
          }
        )
        facets)
      subset'
    )
  )
