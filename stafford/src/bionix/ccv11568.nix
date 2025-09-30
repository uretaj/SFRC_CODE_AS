with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "17/Q0/SHA256E-s7346397798--672e7901f22fe23ed64400eab57eb7e0bc3374a2283de1f601e9a258b2abbcad.gz/SHA256E-s7346397798--672e7901f22fe23ed64400eab57eb7e0bc3374a2283de1f601e9a258b2abbcad.gz";
      r2 = "qm/Vv/SHA256E-s7422510086--0a21a402123590e6a65bcc816cc42594223f2309f0f622a48ec44b5e76a5cb74.gz/SHA256E-s7422510086--0a21a402123590e6a65bcc816cc42594223f2309f0f622a48ec44b5e76a5cb74.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV11568";
  }
