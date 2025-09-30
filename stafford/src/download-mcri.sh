#!/usr/bin/env nix-shell
#!nix-shell -i bash -I nixpkgs=channel:nixos-21.11 -p aria2 curl
set -euo pipefail

if [ "$#" -ne 2 ] ; then
    echo "usage: $0 share-id password"
    exit 1
fi
id="$1"
pass="$2"

TF=$(mktemp)
function cleanup {
    rm $TF
}
trap cleanup EXIT

# Generate a file listing
curl -u "$id:$pass" \
     -X PROPFIND \
     -H 'X-Requested-With: XMLHttpRequest' \
     -H 'Depth:3' \
     --insecure  \
    https://oc.mcri.edu.au/public.php/webdav/ \
  | awk 'BEGIN{RS="[<>]"}/\/$/{next}/public.php/{print "https://oc.mcri.edu.au" $0}' > $TF

# Download away
aria2c -i $TF \
       --http-user="$id" \
       --http-passw="$pass" \
       --check-certificate=false \
       --continue=true \
       --header="X-Requested-With: XMLHttpRequest"
