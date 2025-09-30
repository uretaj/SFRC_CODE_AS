with import ../milton-slurm.nix { };

with bionix;
with lib;
with types;
with octopus;
with samtools;
with xenomapper;

let
  meta = groupBy (x: x.PDX) (map (x:
    x // {
      id = substring 0 (stringLength x.id - 1) x.id;
    } // optionalAttrs (hasSuffix "B" x.PDX) {
      PDX = substring 0 (stringLength x.PDX - 1) x.PDX;
    }) (import ./meta.nix));

  fetch = callBionix ./fetch.nix { };

  noAlt = let
    script = pkgs.writeText "noAlt.awk" ''
      /^>/{flag=0}
      /^>chr/{flag++}
      flag
    '';
  in exec' (input:
    stage {
      name = "noAlt";
      buildInput = with pkgs; [ gawk ];
      buildCommand = "LANG=C awk -f ${script} ${input} > $out";
      passthru.filetype = input.filetype;
    });
  grch38 = noAlt ref.grch38.seq;
  grcm38 = noAlt ref.grcm38.seq;

  algn = ref: input:
    minimap2.align {
      inherit ref;
      flags = "-R'@RG\\tID:${input.type}\\tSM:${input.type}'";
      preset = "sr";
    } { inherit (input) input1 input2; };

  # Octopus sharding
  callChr = c:
    call {
      flags = "-C cancer";
      max-genotypes = 1000;
      targets = [ c ];
    };
  chrs = genList (i:
    if i == 22 then "chrX" else if i == 23 then "chrY" else "chr${toString (i+1)}")
    24;
  callOverChr = exec (_: x: mergeChrs (map (c: callChr c x) chrs));
  mergeChrs = cs:
    stage {
      name = "merge-vcf";
      buildCommand = ''
        cat ${head cs} > $out
      '' + concatMapStrings (c: ''
        LC_LANG=C grep -v '^#' ${c} >> $out
      '') (tail cs);
      passthru.filetype = (head cs).filetype;
    };

  pipeline = n: x: pipe x [
    (map (flip pipe [
      (x: x // fetch x.id)
      (i: {
        primary = algn grch38 i;
        secondary = algn grcm38 i;
      })
      (allocate { })
      (sort { })
    ]))
    (callOverChr {})
    (snpeff.annotate { db = ref.grch38.snpeff.db; })
    (snpeff.dbnsfp { dbnsfp = ref.grch38.snpeff.dbnsfp; })
  ];

in linkOutputs (mapAttrs pipeline (filterAttrs (n: _: n != "Mayo") meta))

