#!/usr/bin/env nix-shell
#! nix-shell -i bash -p mysql


function query {
    mysql -u anonymous -D $1 -h ensembldb.ensembl.org -e "select concat(T.stable_id,'.',T.version) as id, G.value as gene from transcript T inner join gene_attrib G on G.gene_id = T.gene_id where G.attrib_type_id = 4" > $2
}

query homo_sapiens_core_94_38  t2g-hg.tsv
query mus_musculus_core_94_38 t2g-mm.tsv
