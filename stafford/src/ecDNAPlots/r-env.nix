{
  rPackages,
  rWrapper,
  fetchFromGitHub,
}: let
  renv = rWrapper.override {
    packages = with rPackages; [
      (circlize.overrideAttrs (_: {
        name = "circlize-git";
        src = fetchFromGitHub {
          owner = "jokergoo";
          repo = "circlize";
          rev = "c0c7b8adeb7f2b69808ff6e0eb3c9cecb3dfbbea";
          sha256 = "sha256-TrZHDqxLye1lJXtBMAZ0sX57VNGE4xzrKs4ReW57Kyk=";
        };
      }))
      StructuralVariantAnnotation
      stringr
      valr
      dplyr
      tibble
      RSQLite
      shiny
    ];
  };
in
  renv
