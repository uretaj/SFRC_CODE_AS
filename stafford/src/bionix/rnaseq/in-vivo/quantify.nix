{
  bionix ?
    import ../../../nix/bionix {
      nixpkgs = import ../../../nix/nixpkgs {};
    },
  nix-adt ? (import ../../../nix/nix-adt).checked,
  wakefield ? false,
}:
with bionix.slurm
{
  srun = "/usr/bin/srun /home/bedo/bin/chroot /scratch/director2126/bedo/nix";
  ppn = 10;
  mem = 10;
  walltime = "24:00:00";
}; let
  inherit (nix-adt) match;
  samples = import ./meta.nix {
    inherit nix-adt;
  };
  fetchFastQGZ = {
    path,
    sha512,
  }: let
    fetchSFTP = callBionix ../../fetch-wehi.nix {};
  in
    with types;
      tagFiletype (filetype.gz (filetype.fq {})) (slurm
        {
          partition = "copyq";
          mem = 1;
          ppn = 1;
        }
        (fetchSFTP {
          path = "fastqs/" + path;
          inherit sha512;
        }));
  procSampleKallisto = {
    fastqs,
    species,
    ...
  }: let
    singleEnd =
      if nfq == 1
      then true
      else if nfq == 2
      then false
      else error "unexpected number of fastqs";
    nfq = builtins.length fastqs;
  in
    pipe [
      (kallisto.quant ({
          bootstrapSamples = 100;
        }
        // (
          if singleEnd
          then {
            single = true;
            fragmentLength = 200;
            fragmentSD = 50;
          }
          else {single = false;}
        )
        // {
          ref = match species {
            mouse = ref.grcm38.ensembl.cdna;
            human = ref.grch38.ensembl.cdna;
          };
        }))
    ]
    (map fetchFastQGZ fastqs);
  procSampleWakefield = {
    fastqs,
    species,
    ...
  }: let
    align' = species:
      hisat2.align {
        inherit
          (
            if species == "mouse"
            then {
              ref = ref.grcm38.seq;
              indexAttrs = {
                inherit (ref.grcm38.ensembl) gtf;
                partition = "highmemq";
                mem = 256;
              };
            }
            else {
              ref = ref.grch38.seq;
              indexAttrs = {
                inherit (ref.grch38.ensembl) gtf;
                partition = "highmemq";
                mem = 256;
              };
            }
          )
          ref
          indexAttrs
          ;
      };
    align = species: fastqs:
      align' species (lib.listToAttrs (lib.zipListsWith (x: y: {
          name = x;
          value = y;
        }) ["input1" "input2"]
        fastqs));
    alignments = let
      x = map fetchFastQGZ fastqs;
    in
      match species {
        mouse = align "mouse" x;
        human =
          (xenomapper.allocate {flags = "--use_zs";} {
            primary = align "human" x;
            secondary = align "mouse" x;
          })
          .primary_specific;
      };
    sortedAlignments = samtools.sort {} alignments;
  in
    linkOutputs {
      "alignment.bam" = sortedAlignments;
      "alignment.bam.bai" = samtools.index {} sortedAlignments;
      cnt =
        pipe [
          (htseq.count {
            inherit
              (match species {
                mouse = ref.grcm38.ensembl;
                human = ref.grch38.ensembl;
              })
              gff3
              ;
            flags = "-i=Name";
          })
        ]
        alignments;
    };
  organise = {sampleid, ...} @ s: "ln -s ${
    if wakefield
    then procSampleWakefield s
    else procSampleKallisto s
  } \$out/${toString sampleid}";
in
  stage {
    name = "rnaseq";
    buildCommand = ''
      mkdir $out
      ${lib.concatMapStringsSep "\n" organise samples}
    '';
  }
