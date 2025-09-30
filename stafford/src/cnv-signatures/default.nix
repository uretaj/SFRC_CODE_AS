{bionix}:
with bionix;
with pkgs;
with lib;
  makeExtensible (self:
    with self; {
      tools = import ./sigprofiler-mach.nix {inherit pkgs;};

      getCNCF = exec ({name, ...}: facets:
        stage {
          inherit facets;
          name = "getCNCF.tsv";
          sample = name;
          buildInputs = [R];
          buildCommand = ''
            Rscript $script
            cp out $out
          '';
          script = writeText "getCNCF.R" ''
            load(Sys.getenv("facets"))
            write.table(data.frame(sample = Sys.getenv("sample"), z$cncf), file = "out", quote = F, sep = "\t", row.names = F)
          '';
        });

      mergeCNCFs = exec (_: cncfs:
        stage {
          name = "mergeCNCFs";
          buildCommand = ''
            sed 1q ${head cncfs} > $out
            ${concatMapStringsSep "\n" (x: "sed 1d ${x}  | tr ':' '\t' >> $out") cncfs}
          '';
        });

      extract = exec ({maxsigs ? 11, ...}: matrix:
        stage {
          name = "extract";
          buildInputs = [tools.Extractor];
          buildCommand = ''
            python $script
            cp -r extracted $out
          '';
          script = writeText "extract.py" ''
            import os
            from SigProfilerExtractor import sigpro as sig
            if __name__ == "__main__":
              sig.sigProfilerExtractor("matrix",
                "extracted",
                "${matrix}",
                opportunity_genome="GRCh38",
                reference_genome="GRCh38",
                maximum_signatures=${toString maxsigs},
                cpu=int(os.getenv('NIX_BUILD_CORES')))
          '';
          passthru.multicore = true;
        });

      generateMatrix = exec (_: profiles:
        stage {
          name = "generateMatrix";
          buildInputs = [tools.MatrixGenerator];
          buildCommand = ''
            python $script
            cp out/* $out
          '';
          script = writeText "generate-matrix.py" ''
            import os as os
            from SigProfilerMatrixGenerator.scripts import CNVMatrixGenerator as scna
            scna.generateCNVMatrix("FACETS", "${profiles}", "", os.getcwd() + "/out")
          '';
        });
    })
