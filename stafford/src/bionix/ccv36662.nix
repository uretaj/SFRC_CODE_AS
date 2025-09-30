with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "14/1m/SHA256E-s1794899141--dab5e5f2a50ce50d056e6ce1b56b532a2cae84addf5308201dc9f4f8ea1f092a.gz/SHA256E-s1794899141--dab5e5f2a50ce50d056e6ce1b56b532a2cae84addf5308201dc9f4f8ea1f092a.gz";
      r2 = "vV/X0/SHA256E-s1799821981--6c6ea76cf017c805f0609871fde07ba558f9fdd7f92e7d010668703f28e2bac0.gz/SHA256E-s1799821981--6c6ea76cf017c805f0609871fde07ba558f9fdd7f92e7d010668703f28e2bac0.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "mQ/7k/SHA256E-s1810553835--81cd7b5c3a66db5ffbab00cd4c7bdc553f33efd6a94b178948f8e10bfedfd5a6.gz/SHA256E-s1810553835--81cd7b5c3a66db5ffbab00cd4c7bdc553f33efd6a94b178948f8e10bfedfd5a6.gz";
      r2 = "8Q/21/SHA256E-s1815195148--5951fac1bbcab8290729c8397696b2fc8ac65feda520c371661cbdca9d53cd7c.gz/SHA256E-s1815195148--5951fac1bbcab8290729c8397696b2fc8ac65feda520c371661cbdca9d53cd7c.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV36662";
  }
