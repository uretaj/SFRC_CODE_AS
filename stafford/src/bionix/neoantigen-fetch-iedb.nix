with import <nixpkgs> {};
  runCommand "fetch-ncbi-epitopes.fasta" {
    shellHookOnly = true;
    shellHook = ''
      set -eo pipefail
      out=$(mktemp)
      echo $out
      offset=0
      while true ; do
        curl -k "https://query-api.iedb.org/epitope_search?offset=$offset&order=structure_id&qualitative_measure=neq.Negative&host_organism_name=eq.Homo%20sapiens%20(human)&tcell_id=neq.null&select=structure_id,linear_sequence" \
          > out
        if cat out | jq -e 'length == 0' ; then
          break
        fi
        cat out \
          | jq -r '.[]|">"+(.structure_id|tostring)+"\n"+.linear_sequence' \
          >> $out

        # pagination: 10k max items
        offset=$((offset + 10000))
      done
      exit 0
    '';
  } ''
    echo 'This derivation is not buildable; run it with nix-shell instead.'
    exit 1
  ''
