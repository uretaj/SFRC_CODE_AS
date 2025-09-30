_: super: let
  ENCFF356LFX = with super;
    exec'' (stage {
      name = "ENCFF356LFX.bed";
      src = pkgs.fetchurl {
        url = "https://www.encodeproject.org/files/ENCFF356LFX/@@download/ENCFF356LFX.bed.gz";
        sha256 = "0mmvc4fmlpj05lgdbc645v7bns57dvsvzpwsn8rzjryaj378dl59";
      };
      buildCommand = ''
        gunzip < $src > $out
      '';
    });
in
  with super; {
    gridss = with gridss; {
      collectMetrics = def collectMetrics {
        mem = 40;
        heapSize = "31g";
      };
      assemble = def assemble {
        ppn = 4;
        mem = 40;
        heapSize = "31g";
        flags = "BLACKLIST=${ENCFF356LFX}";
      };
      softClipsToSplitReads = def softClipsToSplitReads {
        mem = 40;
        heapSize = "31g";
      };
      identifyVariants = def identifyVariants {
        mem = 40;
        heapSize = "31g";
      };
      annotateVariants = def annotateVariants {
        mem = 40;
        heapSize = "31g";
      };
      callSomatic = def callSomatic {
        mem = 40;
      };
      virusbreakend.process = def virusbreakend.process {
        mem = 64;
        ppn = 4;
      };
    };
    octopus = {
      callSomatic = def octopus.callSomatic {
        mem = 90;
        walltime = "48:00:00";
      };
      call = def octopus.call {
        mem = 90;
        walltime = "48:00:00";
      };
    };
    samtools = with samtools; {
      sort = def sort {
        ppn = 10;
        mem = 15;
        flags = "-m 1G";
      };
      markdup = def markdup {mem = 30;};
    };
    manta.call = def manta.call {mem = 60;};
    bwa.align = def bwa.align {walltime = "48:00:00";};
    shatterseek = def shatterseek {mem = 32;};

    fetchers = callBionix ./milton-fetch.nix {};

    linkOutputs = attrs:
      (linkOutputs attrs).overrideAttrs (_: {
        WALLTIME = "0:10:00";
        PPN = "1";
        MEMORY = "100M";
      });
    facets.reporting.plotChrs = def facets.reporting.plotChrs {mem = 30;};
    dedumi.dedup = def dedumi.dedup {mem = 3;};
    hrscore.score = def hrscore.score {walltime = "1:00:00";};
    strobealign.align = def strobealign.align {ppn = 12;};
    bamfilter.filter = def bamfilter.filter {ppn = 2;};
  }
