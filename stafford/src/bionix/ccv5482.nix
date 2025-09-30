with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "0v/3z/SHA256E-s4962986613--b23a610a24d952becee08c1093a1e1c44b424fc490a002542246c64833f47a5a.gz/SHA256E-s4962986613--b23a610a24d952becee08c1093a1e1c44b424fc490a002542246c64833f47a5a.gz";
      r2 = "kj/Gm/SHA256E-s4967965885--2961c2ed44c50b20d3dcdf42481aa6fcb5bcda1f7658495b11c3bf870d9d0a45.gz/SHA256E-s4967965885--2961c2ed44c50b20d3dcdf42481aa6fcb5bcda1f7658495b11c3bf870d9d0a45.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV5482";
  }
