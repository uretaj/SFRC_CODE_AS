{bionix}:
with bionix;
  vcf: let
    r = pkgs.rWrapper.override {packages = with pkgs.rPackages; [xgboost];};

    model = pkgs.fetchurl {
      url = "file:///stornext/Bioinf/data/bioinf-data/Papenfuss_lab/projects/stafford/.git/annex/objects/8X/2K/SHA256E-s14864--e3ceaa7783b857d0b6e8e20ea40b861f5ef5037e2f85178024fb14203545059e/SHA256E-s14864--e3ceaa7783b857d0b6e8e20ea40b861f5ef5037e2f85178024fb14203545059e";
      sha256 = "e3ceaa7783b857d0b6e8e20ea40b861f5ef5037e2f85178024fb14203545059e";
    };

    hash = exec'' (stage {
      name = "hr-defect-hash";
      buildCommand = ''
        LC_ALL=C awk -f ${./hash.awk} ${vcf} > $out
      '';
    });

    script = pkgs.writeText "predict-hr.r" ''
      library(xgboost)
      load("${model}")
      x <- scan("${hash}")
      cat(predict(m, matrix(x, nr=1)))
      cat("\n")
    '';
  in
    stage {
      name = "hr-defect";
      buildInputs = [r];
      buildCommand = ''
        Rscript ${script} > $out
      '';
    }
