let
  bionix = (import <bionix> {}).extend (self: super:
    with self; {
      qsub = def super.qsub {tmpDir = "/stornext/HPCScratch/bedo.j";};
      kallisto = with super.kallisto; {
        index = defQsub {mem = 10;} index {};
        quant =
          defQsub {
            ppn = 10;
            mem = 10;
          }
          quant {};
      };
    });
  nixpkgs = import <nixpkgs> {};
in
  with nixpkgs;
  with lib;
  with bionix; let
    samples = import ../../lib/fastqs/rnaseq/AGRF_CAGRF17900_HG3VGDMXX/meta.nix;
    root = "file:///stornext/Bioinf/data/bioinf-data/Papenfuss_lab/projects/stafford/lib/fastqs/rnaseq/AGRF_CAGRF17900_HG3VGDMXX/";

    fetchFastQGZ = file: hash:
      with types;
        tagFiletype (filetype.gz (filetype.fq {})) (fetchurl {
          url = root + file;
          sha512 = hash;
        });
    procSample = {
      fastq,
      sha512,
      ...
    }:
      kallisto.quant {
        bootstrapSamples = 100;
        single = true;
        fragmentLength = 200;
        fragmentSD = 50;
        ref = ref.grch38.ensembl.cdna;
      } [(fetchFastQGZ fastq sha512)];

    organise = s @ {
      sample,
      type,
      stage,
      ...
    }: "ln -s ${procSample s} $out/${sample}-${type}-${toString stage}";
  in
    stdenvNoCC.mkDerivation {
      name = "rnaseq-stafford-carcinosarc";
      buildCommand = ''
        mkdir $out
        ${concatMapStringsSep "\n" organise samples}
      '';
    }
