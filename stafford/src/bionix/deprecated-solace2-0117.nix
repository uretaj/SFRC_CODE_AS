with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "PW/P4/SHA256E-s10930808002--728c45ce37dd36aa39f8becba43e8f25eeb8f2cd6fd245bf2844c17f51e7360e.gz/SHA256E-s10930808002--728c45ce37dd36aa39f8becba43e8f25eeb8f2cd6fd245bf2844c17f51e7360e.gz";
      r2 = "17/Vk/SHA256E-s11010859930--3fd7b2d151288a7a19bc56235a15747d9eaf713bbe33da672cb467bf72d28373.gz/SHA256E-s11010859930--3fd7b2d151288a7a19bc56235a15747d9eaf713bbe33da672cb467bf72d28373.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "9p/jp/SHA256E-s5858084694--1ddf6ce5f1757d15eb28ea20b9bd5ba8aac68d12bc014a2184c608a77b2c29e9.gz/SHA256E-s5858084694--1ddf6ce5f1757d15eb28ea20b9bd5ba8aac68d12bc014a2184c608a77b2c29e9.gz";
      r2 = "Vg/Pk/SHA256E-s6062750501--3d3931a5fe42d4dc65cae415c9b356d495e1092261c48af5965d84e1220694c9.gz/SHA256E-s6062750501--3d3931a5fe42d4dc65cae415c9b356d495e1092261c48af5965d84e1220694c9.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = true;
    name = "SOL2_0117";
  }
