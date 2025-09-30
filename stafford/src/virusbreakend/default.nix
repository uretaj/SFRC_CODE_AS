self: super:
with super; {
  gridss.virusbreakend = {
    apps = {
      kraken = pkgs.callPackage ./kraken.nix {};
      trf = pkgs.callPackage ./trf.nix {};
      repeatmasker = pkgs.callPackage ./repeatmasker.nix {inherit (self.gridss.virusbreakend.apps) trf;};
      gridss-scripts = pkgs.stdenv.mkDerivation {
        name = "gridss-scripts";
        src = self.gridss.virusbreakend.apps.gridsstools.src;
        dontBuild = true;
        installPhase = ''
          runHook preInstall
          mkdir $out
          cp -r scripts $out/bin
          chmod 755 $out/bin/gridss
          runHook postInstall
        '';
        propagatedBuildInputs = [pkgs.getopt pkgs.which];
      };
      gridsstools = pkgs.callPackage ./gridsstools.nix {};
    };

    db = pkgs.stdenv.mkDerivation {
      name = "fetch-gridss-virus-db";
      src = pkgs.fetchurl {
        url = "https://virusbreakend.s3.us-east-2.amazonaws.com/virusbreakenddb_20210401.tar.gz";
        sha256 = "sha256-aLhKH1rlIxnfTG7N5FBbMsgw9owgpzySlxC+w8ql2qE=";
      };

      installPhase = ''
        mkdir $out
        cp -r * $out
      '';
    };

    process = exec ({db ? self.gridss.virusbreakend.db}: input: let
      ref = types.matchFiletype "virusbreakend" {bam = {ref, ...}: ref;} input;
    in
      stage {
        name = "virusbreakend";
        buildInputs = with self.gridss.virusbreakend.apps; [
          gridss-scripts
          gridsstools
          kraken
          repeatmasker
          pkgs.samtools
          pkgs.bcftools
          pkgs.R
          pkgs.bwa
          pkgs.jre
          pkgs.bc
        ];
        buildCommand = ''
          ln -s ${ref} ref.fa
          ln -s ${input} input.bam
          export HOME=$TMPDIR
          mkdir $out
          virusbreakend \
          	--kraken2db ${db} \
          	--output $out/calls.vcf \
          	--reference ref.fa \
          	--jar ${gridss.jar} \
          	--threads $NIX_BUILD_CORES \
          	--workingdir $TMPDIR \
          	input.bam
          mv $out/calls.vcf.summary.tsv $out/summary.tsv
        '';
      });
  };
}
