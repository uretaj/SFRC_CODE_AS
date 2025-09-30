{bionix}:
with bionix;
with pkgs;
with lib; let
  mutSigExtractor = rPackages.buildRPackage rec {
    name = "mutSigExtractor-${version}";
    version = "git";
    src = fetchFromGitHub {
      owner = "UMCUGenetics";
      repo = "mutSigExtractor";
      rev = "83414acf91eb2c99a475dffe60e4ce80a2bfc2b0";
      sha256 = "DZcZZUG4gV8C01TKs15rt1o2qKoysZYKwbfnDP03TFA=";
    };
    propagatedBuildInputs = with rPackages; [BSgenome GenomeInfoDb IRanges];
  };

  chordPkg = rPackages.buildRPackage rec {
    name = "CHORD-${version}";
    version = "git";
    src = fetchFromGitHub {
      owner = "UMCUGenetics";
      repo = "CHORD";
      rev = "46e920fbeb4cf68fb87ec20c4690e3a88a33a3b7";
      sha256 = "lusQY4qxdh8nfov6DtvaL4hDA89cxdIhqm95B7Eyv/8=";
    };
    propagatedBuildInputs = with rPackages; [mutSigExtractor randomForest];
  };

  rGenome = with rPackages; BSgenome_Hsapiens_UCSC_hg38;

  r = rWrapper.override {
    packages = with rPackages; [chordPkg rGenome dplyr VariantAnnotation];
  };
  inherit (pkgs.callPackage ./rConverters.nix {}) rToOrg;

  chord = {
    snv,
    indel ? null,
    sv ? null,
  }: let
    script = writeText "chord.r" ''
      library(BSgenome.Hsapiens.UCSC.hg38)
      library(dplyr)
      library(CHORD)
      ## Filter SNVs and indels by Somatic Empirical Variant Score (Strelka)
      somaticPhredCrit <- 10
      snvEVS <- VariantAnnotation::readInfo( file = '${snv}', x = "SomaticEVS")
      snvffiltdf <- mutSigExtractor::variantsFromVcf(
        '${snv}', ref.genome=BSgenome.Hsapiens.UCSC.hg38 )[
        which( snvEVS > somaticPhredCrit ), ]
      if ( !is.null( indel ) ) {
        indelEVS <- VariantAnnotation::readInfo( file = '${indel}', x = "SomaticEVS")
        indelfiltdf <- mutSigExtractor::variantsFromVcf(
          '${indel}', ref.genome=BSgenome.Hsapiens.UCSC.hg38 )[
          which( indelEVS > somaticPhredCrit ), ]
      }

      contexts <- extractSigsChord(
        df.snv = snvffiltdf
        ${optionalString (indel != null) ",df.indel = indelfiltdf"}
        ${
        optionalString (sv != null) ''
          ,vcf.sv = '${sv.vcf}'
          ,sv.caller = '${sv.caller}'
        ''
      }
        , ref.genome=BSgenome.Hsapiens.UCSC.hg38
      )
      chord_output <- chordPredict(contexts, do.bootstrap=T, verbose=F)
      ## Output relevant probabilities but not CI
      if ( all( chord_output$hr_status == "HR_proficient") ){
          chord_output <- chord_output[, c( "hr_status", "p_hrd") ]
      } else {
        chord_output <- dplyr::select(
          chord_output, c( hr_status, remarks_hr_status, p_hrd,
                           hrd_type, remarks_hrd_type, p_BRCA1, p_BRCA2 ) ) %>%
          select_if( ~ !all( is.na(.) | . == "" | . == 0) )
      }
      write.table(chord_output, file='chord_pred.txt',
        quote=F, sep = ',', row.names = FALSE )
    '';
  in
    stage {
      name = "chord";
      buildInputs = [r];
      buildCommand = ''
        Rscript ${script}
        awk -f ${rToOrg} chord_pred.txt > $out
      '';
    };
in
  chord
