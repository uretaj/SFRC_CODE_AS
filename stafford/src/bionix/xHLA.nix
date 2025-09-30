{bionix}: {
  name,
  fastqs,
}:
with bionix;
with pkgs; let
  py = python3Packages.python.withPackages (pkgs: with pkgs; [boto3]);

  chr6Only = exec'' (stage rec {
    name = "chr6-filter";
    buildCommand = ''
      awk -f ${script} ${ref.grch38.seq} > $out
    '';
    script = writeText "chr6.awk" ''
      $0==">chr6 6"{doPrint++;print;next}
      /^>/ && doPrint{exit 0}
      doPrint {print}
    '';
    passthru.filetype = ref.grch38.seq.filetype;
  });

  xHLA = stdenv.mkDerivation {
    pname = "xHLA";
    version = "dev";

    src = fetchFromGitHub {
      owner = "humanlongevity";
      repo = "HLA";
      rev = "34221ea2bb3e09177e237b33ba946404214cc270";
      sha256 = "0iadjag3mzk63g1mr9jrar3nxr5qhrbvffgvlbyy6zj5jjmf7vn1";
    };

    buildInputs = [py diamond];
    patches = [./xHLA.patch];

    # Patch for python 3
    postPatch = ''
      sed -i '/logger/d' bin/run.py
      sed -i 's/type = file/type = open/' bin/report.py
    '';

    buildPhase = ''
      diamond makedb --in data/hla.faa --db data/hla.dmnd
    '';

    installPhase = ''
      mkdir -p $out
      cp -r * $out
    '';
  };

  bam = with bionix;
    lib.pipe fastqs [
      (bwa.align {
        ref = chr6Only;
        flags = "-R'@RG\\tID:${name}\\tSM:${name}'";
      })
      (samtools.sort {})
    ];
  hlaBam = exec'' (stage {
    name = "hla-only";
    buildInputs = with pkgs; [samtools];
    buildCommand = ''
      ln -s ${bam} input.bam
      ln -s ${bionix.samtools.index {} bam} input.bam.bai
      samtools view -b input.bam chr6:29844528-33100696 > $out
    '';
    passthru.filetype = bam.filetype;
  });

  rEnv = rWrapper.override {
    packages = with rPackages; [data_table lpSolve IRanges];
  };
in
  stage {
    name = "xHLA";
    buildInputs = with pkgs; [samtools perl diamond rEnv];
    buildCommand = ''
      ln -s ${hlaBam} input.bam
      ln -s ${bionix.samtools.index {} hlaBam} input.bam.bai
      mkdir $out
      ${xHLA}/bin/run.py \
        --sample_id ${name} \
        --input_bam_path input.bam \
        --output_path $out
    '';
  }
