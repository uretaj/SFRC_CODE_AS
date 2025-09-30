{
  bionix ? (import ../milton-slurm.nix {}).bionix,
  what ? "WES",
  subset ? null,
  ids ? null,
  somaticOnly ? what == "WGS",
  somaticBlood ? false,
  chunkSize ? 10,
}:
with bionix;
with lib; let
  all = callBionix ./sample-subset.nix {
    inherit subset somaticBlood what ids;
    annotateOctopus = true;
  };

  data = pipe all [
    (mapAttrs (_: v: {
      name = v."report.org".name;
      vcf =
        if somaticBlood
        then v."somatic-blood.vcf"
        else v."octopus.vcf";
    }))
  ];

  mempty = stage {
    name = "empty-db";
    buildCommand = "touch $out";
  };

  appendChunk = db: data:
    exec (_: _:
      stage {
        name = "cohort-db";
        buildInputs = [(pkgs.callPackage ../../vardb {})];
        buildCommand = ''
          cp ${db} db
          ${concatMapStringsSep "\n" (x: "import ${optionalString somaticOnly "--somatic-only"} db ${x.name} ${x.vcf}") data}
          cp db $out
        '';
      }) {
      walltime = "2-00:00:00";
    } {};

  chunk = k: xs:
    if xs == []
    then []
    else [(take k xs)] ++ chunk k (drop k xs);
in
  foldl appendChunk mempty (chunk chunkSize (attrValues data))
