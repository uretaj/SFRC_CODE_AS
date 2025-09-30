{
  stdenv,
  writeScript,
}:
writeScript "fqref" ''
  #!${stdenv.shell}
  set -e
  set -- $(git diff --diff-filter=d --cached --name-only | grep -E './**/*.fastq.gz')
  nix=$(set -- $(git diff --diff-filter=d --cached --name-only | grep -E './**/*.nix'))
  while [ "$#" -gt 0 ] ; do
    if [ ! -L "$1" ] || (readlink "$1" | grep -v annex > /dev/null) ; then
      echo "fqref: fastq file not in annex: $1"
      exit 1
    fi

    fn=$(basename $(readlink "$1"))
    n=$(grep $fn $nix |wc -l)
    if [ "$n" -ne "1" ] ; then
      echo "fqref: must be referenced exactly once: $1"
    fi

    shift
  done
''
