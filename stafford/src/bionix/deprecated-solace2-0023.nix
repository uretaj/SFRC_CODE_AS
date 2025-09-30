with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "Vw/mG/SHA256E-s10815776947--b56f47162a20dbf89133e46130087e21454a7156f9b29233570e1af34d568f20.gz/SHA256E-s10815776947--b56f47162a20dbf89133e46130087e21454a7156f9b29233570e1af34d568f20.gz";
      r2 = "Ww/kP/SHA256E-s10845357204--11c982e09222fba9bbbef087598b03b42c9e9ee56bafe61c551980f609ecf0b5.gz/SHA256E-s10845357204--11c982e09222fba9bbbef087598b03b42c9e9ee56bafe61c551980f609ecf0b5.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "X5/zm/SHA256E-s6161889286--846aea379d01bcecbe1d92690de873702c4adf4c07cbfff68e65daa6fabc91b3.gz/SHA256E-s6161889286--846aea379d01bcecbe1d92690de873702c4adf4c07cbfff68e65daa6fabc91b3.gz";
      r2 = "1K/9f/SHA256E-s6671552508--015b963e45c408a158042216c2672d6d3d08bf8b8d69943cced45a7fe978d734.gz/SHA256E-s6671552508--015b963e45c408a158042216c2672d6d3d08bf8b8d69943cced45a7fe978d734.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = true;
    name = "SOL2_0023";
  }
