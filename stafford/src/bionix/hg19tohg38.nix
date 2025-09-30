{bionix}:
with bionix; let
  chain = pkgs.fetchurl {
    url = "http://hgdownload.soe.ucsc.edu/goldenpath/hg19/liftOver/hg19ToHg38.over.chain.gz";
    sha256 = "07as285l8gdm758mkyyakcqfqflrxzl2js88ff6agdff03jrh1aw";
  };

  crossmap = pkgs.callPackage ./crossmap.nix {};
in
  input:
    stage {
      name = "hg19tohg38.bed";
      buildInputs = [crossmap];
      buildCommand = ''
        CrossMap.py bed ${chain} ${input} new.bed
        sed '/_/d' new.bed > $out
      '';
      passthru.unlifted = input;
    }
