with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2G";
      class = "tumours";
      pdx = false;
      r1 = "97/2g/SHA256E-s15969835971--19e9c9aede92e0b3718d6c36b19dd4b49cc8a8f1af4efc3dd06b57f8de758f4a.gz/SHA256E-s15969835971--19e9c9aede92e0b3718d6c36b19dd4b49cc8a8f1af4efc3dd06b57f8de758f4a.gz";
      r2 = "x0/0f/SHA256E-s16450343652--4f661e53a05b9203bba97aa6c309e96f3ddc64751fbdb31bb2a6f1ea5353ae72.gz/SHA256E-s16450343652--4f661e53a05b9203bba97aa6c309e96f3ddc64751fbdb31bb2a6f1ea5353ae72.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "J7/M7/SHA256E-s6424042454--a7dcb1b62068d0ba481c245f41e3fd7b9d0915598983f9a35bbea1a29ddabe03.gz/SHA256E-s6424042454--a7dcb1b62068d0ba481c245f41e3fd7b9d0915598983f9a35bbea1a29ddabe03.gz";
      r2 = "g5/qg/SHA256E-s6727750358--1b240740a75b57b0b98f4e6f83ea9030724dd0f84ffb34ce266507fbaa2e1e1d.gz/SHA256E-s6727750358--1b240740a75b57b0b98f4e6f83ea9030724dd0f84ffb34ce266507fbaa2e1e1d.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    name = "SOL2_0078";
    capture = CREv2;
  }
