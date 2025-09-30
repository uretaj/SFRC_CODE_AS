with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "86/X6/SHA256E-s2324922832--7e48d505257c6c5e7fa166f69b96c1dc045814281d470f446574ff0319959fd3.gz/SHA256E-s2324922832--7e48d505257c6c5e7fa166f69b96c1dc045814281d470f446574ff0319959fd3.gz";
      r2 = "03/vG/SHA256E-s2358592813--d874dc8b79f8dedd904921647c877d6e1a8b21305551fc1aae711481a331b1cd.gz/SHA256E-s2358592813--d874dc8b79f8dedd904921647c877d6e1a8b21305551fc1aae711481a331b1cd.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV38880";
  }
