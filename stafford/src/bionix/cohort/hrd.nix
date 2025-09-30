attrs @ {bionix ? (import ../milton-slurm.nix {}).bionix, ...}:
with bionix;
with lib; let
  samples = callBionix ./sample-subset.nix attrs;

  scores = mapAttrs' (_: y: let
    inherit (y."report.org") name;
  in
    pipe y [
      (x: x.facets)
      (mapAttrs (siteid: {postproc, ...}:
        bionix.facets.reporting.db {} [
          {
            inherit siteid postproc;
            donor = name;
          }
        ]))
      (mapAttrs (_: hrscore.score {}))
      (nameValuePair name)
    ])
  samples;

  allscores = exec'' (stage {
    name = "concat-hdscore.csv";
    buildCommand = concatMapAttrsStringsSep "\n" (sample:
      concatMapAttrsStringsSep "\n" (_: site: ''
        awk 'BEGIN{FS="|"; OFS=","}{$1 = "${sample}"; print}' ${site} >> $out
      ''))
    scores;
  });
in
  allscores
