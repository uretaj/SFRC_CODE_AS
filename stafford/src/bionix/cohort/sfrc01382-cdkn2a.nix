{bionix ? (import ../milton-slurm.nix {}).bionix}:
with bionix;
with pkgs.lib; let
  allSamples = filterAttrs (n: _: n != "sfrc01312") (callBionix ./all.nix {});

  inherit (callBionix ./utils.nix {}) select;
in
  linkOutputs {
    "sfrc01382-cdkn2a.pdf" =
      callBionixE ./kallisto-boxplot.nix
      {
        samples = ["sfrc01382"];
        genes = [
          "cdkn2a"
        ];
        width = 12;
        tx2gene = false;
      }
      (select "kallisto" allSamples);
  }
