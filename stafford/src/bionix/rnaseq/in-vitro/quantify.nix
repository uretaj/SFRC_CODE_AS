{
  bionix ?
    import ../../../nix/bionix {
      nixpkgs = import ../../../nix/nixpkgs {};
      overlays = [
        ../../milton-slurm-exec.nix
      ];
    },
}:
with bionix;
with lib; let
  samples = import ./meta.nix;
  fetchFromWEHI = {
    path,
    sha512,
  }:
    pkgs.fetchurl {
      url = "file:///stornext/Bioinf/data/bioinf-data/Papenfuss_lab/projects/stafford/lib/fastqs/${path}";
      inherit sha512;
      passthru.filetype = types.filetype.fq {};
    };
  fetchSample = {fastqs, ...}:
    map fetchFromWEHI fastqs;
  procSample = flip pipe [
    fetchSample
    (x:
      kallisto.quant
      ({
          bootstrapSamples = 100;
          ref = ref.grcm38.ensembl.cdna;
        }
        // (
          if builtins.length x > 1
          then {single = false;}
          else {
            single = true;
            fragmentLength = 200;
            fragmentSD = 50;
          }
        ))
      x)
  ];
  organise = {sampleName, ...} @ s: "ln -s ${procSample s} \$out/${sampleName}";
in
  stage {
    name = "rnaseq-invitro";
    buildCommand = ''
      mkdir $out
      ${lib.concatMapStringsSep "\n" organise samples}
    '';
  }
