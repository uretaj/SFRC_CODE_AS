{
  lib,
  writeShellScript,
  ci,
  fzf,
  coreutils,
  gawk,
}:
writeShellScript "tui" ''
  PATH=${lib.makeBinPath [fzf ci coreutils gawk]}

  set -eo pipefail

  drv=$(env jobs | fzf -q "$*" -e -d '\t' --tac --no-sort --preview-window follow --preview='log {5}'| awk -F'\t' '{print $5}')
  pri=$(seq 0 10 | fzf -e --prompt='priority>' --no-sort)
  retry $drv
  exec setpri $drv $pri
''
