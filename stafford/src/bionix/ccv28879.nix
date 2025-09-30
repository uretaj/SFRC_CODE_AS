with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "3w/1j/SHA256E-s2583171988--80f2462c5df2096995bb63d53d7f2462a964f5b198b52f8d683f12dc26244f8c.gz/SHA256E-s2583171988--80f2462c5df2096995bb63d53d7f2462a964f5b198b52f8d683f12dc26244f8c.gz";
      r2 = "Qw/f9/SHA256E-s2608767143--5ad47528c60c196f3074369cff861f4a463afc75c1878d1ec6c7ffffcb02e556.gz/SHA256E-s2608767143--5ad47528c60c196f3074369cff861f4a463afc75c1878d1ec6c7ffffcb02e556.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "zm/Q2/SHA256E-s2476551036--01fa146a438bfd2f3914546f45127c8d08300df4dba1e7a55acae274865e534c.gz/SHA256E-s2476551036--01fa146a438bfd2f3914546f45127c8d08300df4dba1e7a55acae274865e534c.gz";
      r2 = "Gm/V5/SHA256E-s2482498993--82051be23d3b391978e05523ec511f0341751e72046c8d8f041ef1c0610a1728.gz/SHA256E-s2482498993--82051be23d3b391978e05523ec511f0341751e72046c8d8f041ef1c0610a1728.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV28879";
  }
