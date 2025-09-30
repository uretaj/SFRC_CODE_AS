{
  sample,
  regions ? [],
}:
with (import ./milton-slurm.nix {}).bionix;
with lib; let
  alignments = sample.linkInputs.alignments;
  proc = site:
    flip pipe [
      (x: types.matchFiletype "alignments-uncompress" {qp = _: quip.unquip {} x; bam = _: x;} x)
      (samtools.sort {})
      (filterTo {inherit regions;})
      (bam: {
        "${site}.bam" = bam;
        "${site}.bam.bai" = samtools.index {} bam;
      })
    ];
  filterTo = exec ({regions}: input: let
    indexed = linkOutputs {
      "input.bam" = input;
      "input.bam.bai" = samtools.index {} input;
    };
  in
    if regions == []
    then input
    else
      stage {
        name = "filter-bam-region";
        buildInputs = [pkgs.samtools];
        buildCommand = ''
          samtools view -b ${indexed}/input.bam ${concatStringsSep " " regions} > $out
        '';
        stripStorePaths = false;
        passthru.filetype = input.filetype;
      });
in
  pipe alignments [(mapAttrsToList proc) (foldl (x: y: x // y) {}) linkOutputs]
