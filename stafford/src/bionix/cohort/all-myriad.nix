attrs @ {bionix ? (import ../milton-slurm.nix {}).bionix, ...}: let
  key = {
    SFRC01035 = null;
    SFRC01074 = null;
    SFRC01164 = null;
    SFRC01173 = null;
    SFRC01198 = null;
    SFRC01217 = null;
    SFRC01218 = null;
    SFRC01240 = null;
    SFRC01269 = null;
    SFRC01307 = null;
    SFRC01354 = null;
    SFRC01383 = null;
    SFRC01389 = null;
    SFRC01409 = null;
    SFRC01436 = null;
    SFRC01446 = null;
    SFRC01448 = null;
    SFRC01460 = null;
    SFRC01480 = null;
    SFRC01486 = null;
    SFRC01490 = null;
    SFRC01492 = null;
    SFRC01495 = null;
    SFRC01501 = null;
    SFRC01529 = null;
    SFRC01540 = null;
    SFRC01596 = null;
    SFRC01615 = null;
    SFRC01616 = null;
    SFRC01656 = null;
    SFRC01673 = null;
  };

  all = bionix.callBionix ./all.nix attrs;
in
  bionix.lib.filterAttrs (_: x: key ? ${x."report.org".name}) all
