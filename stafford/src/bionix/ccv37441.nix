with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "w7/G2/SHA256E-s1992646112--a24619311105170ce1205cf228c1747b7ef8e16ee79d70a8a083a7358eba3867.gz/SHA256E-s1992646112--a24619311105170ce1205cf228c1747b7ef8e16ee79d70a8a083a7358eba3867.gz";
      r2 = "8M/4q/SHA256E-s2002635669--3eb3a7bef42b0b1da7d90149a8913a1214cd52fcdbd8299e8eaf30cf943f8eef.gz/SHA256E-s2002635669--3eb3a7bef42b0b1da7d90149a8913a1214cd52fcdbd8299e8eaf30cf943f8eef.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "47/w6/SHA256E-s1976043184--68ec55677af3afae46051ed2723fca61b498820b81267f7d967af36c60347e7f.gz/SHA256E-s1976043184--68ec55677af3afae46051ed2723fca61b498820b81267f7d967af36c60347e7f.gz";
      r2 = "9j/6k/SHA256E-s1985833026--c146aa8c66efc66bf253b68449611a8a6f6b2cd13fe28d4d0932a4fd6480ee31.gz/SHA256E-s1985833026--c146aa8c66efc66bf253b68449611a8a6f6b2cd13fe28d4d0932a4fd6480ee31.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV37441";
  }
