with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "3B";
      class = "tumours";
      pdx = false;
      r1 = "pm/58/SHA256E-s15625637232--910252be10615dcb9ad0e368550922986280eec77c2382124e5d7d43da2a22fa.gz/SHA256E-s15625637232--910252be10615dcb9ad0e368550922986280eec77c2382124e5d7d43da2a22fa.gz";
      r2 = "6q/Xj/SHA256E-s15767839448--ce2e0790603f9009e376eeaf6d05ac75d1a633cea166b79aebce84eac7d7540a.gz/SHA256E-s15767839448--ce2e0790603f9009e376eeaf6d05ac75d1a633cea166b79aebce84eac7d7540a.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "zq/3x/SHA256E-s5819481607--4e6941c5030f1f6d47495fa583bd74cd949c941ad4b22c0ac011b742782d8f58.gz/SHA256E-s5819481607--4e6941c5030f1f6d47495fa583bd74cd949c941ad4b22c0ac011b742782d8f58.gz";
      r2 = "WZ/kk/SHA256E-s6045754984--9c34352ef9e0a577bd353c3f283e2a32c8bc9180e5b9df3769ea97288385fad5.gz/SHA256E-s6045754984--9c34352ef9e0a577bd353c3f283e2a32c8bc9180e5b9df3769ea97288385fad5.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    name = "SOL2_0106";
    capture = CREv2;
  }
