with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "3A";
      class = "tumours";
      pdx = false;
      r1 = "pX/Wf/SHA256E-s5029389581--e29403e9cd31dd743fb736e13460bc9487ba73eddc693284a1104db9d95c0a6b.gz/SHA256E-s5029389581--e29403e9cd31dd743fb736e13460bc9487ba73eddc693284a1104db9d95c0a6b.gz";
      r2 = "g2/Jp/SHA256E-s4901966272--a9f424093a53db37c198cb04f60525ab5a6676688fab475d1c0ac7ecc0f863fe.gz/SHA256E-s4901966272--a9f424093a53db37c198cb04f60525ab5a6676688fab475d1c0ac7ecc0f863fe.gz";
    }

    {
      site = "3A";
      class = "tumours";
      pdx = false;
      r1 = "Jf/pk/SHA256E-s5121784172--6e80eb44d104f14e22739861a4cb5c4a29aa487e8f0b5d567a6f52072ead5d56.gz/SHA256E-s5121784172--6e80eb44d104f14e22739861a4cb5c4a29aa487e8f0b5d567a6f52072ead5d56.gz";
      r2 = "Qx/06/SHA256E-s5004135159--b012ff54d028652e2d679f208a23c408bf385c509de2a0a00c1c554d1dee8d6b.gz/SHA256E-s5004135159--b012ff54d028652e2d679f208a23c408bf385c509de2a0a00c1c554d1dee8d6b.gz";
    }

    {
      site = "germline";
      class = "normals";
      pdx = false;
      r1 = "WJ/4j/SHA256E-s1211368693--6b992665f79343df0e290203712660d6c6d603602451c86c8590b2b26bda2573.gz/SHA256E-s1211368693--6b992665f79343df0e290203712660d6c6d603602451c86c8590b2b26bda2573.gz";
      r2 = "m6/j2/SHA256E-s1235020783--a7b254ce7fc592e767ef8525f0565ffbb4f30ecdd142781b652802d3ffaef4e4.gz/SHA256E-s1235020783--a7b254ce7fc592e767ef8525f0565ffbb4f30ecdd142781b652802d3ffaef4e4.gz";
    }

    {
      site = "germline";
      class = "normals";
      pdx = false;
      r1 = "9z/ff/SHA256E-s1257433540--ef0d39eeb16f5521cd968a378d9d4a24a460d0551be233b7ae50db74b42625de.gz/SHA256E-s1257433540--ef0d39eeb16f5521cd968a378d9d4a24a460d0551be233b7ae50db74b42625de.gz";
      r2 = "jV/Fq/SHA256E-s1284504571--a070232f634f06825cd6e65a625e1dabf46a6ca8a513297324bc4dbeb8b50f70.gz/SHA256E-s1284504571--a070232f634f06825cd6e65a625e1dabf46a6ca8a513297324bc4dbeb8b50f70.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TwistV2HR;
    name = "SOL2_0121";
  }
