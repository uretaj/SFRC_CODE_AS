{
  rPackages,
  rWrapper,
  fetchFromGitHub,
}: let
  ShatterSeek = rPackages.buildRPackage {
    name = "ShatterSeek";
    src = fetchFromGitHub {
      owner = "parklab";
      repo = "ShatterSeek";
      rev = "a19c66c537d588e87d256ab3a819dc75d9e235fd";
      sha256 = "tg0UZqlio4J1wDQZcIQe2iddxOHTnLr/N0IQbvgKz/M=";
    };
    propagatedBuildInputs = with rPackages; [
      BiocGenerics
      graph
      S4Vectors
      GenomicRanges
      IRanges
      MASS
      ggplot2
      gridExtra
      foreach
    ];
  };

  renv = rWrapper.override {
    packages = with rPackages; [
      ShatterSeek
      StructuralVariantAnnotation
      cowplot
      staplr
    ];
  };
in
  renv
