{ bionix }:

with bionix;

vcf:

let
  src=  pkgs.fetchFromGitHub {
    owner = "papenfusslab";
    repo = "gridss";
    rev = "68a06659dee28dae7979e5584d6e2c275f270faf";
    sha256 = "Y8nAj7zW1B5qbWAA1sywOg5OI1id7H4MmBf1MtO6zpQ=";
  };

  patched = pkgs.applyPatches {
    inherit src;
    patches = [ ./hg38.patch ];
  }  ;

  r = pkgs.rWrapper.override {
    packages = with pkgs.rPackages; [
      stringr
      dplyr
      ggplot2
      VariantAnnotation
      GenomicRanges
      GenomicFeatures
      rtracklayer
      TxDb_Hsapiens_UCSC_hg38_knownGene
      org_Hs_eg_db
      StructuralVariantAnnotation
    ];
  };

in stage {
  name = "gridss-fusions";
  buildInputs = [ r ];
  outputs = [ "out" "tsv" ];
  buildCommand = ''
    cp ${patched}/example/somatic-fusion-gene-candidates.R .
    ln -s ${vcf} normal-tumour.sv.vcf
    Rscript somatic-fusion-gene-candidates.R
    cp out.tsv $tsv
    echo "|Gene a|Gene b|" > $out
    echo "|-" >> $out
    cat out.tsv | sed 's/^/|/' | tr -d '"' | tr '\t' '|' >> $out
  '';
}
