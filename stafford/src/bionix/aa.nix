attrs @ {
  bionix ? (import ./milton-slurm.nix {}).bionix,
  sample,
  ...
}:
with bionix;
with lib; let
  mergeSite = y:
    mapAttrs
    (_: x:
      if length x == 1
      then head x
      else (head x) // samtools.merge {} x)
    (groupBy (x: x.site) y);

  outputs = import sample {};
  alignments = pipe outputs.rawAlignments [
    (map (x:
      types.matchFiletype "alignments-uncompress" {
        qp = _: x // quip.unquip {} x;
        bam = _: x;
      }
      x))
    (map (x: x // bamfilter.filter {} x))
    (map (x: x // samtools.sort {} x))
    mergeSite
  ];
in
  linkOutputs (mapAttrs (n: v:
    pipe n [
      (n: alignments.${n})

      (aa.call (attrs
        // {
	  partition = "long"; 
	  walltime = "14-00:00:00";
          seeds = aa.seedFacets {} (facets.reporting.db {} [
            {
              inherit (v) postproc;
              donor = outputs.linkInputs."report.org".name;
              siteid = n;
            }
          ]);
        }))

      (aa: {
        architect = aa;
        classifier = amplicon_classifier.classify {} aa;
      })
    ])
  outputs.linkInputs.facets)
