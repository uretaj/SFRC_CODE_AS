self: super:
with super; {
  aa = {
    app = pkgs.callPackage ./. {};

    ref = pkgs.fetchurl {
      url = "https://datasets.genepattern.org/data/module_support_files/AmpliconArchitect/GRCh38.tar.gz";
      sha256 = "sha256-99sC1a2ceE9M/zjOIHmoopfoA+f1dAyIrSJM3ZtWNxE=";
    };

    call = exec ({
      seeds,
      license,
      flags ? "",
      downsample ? 0,
      samplename,
      nthreads ? 1,
      ...
    }: input: let
      indexedBam = linkOutputs {
        "input.bam" = input;
        "input.bam.bai" = samtools.index {} input;
      };
    in
      stage {
        name = "aa-call";
        MOSEKLM_LICENSE_FILE = license;
        buildInputs = [self.aa.app];
        buildCommand = ''
          mkdir $out
          export AA_DATA_REPO=$TMPDIR
          tar -xzf ${self.aa.ref}
          export AA_SRC="${self.aa.app}/bin"
          export AC_SRC="${self.aa.app}/bin"
          AmpliconSuite-pipeline.py \
            --bam ${indexedBam}/input.bam \
            --cnv_bed ${seeds} \
            --ref GRCh38 \
            --out $out/out \
            --downsample ${toString downsample} \
	    --sample_name ${samplename} \
	    --nthreads ${toString nthreads} \
	    --no_QC \
            --aa_python_interpreter ""\ 
            $flags	    
	    AmpliconArchitect.py \
            --bam ${indexedBam}/input.bam \
            --bed $out/out/"${samplename}_AA_CNV_SEEDS.bed" \
            --ref GRCh38 \
            --out $out/out \
            --downsample ${toString downsample} \
            $flags
        '';
      });

    seedFacets = exec (_: input:
      stage {
        name = "aa-facets-seed";
        sql = ''
          .mode tabs
          select 'chr' ||
            case
              when chr = '23' then 'X'
              when chr = '24' then 'Y'
              else chr
            end, start, end, tcn from regions where tcn >=5;
        '';
        mergeScript = pkgs.writeText "merge.awk" ''
          function flush() {
            print chr, start, end, tcn            
          }
          BEGIN{
            OFS = FS = "\t";
          }
          {
            
            chr = $1
            start = $2
            end = $3
	    tcn = $4
	    flush()
          }
          END{}
        '';
        buildInputs = [pkgs.sqlite];
        buildCommand = ''
          printf "%s" "$sql" | sqlite3 ${input} | awk -f $mergeScript > $out
        '';
      });
  };
}
