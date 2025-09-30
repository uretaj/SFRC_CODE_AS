attrs @ {
  bionix,
  subset ? null,
  what ? null,
  ids ? null,
  ...
}:
with bionix;
with lib; let
  rest = builtins.removeAttrs attrs ["bionix" "subset" "what" "ids"];
  filterType = x:
    if what != null
    then bionix.lib.filterAttrs (_: v: hasPrefix what v."report.org".analysisType) x
    else x;
  filterIds = x:
    if ids == null
    then x
    else with bionix.lib; let selection = listToAttrs (map (x: nameValuePair x true) ids); in filterAttrs (_: v: selection.${v."report.org".name} or false) x;
in
  bionix.lib.pipe (
    if subset == null
    then callBionix ./all.nix rest
    else if subset == "multipri" || subset == "multipleprimary" || subset == "multiple-primary" || subset == "mp"
    then callBionix ./multiprimary.nix rest
    else if subset == "hgsoc"
    then callBionix ./hgsoc.nix rest
    else if subset == "100" || subset == "100g" || subset == "100genomes"
    then callBionix ./100genomes.nix rest
    else if subset == "solace"
    then callBionix ./all-solace.nix rest
    else if subset == "procan"
    then callBionix ./all-procan.nix rest
    else if subset == "myriad"
    then callBionix ./all-myriad.nix rest
    else if subset == "embrace"
    then callBionix ./all.nix (rest // {prefix = "embrace";})
    else if subset == "all"
    then (callBionix ./all.nix rest) // (callBionix ./all-solace.nix rest)
    else abort "unknown subset requested"
  ) [filterIds filterType]
