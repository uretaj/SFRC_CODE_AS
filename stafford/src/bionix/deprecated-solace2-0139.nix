with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "0V/X9/SHA256E-s12612193942--55ec1a7cc30d1e50b4f54204ff125d58c4cb90939b37adc037c8d19c08897f7b.gz/SHA256E-s12612193942--55ec1a7cc30d1e50b4f54204ff125d58c4cb90939b37adc037c8d19c08897f7b.gz";
      r2 = "Km/Ff/SHA256E-s12914568173--dd9167ab09dec269935d57e954a7080c1abd7544656c2a8326f81d82f529a067.gz/SHA256E-s12914568173--dd9167ab09dec269935d57e954a7080c1abd7544656c2a8326f81d82f529a067.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "KG/Z5/SHA256E-s5814358658--631e8cbef1a8d468ee2f43e5eed4a6bbd906fd76d57573b4fa8f7e1586a8d7e0.gz/SHA256E-s5814358658--631e8cbef1a8d468ee2f43e5eed4a6bbd906fd76d57573b4fa8f7e1586a8d7e0.gz";
      r2 = "Gq/z1/SHA256E-s6251702815--699248249daa525cedf4973ff2076b15106ab7d242993c2a625ad32eb8c6ebae.gz/SHA256E-s6251702815--699248249daa525cedf4973ff2076b15106ab7d242993c2a625ad32eb8c6ebae.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SOL2_0139";
  }
