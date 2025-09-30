attrs @ {
  bionix ? import <bionix> {},
  name,
  samples,
  samples' ? with bionix.lib; filter (x: !(x.disable or false)) samples,
  fetch ? bionix.fetchers.fetch,
  capture ? null,
  redcap ? null,
  predictNeoantigens ? redcap.neoantigen_analysis_yes_no or "" == "Yes",
  filterFQZeros ? false,
  enableQC ? false,
  rgSuffix ? "",
  enableHatchet ? false,
  ...
}: {
  quipAlignments ? capture == null || aligner != "strobealign",
  outputAlignments ? quipAlignments,
  outputMosdepth ? !outputAlignments,
  shardOctopus ? attrs.shardOctopus or true,
  disableShatterSeek ? attrs.disableShatterSeek or false,
  disableManta ? attrs.disableManta or false,
  disableGridss ? attrs.disableGridss or false,
  capture ? attrs.capture or null,
  fullEvidence ? false,
  somaticBlood ? false,
  enableQC ? attrs.enableQC or false,
  rgSuffix ? attrs.rgSuffix or "",
  enableHatchet ? attrs.enableHatchet or false,
  hlaTarget ? attrs.hlaTarget or false,
  typeHla ? attrs.typeHla or false,
  hatchetConfig ? {},
  aligner ? attrs.aligner or "strobealign",
  enableSummary ? attrs.enableSummary or true,
  annotateOctopus ? attrs.annotateOctopus or false,
  umi ? attrs.umi or capture.name or "" == "TwistV2-HR-combined.bed",
}:
with bionix;
with lib;
with types;
with minimap2;
with samtools;
with snpeff;
with octopus; let
  samples = let
    grouped = groupBy (x: x.class) samples';
    normalSites = foldr (x: y: y // {${x.site} = true;}) {} grouped.normals;
  in
    assert (ns:
      foldr (n: y:
        if n.site == (head ns).site
        then y
        else false)
      true
      ns)
    grouped.normals;
    assert (foldr (x @ {
        site,
        class,
        ...
      }: y: (normalSites ? ${site} -> class == "normals") && y)
      true
      samples'); samples';
  germlineOnly = !(groupBy (x: x.class) samples) ? tumours;

  inherit (refdbs) ref;

  preprocess = x: let
    align = ref:
      if aligner == "strobealign"
      then
        strobealign.align {
          inherit ref;
          RG = {
            ID = x.site + rgSuffix;
            SM = x.site;
          };
        }
      else if aligner == "minimap2"
      then
        minimap2.align {
          inherit ref;
          preset = "sr";
          flags = "-R'@RG\\tID:${x.site + rgSuffix}\\tSM:${x.site}'";
        }
      else abort "unknown aligner";
    alignhg = align ref;
    alignmm = align refdbs.refMouse;
  in
    x
    // pipe x [
      fetch
      (x:
        if filterFQZeros
        then {inherit (fq-filter x) input1 input2;}
        else x)
      (z:
        if x.umi or umi
        then let
          y = dedumi.dedup {} z;
        in {
          input1 = y.out;
          input2 = y.out2;
        }
        else z)
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
    ];

  # Explicitly specify fields to get clinvar annotations
  mergeSite = y:
    mapAttrsToList
    (_: x:
      if length x == 1
      then head x
      else (head x) // samtools.merge {} x)
    (groupBy (x: x.site + "-" + x.class) y);
  qps = map (flip pipe [
    preprocess
    (x:
      x
      // (
        if quipAlignments
        then quip.quip {} x
        else {}
      ))
  ]) (filter (x: x.class != "rna") samples);
  bamsUnmerged = map (x:
    x
    // pipe x [
      (
        if quipAlignments
        then quip.unquip {}
        else x: x
      )
      (sort {})
    ])
  qps;
  bams = mergeSite bamsUnmerged;

  # A version of the BAMs restricted to capture region only (if captures)
  captureBams =
    if capture != null
    then map (x: x // samtools.view {flags = "--target-file ${capture}";} x) bams
    else bams;

  fusions =
    mapAttrs
    (_:
      callBionixE ./pizzly.nix {inherit (bionix.ref.grch38.ensembl) gtf cdna;})
    rna;
  rna = let
    rnaSamples = filter (x: x.class == "rna") samples;
    sites = groupBy (x: x.site) rnaSamples;

    # We relink the fetched files here as a hack to avoid bundling the fastqs
    # with the kallisto output. This happens because stripping only removes
    # bionix nix paths, and we didn't write our fetch function to have
    # bionix in the name :(.
    hack = input:
      stage {
        name = "relink";
        buildCommand = "ln -s ${input} $out";
        passthru.filetype = input.filetype;
        stripStorePaths = false;
      };
  in
    mapAttrs
    (_: x:
      kallisto.quant
      {
        ref = bionix.ref.grch38.ensembl.cdna;
        bootstrapSamples = 100;
        fusion = true;
      }
      (concatMap (flip pipe [fetch attrValues (map hack)]) x))
    sites;

  qc =
    mapAttrs
    (_: vs:
      listToAttrs (zipListsWith nameValuePair (genList toString (length vs)) vs))
    (groupBy (x: x.site)
      (map (x: x // pipe x [fetch (fastp.check {})]) samples));

  ## Octopus
  callChr = c: let
    allExons = ensembl.query {
      sql = ''
        select distinct concat('chr', name, ':', seq_region_start - 100, '-', seq_region_end + 100)
        from exon as e
        inner join seq_region as s on
          e.seq_region_id = s.seq_region_id
        where
          coord_system_id = 4 and -- chromosomes
          name not like 'CHR_%'; -- no alts
      '';
      sha256 = "sha256-2JdDSaXXl7/pAVgHslXo5E4v2Hu1q3TYNgp9RAi5OMY=";
    };
    exons =
      exec
      (_: _:
        stage {
          name = "subset-exons";
          buildCommand = ''
            grep '^${c}:' ${allExons} > $out
          '';
        })
      {walltime = "0:01:00";}
      {};
  in
    x:
      ((
          if germlineOnly
          then (x: {normal, ...}: call x [normal])
          else
            (x: y:
              if y ? tumours
              then callSomatic x y
              else call (x // {flags = "-C cancer " + x.flags;}) [y.normal])
        ) ({
            flags =
              "--annotations AD AF ${optionalString (capture != null) "--bad-region-tolerance HIGH"}"
              + optionalString fullEvidence " --bamout-type FULL"
              + optionalString umi " --allow-octopus-duplicates no";
          }
          // optionalAttrs (c != null) {
            targets =
              if capture == null
              then [c]
              else exons;
          })
        x)
      // {chr = c;};
  mergeChrs = cs:
    stage {
      name = "merge-vcf";
      buildCommand = ''
        awk '/^#CHROM/{exit 0}1' ${head cs} > $out
        ${concatMapStringsSep "\n" (x: "sed -n '/^##contig/{p;q}' ${x} >> $out") (tail cs)}
        sed -n '/^#CHROM/{p;q}' ${head cs} >> $out
        cat ${concatStringsSep " " cs} | grep -v '^#' | sort -k1,1V -k2,2n --parallel=$NIX_BUILD_CORES >> $out
      '';
      passthru.filetype = (head cs).filetype;
      passthru.multicore = true;
      passthru.inputs = cs;
    };
  chrs =
    genList
    (i:
      if i == 0
      then "chrX"
      else if i == 23
      then "chrY"
      else if i == 24
      then "chrM"
      else "chr${toString i}")
    (
      if capture == null
      then 25
      else 24
    );
  callOverChr = x @ {normal, ...}:
    (
      if shardOctopus
      then exec'' (mergeChrs (map (c: callChr c x) chrs))
      else callChr null x
    )
    // {refSite = normal.site;};

  regroup = y:
    (z @ {normals, ...}: {
      normal =
        if length normals == 1
        then head normals
        else samtools.merge {} normals;
      inherit (z) tumours;
    }) (groupBy (x: x.class) y);

  variants = pipe bams [
    regroup
    callOverChr
    (x: (annotate {db = dbs.snpeff;} x) // {unannot = x;})
  ];

  somaticBloodVariants = pipe bams [
    regroup
    (x: {inherit (x) normal;})
    callOverChr
    (x: (annotate {db = dbs.snpeff;} x) // {unannot = x;})
  ];

  withPairs = f: {
    normal,
    tumours,
  }:
    listToAttrs (map
      (tumour: {
        name = tumour.site;
        value = f {inherit normal tumour;};
      })
      tumours);

  ## MSI status
  msi = pipe bams [
    regroup
    (withPairs (msisensor.msi {}))
  ];

  ## Hatchet
  hatchet = pipe bams [
    regroup
    (bionix.hatchet.call ({snps = bionix.ref.grch38.dbsnp;} // hatchetConfig))
  ];

  ## Strelka
  ## NB: complicated because have to compute each tumour separately
  strelkaVars = pipe bams [
    regroup
    (withPairs (input:
      mapAttrs
      (_:
        flip pipe [
          (annotate {inherit (bionix.ref.grch38.snpeff) db;})
        ])
      {
        inherit
          (strelka.callSomatic
            (optionalAttrs (capture != null) {
              flags = "--callRegions ${capture}";
            })
            input)
          snvs
          indels
          ;
      }))
  ];

  viralInsertions =
    optionalAttrs (capture == null || capture.name or "" == "TwistV2-HR-combined.bed")
    (listToAttrs (map (tumour: {
        name = tumour.site;
        value = gridss.virusbreakend.process {} tumour;
      })
      (regroup bams).tumours));

  svs = optionalAttrs (capture == null) (optionalAttrs (!disableGridss)
    {
      gridss = rec {
        calls = gridss.call bamsUnmerged;
        somatic =
          gridss.callSomatic
          {normalName = (head (filter (x: x.class == "normals") bamsUnmerged)).site;}
          calls;
        circos = bionix.circos {} somatic;
        linear = bionix.linear-sv {} somatic;
        ecDNAPlots = bionix.ecDNAPlots {} {
          gridss = somatic;
          facets = linkOutputs facetsProc;
        };
        fusions = gridss.callFusions {} somatic;
        circles = with ecdna; pipe somatic [(gridss2facts {}) (callRegions {})];
      };
    }
    // optionalAttrs (!disableManta) {
      manta = let
        getSomatic = exec ({minSVscore ? 70}: input:
          stage {
            name = "mantas-extract-somatic";
            buildCommand = ''
              gunzip < ${input}/variants/somaticSV.vcf.gz | awk '/^#/||$7=="PASS"' |
              awk -v minScore=${
                toString minSVscore
              } '/^#/ || match($8, /SOMATICSCORE=[0-9]*/) &&
                substr($8, RSTART+13, RLENGTH-13)*1 > minScore' > $out
              ## length("SOMATICSCORE=") is 13; *1 converts to numeric
            '';
          });
        somaticOnly = exec (_: input:
          stage {
            name = "somatic-only";
            buildCommand = ''
              awk '/^#/||(/SOMATIC/&&$7=="PASS")' ${input} > $out
            '';
          });
      in
        pipe bams [
          regroup
          (withPairs (input @ {
            normal,
            tumour,
          }: rec {
            strelka =
              bionix.strelka.callSomatic
              (optionalAttrs (capture != null) {
                flags = "--callRegions ${capture}";
              })
              input;
            calls = manta.call {} {
              normals = [normal];
              inherit tumour;
            };
            circos = bionix.circos {} (getSomatic {} calls);
            linear =
              bionix.linear-sv {} (getSomatic {} calls);
            chord = bionix.chord.estimate {} {
              snv = somaticOnly {} strelka.snvs;
              indel = somaticOnly {} strelka.indels;
              sv = {
                vcf = getSomatic {} calls;
                caller = "manta";
              };
            };
          }))
        ];
    });

  # Chromothrypsis analysis using facet cvs and manta svs
  chromothrypsis =
    if disableShatterSeek
    then {}
    else
      mapAttrs
      (n: v:
        shatterseek {} {
          manta = v.calls;
          facets = facetsProc."${n}".postproc;
        })
      (svs.manta or {});

  analysisType = let
    unliftedName = x:
      if x ? unlifted
      then x.unlifted.name
      else x.name;
  in
    if capture == null
    then "WGS"
    else if (hasInfix "crev2.bed") (unliftedName capture)
    then "WES (CREv2)"
    else if (x: hasInfix "twist" (toLower x)) (unliftedName capture)
    then "WES (Twist)"
    else if hasInfix "ccpv2.bed" (unliftedName capture)
    then "CCP"
    else abort "unknown region file";

  mosdepth =
    map
    (b:
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
      })
    bams;

  report = callBionix ./multisample-report.nix {
    inherit
      name
      neoantigens
      redcap
      analysisType
      svs
      germlineOnly
      hla
      fusions
      mosdepth
      samples
      msi
      viralInsertions
      ;
    facets = facetCNVs;
    vcf = variants;
  };

  cnvs =
    cnvkit.callCNV
    ({} // optionalAttrs (capture != null) {targets = capture;})
    {
      inherit (groupBy (x: x.class) bams) normals tumours;
    };

  ## Facets also requires invocation per tumour
  facetCNVs = pipe captureBams [
    regroup
    (withPairs ({
      normal,
      tumour,
    }:
      facets.callCNV {vcf = bionix.ref.grch38.dbsnp;} [normal tumour]))
  ];
  facetsProc =
    mapAttrs
    (_: preproc: {
      inherit preproc;
      postproc =
        bionix.facets.reporting.preprocess {inherit analysisType;} preproc;
    })
    facetCNVs;

  concatAttrsMap = f: x: lib.foldl' (a: b: a // b) {} (map f x);

  # Copy number estimation for HLA region
  hlaRef = pkgs.fetchurl {
    url = "ftp://ftp.ebi.ac.uk:/pub/databases/ipd/imgt/hla/fasta/hla_nuc.fasta";
    sha256 = "sha256-kvYArxs5g8VITlG/BxguHaj/xCuHsmIcSMvqjTUmP1M=";
  };
  hlaSpecificRef = exec'' (stage {
    name = "hla-specific-ref";
    buildInputs = with pkgs; [gawk jq];
    buildCommand = ''
      awk -f $script <(cat ${hla}/report*json | jq -r '.hla.alleles|@tsv') ${hlaRef} > $out
    '';
    passthru.filetype = filetype.fa {};
    script = pkgs.writeText "hla-specific-ref.awk" ''
      BEGIN{FS = "\t"}
      FNR==NR {
        for(i = 1; i <= NF; i++)
          hla[$i]++
        next
      }
      /^>/{
        if(hla[substr($2,1,match($2,":[^:]*$")-1)])
          output = 1;
        else
          output = 0;
      }
      output
    '';
  });
  hlaSpecificAlignments = pipe (filter (x: x.class != "rna") samples) [
    (map (x:
      x
      // pipe x [
        fetch
        (align {
          ref = hlaSpecificRef;
          preset = "sr";
          flags = "-R'@RG\\tID:${x.site + rgSuffix}\\tSM:${x.site}'";
        })
        (sort {})
      ]))
    mergeSite
  ];
  hlaTargeted = {
    cnv = pipe hlaSpecificAlignments [
      (x: {inherit (groupBy (y: y.class) x) normals tumours;})
      (cnvkit.callCNV {})
    ];
    snv = pipe hlaSpecificAlignments [
      regroup
      (octopus.callSomatic {})
    ];
  };

  # Neoantigens
  hla =
    if typeHla || predictNeoantigens || hlaTarget
    then
      xHLA {} {
        inherit name;
        fastqs = pipe samples [(groupBy (x: x.class)) (x: x.normals) head fetch];
      }
    else null;
  neoantigens = let
    getSite = site:
      exec'' (stage {
        name = "somatic-site-filter-vcf";
        buildCommand = ''
          awk -f $script ${variants} > $out
        '';
        passthru.filetype = variants.filetype;
        script = pkgs.writeText "somatic-site-filter-vcf.awk" ''
          BEGIN{
            FS="\t"
          }
          /^#C/{
            for(i=10; i <=NF; i++)
              sites[$i] = i
          }
          /^#/{print;next}
          /SOMATIC/{
            n=split($sites["${site}"], fields, ":")
            gt = fields[1]
            flags = fields[n]
            if(gt ~/[1-9]/ && flags == "PASS")

              print
          }
        '';
        passthru = {inherit (variants) unannot;};
      });
  in
    if !germlineOnly && predictNeoantigens
    then
      pipe samples [
        regroup
        ({tumours, ...}:
          listToAttrs (map
            ({site, ...}:
              nameValuePair site (bionix.neoantigens.antigensProc {id = report.fullReport.name;} {
                vcf = getSite site;
                alleles = hla;
                facets = {
                  inherit (facetsProc."${site}") postproc;
                  donor = name;
                  siteid = site;
                };
              }))
            tumours))
      ]
    else null;

  # STR expansions; profile across all samples for the moment
  strProfiles = mapAttrs (_: x: str.superstr.profile {} (head x)) (groupBy (x: x.site) bams);

  # static html
  htmlise = input:
    exec'' (stage {
      name = "org2html";
      buildInputs = with pkgs; [
        emacs
        (pkgs.callPackage ../standalone-html {})
      ];
      buildCommand = ''
        cp ${input} report.org
        emacs report.org --batch -f org-html-export-to-html --kill
        standalone-html < report.html > report2.html
        sed -i 's/alt="[^"]*"//g' report2.html
        cp report2.html $out
      '';
      stripStorePaths = false;
    });

  md2docx = input:
    exec'' (stage {
      name = "md2docx";
      buildInputs = with pkgs; [pandoc];
      buildCommand = ''
        pandoc ${input} \
          --reference-doc=${
          bionix.fetchers.fetchAnnexFile
          "9G/M3/SHA256E-s17835--9ac5ee81f04cb2abee96138fe5c5c557cf0e6b70baef257a8cf4855fb1f478a1.docx/SHA256E-s17835--9ac5ee81f04cb2abee96138fe5c5c557cf0e6b70baef257a8cf4855fb1f478a1.docx"
        } \
          --from markdown --to docx -o $out
      '';
    });

  mchord =
    if capture == null || capture.name == "TwistV2-HR-combined.bed"
    then bionix.mchord {targets = bionix.fetchers.HR;} variants
    else null;

  # concat attribute maps ensuring not to clobber names
  concatWithUniqueNames = let
    uniqueName = a: n:
      if a ? ${n}
      then findUniqueIndex a n 2
      else n;
    findUniqueIndex = a: n: i: let
      n' = n + ".${toString i}";
    in
      if a ? ${n'}
      then findUniqueIndex a n (i + 1)
      else n';
    merge = a: b: a // mapAttrs' (k: v: nameValuePair (uniqueName a k) v) b;
  in
    foldl merge {};

  links = linkOutputs ({
      inherit strProfiles;
      "meta.json" = pkgs.writeText "meta.json" (builtins.toJSON {
        inherit (report.fullReport) analysisType;
        inherit name;
      });
      "report.org" = report.reportTemplate;
      "report.html" = htmlise report.fullReport;
      "octopus-unannot.vcf" = variants.unannot;
    }
    // optionalAttrs annotateOctopus {"octopus.vcf" = variants;}
    // optionalAttrs (hla != null) {inherit hla;}
    // optionalAttrs (!outputMosdepth)
    {
      mosdepth = listToAttrs (map (x: nameValuePair x.name x) mosdepth);
    }
    // optionalAttrs outputAlignments
    {
      alignments = pipe qps [
        (map (f: {"${f.site}" = f;}))
        concatWithUniqueNames
        (mapAttrs' (k: v:
          nameValuePair (k
            + types.matchFiletype "output-alignments" {
              qp = _: "qp";
              bam = _: "bam";
            }
            v)
          v))
      ];
    }
    // (optionalAttrs (!germlineOnly) {
      inherit chromothrypsis msi;
      virusbreakend = viralInsertions;
      manta = svs.manta or {};
      "gridss" = optionalAttrs (svs ? gridss) (with svs.gridss; {
        "somatic.vcf" = somatic;
        "all.vcf" = calls;
        "ecDNAPlot.png" = ecDNAPlots;
        "fusions.tsv" = svs.gridss.fusions.tsv;
      });
      facets = facetsProc;
    })
    // optionalAttrs (enableSummary && report ? summary) {
      "summary.md" = report.summary;
      "summary.docx" = md2docx report.summary;
    }
    // optionalAttrs (rna != {}) {
      kallisto = rna;
      pizzly = fusions;
    }
    // optionalAttrs (neoantigens != null) {inherit neoantigens;}
    // optionalAttrs somaticBlood {"somatic-blood.vcf" = somaticBloodVariants;}
    // optionalAttrs enableQC {inherit qc;}
    // optionalAttrs enableHatchet {inherit hatchet;}
    // optionalAttrs hlaTarget {inherit hlaTargeted;});
in
  attrs
  // links
  // {
    rawAlignments = qps;
    only = p: let
      x = links.linkInputs.${p};
    in
      if isDerivation x
      then x
      else linkOutputs x;
  }
