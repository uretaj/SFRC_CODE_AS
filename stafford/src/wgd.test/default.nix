{bionix ? import <bionix> {}}:
with bionix;
  input: let
    wgd = pkgs.stdenvNoCC.mkDerivation {
      name = "wgd-test-src";
      patches = [./wgd.test.patch];
      src = pkgs.fetchFromGitHub {
        owner = "PapenfussLab";
        repo = "wgd.test";
        rev = "d177640";
        sha256 = "sha256-6+oDQnMOb3lP7yWC8QjvXi9Pfq5CnNKhhgD3BF5QNWM=";
      };
      installPhase = ''
        cp -r . $out
      '';
    };

    terms = stage {
      name = "unzip-terms";
      nativeBuildInputs = [pkgs.unzip];
      buildCommand = ''
        unzip ${wgd}/terms.zip
        cp -r terms $out
      '';
    };

    centromeres = stage {
      name = "centromeres";
      src = pkgs.fetchurl {
        url = "https://hgdownload.soe.ucsc.edu/goldenPath/hg38/database/centromeres.txt.gz";
        sha256 = "sha256-ATyNFlQCkI98nm3nhgU0+tLIWsdendIScWaiOwbKw70=";
      };
      buildCommand = ''
        gunzip < $src | awk '!done[$2]{done[$2]++;print substr($2,4,length($2)-3) "\t" $3/1000000}' > $out
      '';
    };

    gdresult = stage {
      inherit input;
      name = "genome-doubling";
      buildInputs = [pkgs.R];
      buildCommand = ''
        if [ -s $input ] ; then
          Rscript $script
        else
          echo FALSE > outputdf.txt
        fi
        cp outputdf.txt $out
      '';
      script = pkgs.writeText "genome-doubling.r" ''
        source("${wgd}/GD.R")
        main(Sys.getenv("input"), "${centromeres}", terms_path = "${terms}")
      '';
    };
  in
    gdresult
