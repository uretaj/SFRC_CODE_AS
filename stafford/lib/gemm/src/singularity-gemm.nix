{pkgs ? import <nixpkgs> {}}:
with pkgs; let
  pipeline = ./result/bin/gemm;
in
  singularity-tools.buildImage rec {
    name = "gemm";
    runScript = ''
      #!${stdenv.shell}
      cd /data
      exec ${pipeline} -k "$@"
    '';
    diskSize = 4096;
    contents = [
      bwa
      gmp
      gnutar
      gzip
      gridss
      pipeline
      platypus
      octopus
      snpeff
      samtools
    ];
    runAsRoot = ''
      mkdir /data
      mkdir /ref
      mkdir /scratch
      mkdir -p /bin
    '';
  }
