with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1H";
      class = "tumours";
      pdx = false;
      r1 = "G1/15/SHA256E-s33738690567--bbc7e5d45c1d2b0cd43dbe5f9cd5d48531fbb649ee9d24b57acfdb5847c574b8.gz/SHA256E-s33738690567--bbc7e5d45c1d2b0cd43dbe5f9cd5d48531fbb649ee9d24b57acfdb5847c574b8.gz";
      r2 = "Gq/wK/SHA256E-s34237200343--9c8ca3a2a0a15d0dc09ac1f95269bdc1470a330df0fddd8f83f0eeb7ecb7facf.gz/SHA256E-s34237200343--9c8ca3a2a0a15d0dc09ac1f95269bdc1470a330df0fddd8f83f0eeb7ecb7facf.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Wq/15/SHA256E-s8915543443--423bbd7e0bb57eea656a182c50bbf0008cb24b61023014c9e7fc55a94785993b.gz/SHA256E-s8915543443--423bbd7e0bb57eea656a182c50bbf0008cb24b61023014c9e7fc55a94785993b.gz";
      r2 = "9f/zq/SHA256E-s9453328585--bf16ba0d14131ddbf54e7688f5393cf71d5e54aef99903704dd9ab78dc6e112c.gz/SHA256E-s9453328585--bf16ba0d14131ddbf54e7688f5393cf71d5e54aef99903704dd9ab78dc6e112c.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    name = "SOL2_0014";
    capture = CREv2;
  }
