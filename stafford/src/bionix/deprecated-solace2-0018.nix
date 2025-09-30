with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "germline";
      class = "normals";
      pdx = false;
      r1 = "PK/0j/SHA256E-s4900556739--62c50b117e8f0677828d6f6e1dd75eac381026c39885adc155d85e74b40bba3d.gz/SHA256E-s4900556739--62c50b117e8f0677828d6f6e1dd75eac381026c39885adc155d85e74b40bba3d.gz";
      r2 = "Mj/6f/SHA256E-s4721068770--ad95e4357d3f8b357b8139cdf232cd27980546b987f1b2760bf63852b1db5544.gz/SHA256E-s4721068770--ad95e4357d3f8b357b8139cdf232cd27980546b987f1b2760bf63852b1db5544.gz";
    }

    {
      site = "germline";
      class = "normals";
      pdx = false;
      r1 = "PQ/qM/SHA256E-s1768861723--0e2f3e3c4a7057fc074391a9bbd125b92caedad8e483dc68a6f1c2f6cfcd11fb.gz/SHA256E-s1768861723--0e2f3e3c4a7057fc074391a9bbd125b92caedad8e483dc68a6f1c2f6cfcd11fb.gz";
      r2 = "mk/kj/SHA256E-s1865794305--2193539edcf28ed02647d5bc2e33da14d6feb53924a6ccea640412bca9c0d096.gz/SHA256E-s1865794305--2193539edcf28ed02647d5bc2e33da14d6feb53924a6ccea640412bca9c0d096.gz";
    }

    {
      site = "tumour";
      class = "tumours";
      pdx = false;
      r1 = "J4/6m/SHA256E-s13767883752--298281eb791318655ea3e83f43da6ec85b564864a07061756c5d019b4cf929de.gz/SHA256E-s13767883752--298281eb791318655ea3e83f43da6ec85b564864a07061756c5d019b4cf929de.gz";
      r2 = "w3/FX/SHA256E-s12431884302--101779f8c3ef2b7eeb2d333f71475c8e67528119dded6ba67908b4f751c0010c.gz/SHA256E-s12431884302--101779f8c3ef2b7eeb2d333f71475c8e67528119dded6ba67908b4f751c0010c.gz";
    }

    {
      site = "tumour";
      class = "tumours";
      pdx = false;
      r1 = "x8/g0/SHA256E-s6315666797--769cd65f0a20927a46de795ca6d6b1c6b4a665f3d289e45e31fb14ba46d58795.gz/SHA256E-s6315666797--769cd65f0a20927a46de795ca6d6b1c6b4a665f3d289e45e31fb14ba46d58795.gz";
      r2 = "4m/M3/SHA256E-s6443966134--246365dc2aca1792629bb05a4be90ad6094d7141a7dbb2407e11be2f7ad41fac.gz/SHA256E-s6443966134--246365dc2aca1792629bb05a4be90ad6094d7141a7dbb2407e11be2f7ad41fac.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = true;
    name = "SOL2_0018";
  }
