source $stdenv/setup

function fetch {
    p=$1
    echo fetching $p
    mkdir -p $out/$(dirname $p)
    curl -k --key $key -o $out/$p sftp://bedo.j@prkfs.wehi.edu.au:2222/stafford/lib/fastqs/$p
}
export -f fetch

echo $paths | xargs -d ' ' -n1 -P $npar -I '{}' bash -c 'fetch "{}" || exit 255'
