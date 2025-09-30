{sample}:
with (import ./milton-slurm.nix {}).bionix;
with lib; let
  es = sample.linkInputs."octopus-unannot.vcf".inputs;

  getSN = let
    script = pkgs.writeText "getSN.awk" ''
      BEGIN{
        FS=":"
        RS="[ \t\n]"
      }
      $1=="SM"{print $2; exit}
    '';
  in
    pkgs.writeShellScriptBin "getSN" ''
      exec ${pkgs.samtools}/bin/samtools view -H "$1" | awk -f ${script}
    '';
  rename = exec (_: input:
    stage {
      name = "rename-evidence";
      buildInputs = [getSN];
      buildCommand = ''
        mkdir $out
        for f in ${input}/*.bam ; do
          name=$(getSN $f)
          cat $f > $out/$name.bam
          cat $f.bai > $out/$name.bam.bai
        done
      '';
    });
in
  linkOutputs (listToAttrs (map (x: nameValuePair x.chr (rename {} x.evidence)) es))
