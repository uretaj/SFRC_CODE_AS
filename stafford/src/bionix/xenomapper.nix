_: super:
with super; {
  xenomapper.allocate = callBionixE ../nix/xenomapper-allocate.nix;
}
