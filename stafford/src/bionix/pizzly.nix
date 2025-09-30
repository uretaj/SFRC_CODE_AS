{
  bionix,
  kmerSize ? 31,
  gtf,
  cdna,
  alignScore ? 2,
  maxInsertSize ? 400,
}:
with bionix;
with pkgs; let
  pizzly = callPackage ./pizzly-app.nix {};
in
  input:
    stage {
      name = "pizzly";
      buildInputs = [pizzly];
      buildCommand = ''
        ln -s ${gtf} ref.gtf
        ln -s ${cdna} ref.fa
        mkdir $out
        pizzly                          \
          -G ref.gtf                    \
          -C cache                      \
          -F ref.fa                     \
          -k ${toString kmerSize}       \
          -o $out/output                \
          -a ${toString alignScore}     \
          -i ${toString maxInsertSize}  \
          ${input}/fusion.txt
      '';
    }
