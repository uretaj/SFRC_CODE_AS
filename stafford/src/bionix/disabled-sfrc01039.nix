with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        minimap2.align = def minimap2.align {walltime = "48:00:00";};
        samtools.sort = def samtools.sort {walltime = "48:00:00";};
      })
    (_: super:
      with super; {
        mutsigs.decompose = _: _:
          pkgs.writeText "empty" "this file intentionally blank";
        gridss.softClipsToSplitReads = def gridss.softClipsToSplitReads {
          mem = 60;
        };
        samtools.sort = def samtools.sort {walltime = "48:00:00";};
        dbs.db = def dbs.db {mem = 70;};
        octopus.callSomatic = def octopus.callSomatic {
          flags = attrs.flags + " -k ${ref.grch38.encode.blacklist}";
        };
        chord.estimate = def chord.estimate {mem = 30;};
      })
    (_: super:
      with super; {
        octopus.callSomatic = {targets, ...} @ attrs:
          with lib;
            octopus.callSomatic (attrs
              // optionalAttrs (any (x:
                x == "chrY" || x == "chr21" || x == "chr16")
              targets) {
                mem = 180;
              });
      })
    (_: super:
      with super; {
        octopus.callSomatic = {targets, ...} @ attrs:
          with lib;
            octopus.callSomatic (attrs
              // optionalAttrs (any (x:
                x == "chr2" || x == "chr16")
              targets) {
                very-fast = true;
                fast = false;
                max-genotypes = 1000;
                walltime = "48:00:00";
              });
      })
    (_: super:
      with super; {
        gridss.softClipsToSplitReads = a: b:
          lib.overrideDerivation (gridss.softClipsToSplitReads a b) (attrs: {
            buildCommand = ''
              export JAVA_TOOL_OPTIONS=-Djava.io.tmpdir=$TMPDIR
              ${attrs.buildCommand}
            '';
          });
      })
  ];
}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      prefix = "grimmond/s3/batch6/L2000266_S14";
      suffix = "_001";
      sha256-1 = "3965db68a63ec3d624ec24a6676d6c95cc55b961d971d23b8ee2c9c66227e9e8";
      sha256-2 = "8260c4359e6cfbe769c497f9aa4de202fe519faad63ef594180913488b0a2595";
    }
    {
      site = "2G_C";
      class = "tumours";
      prefix = "grimmond/s3/batch3/LPRJ190630_S1";
      suffix = "_001";
      sha256-1 = "24fc113a6da7cfbe7c57612e8a8784434f3d9845ebc363145a0fea71dafb37ec";
      sha256-2 = "2f8a39c95240d3393352b2c5d9fc6b5738083368df9c2861cfb0e372c8abe1ad";
    }
    {
      site = "2G_S";
      class = "tumours";
      prefix = "grimmond/s3/batch3/LPRJ190631_S2";
      suffix = "_001";
      sha256-1 = "917fa0edeafe2bab4f9b52b562c26a0be13445b86db661a7bc039780788fc82a";
      sha256-2 = "ec7b7a724d4cea329d780f01a43c12fff144fb0459da633867012e779a1c1ffb";
    }
    {
      site = "S1";
      class = "tumours";
      prefix = "fastqs/AGRF_CAGRF16900_H3YJHDMXX/SFRC_5_H3YJHDMXX_ATTCAGAA_L001";
      suffix = "";
      sha256-2 = "3c603dc879d1f562816cc2ca79cac1069910b48be5c908fbbb52e917a6032861";
      sha256-1 = "4d4b39fc7a83a02b4dced82c1b7bd100407978067bf10ded09717a192fd733d8";
    }
    {
      site = "S1";
      class = "tumours";
      prefix = "fastqs/AGRF_CAGRF16900_H3YJHDMXX/SFRC_5_H3YJHDMXX_ATTCAGAA_L002";
      suffix = "";
      sha256-2 = "c95f6fca43266b18bfd2489738b57fe5df09d75f8aa595fe86c2ddcb2993dee8";
      sha256-1 = "75c433ad92fe9878709e20a2da637e8c46719e812b1914d3720cab14fc8fac77";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    redcap = {
      other_id = "AOCS 134018";
      date_of_death = "09/2012";
      date_consented = "2017-03-10";
      tumour_details = "ovarian Carcinosarcoma, deceased 2/9/2012";
      block_recall_history = "RC meeting 28.05.2020\nDiscussed WGS (see summary)";
    };
    inherit samples;
    name = "SFRC01039";
  }
