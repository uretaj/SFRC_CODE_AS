{
  lib,
  gitroot,
}: let
  rev = path:
    with builtins;
    with lib; let
      head = removeSuffix "\n" (readFile (path + "/HEAD"));
    in
      if lib.hasPrefix "ref: " head
      then let
        refPath = path + "/${removePrefix "ref: " head}";
      in
        if pathExists refPath
        then removeSuffix "\n" (readFile refPath)
        else head
      else head;
in
  rev gitroot
