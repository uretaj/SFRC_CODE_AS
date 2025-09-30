with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "X1/qG/SHA256E-s2040720761--a971d584f02839c993806dfe64687cd699f60ac053accceb7b3b130f12c5a9c5.gz/SHA256E-s2040720761--a971d584f02839c993806dfe64687cd699f60ac053accceb7b3b130f12c5a9c5.gz";
      r2 = "Gz/qg/SHA256E-s2054253775--f3a8e35d2ea341e912bcefc15f090b11c94ea1021b53391dba052ac049cc87ed.gz/SHA256E-s2054253775--f3a8e35d2ea341e912bcefc15f090b11c94ea1021b53391dba052ac049cc87ed.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "F1/15/SHA256E-s1965105989--ebf47f9775c650de8acdf075692ad17cb6cfd9eed3b4d9bbb2e9f6ceb0783e67.gz/SHA256E-s1965105989--ebf47f9775c650de8acdf075692ad17cb6cfd9eed3b4d9bbb2e9f6ceb0783e67.gz";
      r2 = "pJ/3W/SHA256E-s1962929094--6f61dc171486def5435aa1266de9da1efe459f36db3b0f195593fe539c97db46.gz/SHA256E-s1962929094--6f61dc171486def5435aa1266de9da1efe459f36db3b0f195593fe539c97db46.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV23025";
  }
