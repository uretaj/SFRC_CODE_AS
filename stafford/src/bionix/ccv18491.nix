with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "kf/x4/SHA256E-s1986152687--0d77b5c5626306f978f7f6229f4def8ab57133234e49a94db915b2e93873062a.gz/SHA256E-s1986152687--0d77b5c5626306f978f7f6229f4def8ab57133234e49a94db915b2e93873062a.gz";
      r2 = "KX/04/SHA256E-s2000697854--c9be4922b44ce2761d9547aeae58ca44f92a27f9b6668fad00bd88617c916aad.gz/SHA256E-s2000697854--c9be4922b44ce2761d9547aeae58ca44f92a27f9b6668fad00bd88617c916aad.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV18491";
  }
