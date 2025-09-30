{
  bionix ? import <bionix> {},
  name,
  samples,
  samples' ? samples,
  fetch ? bionix.fetchers.fetch,
  capture ? null,
  predictNeoantigens ? true,
  redcap ? null,
  disableManta ? false,
  disableGridss ? false,
  filterFQZeros ? false,
  disableShatterSeek ? false,
  outputAlignments ? false,
  germline ? null,
}: let
  outputAlignments' = outputAlignments;
in
  {
    outputAlignments ? outputAlignments',
  }:
    with bionix;
    with lib;
    with types;
    with strobealign;
    with samtools;
    with snpeff;
    with octopus; let
      samples = filter (x: !(x.disable or false)) samples';

      noAlt = let
        script = pkgs.writeText "noAlt.awk" ''
          /^>/{flag=0}
          /^>chr/{flag++}
          flag{print}
        '';
      in
        exec' (
          input:
            stage {
              name = "noAlt";
              buildInput = with pkgs; [gawk];
              buildCommand = "LANG=C awk -f ${script} ${input} > $out";
              passthru.filetype = input.filetype;
            }
        );
      ref = noAlt bionix.ref.grch38.seq;

      preprocess = x: let
        alignhg = align {
          inherit ref;
          RG={ID=x.site;SM=x.site;};
        };
        alignmm = align {
          ref = noAlt bionix.ref.grcm38.seq;
          RG={ID=x.site;SM=x.site;};
        };
      in
        x
        // pipe x [
          fetch
          (
            x:
              if filterFQZeros
              then {inherit (fq-filter x) input1 input2;}
              else x
          )
          (
            if x.pdx or false
            then
              y:
                xenomapper.allocate {} {
                  primary = sort {nameSort = true;} (alignhg y);
                  secondary = sort {nameSort = true;} (alignmm y);
                }
            else alignhg
          )
          (sort {})
        ];

      mergeSite = y:
        mapAttrsToList
        (
          _: x:
            if length x == 1
            then head x
            else (head x) // samtools.merge {} x
        )
        (groupBy (x: x.site) y);
      bamsUnmerged = map preprocess samples;
      bams = mergeSite bamsUnmerged;

      alignedGermline = pipe germline [
        (align {
          inherit ref;
          RG = {
            ID = germline.input1.id;
            SM = germline.input1.id;
          };
        })
        (sort {})
      ];

      ## Octopus
      variants = pipe bams [
        (xs:
          if germline != null
          then
            callSomatic {
              flags = "--annotations AD AF";
              targets = capture;
            } {
              normal = alignedGermline;
              tumours = xs;
            }
          else
            call {
              flags = "-C cancer --annotations AD AF";
              targets = capture;
            }
            xs)
        (annotate {db = dbs.snpeff;})
      ];

      mosdepth =
        map
        (
          b:
            bionix.mosdepth.depth
            (optionalAttrs (capture != null) {flags = "-b ${capture}";})
            b
            // {
              inherit (b) class;
              name = b.site;
              what =
                if capture == null
                then "global"
                else "region";
            }
        )
        bams;

      concatAttrsMap = f: x: lib.foldl' (a: b: a // b) {} (map f x);
    in
      linkOutputs (
        {
          "octopus.vcf" = variants;
          mosdepth = listToAttrs (map (x: nameValuePair x.name x) mosdepth);
        }
        // optionalAttrs outputAlignments {
          alignments =
            concatAttrsMap
            (
              bam: {
                "${bam.site}.bam" = bam;
                "${bam.site}.bam.bai" = index {} bam;
              }
            )
            bams;
        }
      )
