{bionix}:
with bionix.lib; rec {
  flatten = x:
    listToAttrs (concatLists
      (mapAttrsToList (n: mapAttrsToList (m: nameValuePair (n + "-" + m))) x));
  select = what: x:
    flatten
    (mapAttrs (_: x: x."${what}") (filterAttrs (_: x: x ? "${what}") x));
}
