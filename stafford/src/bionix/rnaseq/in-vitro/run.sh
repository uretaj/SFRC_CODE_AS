#!/bin/sh
#SBATCH --ntasks=1
#SBATCH --mem=1gb
#SBATCH --time=48:00:00
#SBATCH --partition=longq

export TMPDIR=/scratch/director2126/bedo
export PRJDIR=/group/director2126/bedo/stafford/src/bionix/rnaseq/in-vitro
export NIX_SSL_CERT_FILE=/etc/ssl/ca-bundle.pem

chroot $TMPDIR/rnaseq /home/bedo/bin/nix-build -j 100 $PRJDIR/quantify.nix --out-link $PRJDIR/result --option sandbox false --keep-going
