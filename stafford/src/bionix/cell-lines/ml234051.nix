with import ../milton-slurm.nix {}; let
  samples = [
    {
      site = "1116S2-24405-CL1";
      pdx = false;
      r1 = "zf/vq/SHA256E-s33813550037--6945ea1f387af940dc7d9f8a7cab7d478efe87d5353fc808fa8c4a5e4a454f85.gz/SHA256E-s33813550037--6945ea1f387af940dc7d9f8a7cab7d478efe87d5353fc808fa8c4a5e4a454f85.gz";
      r2 = "0j/K3/SHA256E-s35290394158--7bc697c44a50f99f41411a7761f295402d8c8f82bb3cd5ca26dd3a582e58c8ba.gz/SHA256E-s35290394158--7bc697c44a50f99f41411a7761f295402d8c8f82bb3cd5ca26dd3a582e58c8ba.gz";
    }
  ];
in
  bionix.callBionix ./pipeline.nix {
    inherit samples;
    name = "ML234051";
  }
