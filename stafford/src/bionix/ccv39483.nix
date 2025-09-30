with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "8W/X8/SHA256E-s7393670153--00a2ddb52e9ca4fa956c30080df0fd8cdd55d6a0462dbfa4118cc724ec9c4815.gz/SHA256E-s7393670153--00a2ddb52e9ca4fa956c30080df0fd8cdd55d6a0462dbfa4118cc724ec9c4815.gz";
      r2 = "pq/6F/SHA256E-s7493952376--0c2029d91762f38203fb887551dc64a71f1cc47823e202dac21a289b08d53cd5.gz/SHA256E-s7493952376--0c2029d91762f38203fb887551dc64a71f1cc47823e202dac21a289b08d53cd5.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV39483";
  }
