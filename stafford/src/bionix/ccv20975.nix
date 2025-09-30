with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "GM/kZ/SHA256E-s3849515189--cba89eb94d0a332da0bb131825a856a72e98b8d6925e95e072ded027eab3c63d.gz/SHA256E-s3849515189--cba89eb94d0a332da0bb131825a856a72e98b8d6925e95e072ded027eab3c63d.gz";
      r2 = "pk/gV/SHA256E-s3928711472--f0a9f4a9bb28394b770ccc38eeaefbed5b7b128524628cc88dfbe0c822527a59.gz/SHA256E-s3928711472--f0a9f4a9bb28394b770ccc38eeaefbed5b7b128524628cc88dfbe0c822527a59.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "x9/K8/SHA256E-s3585158254--96ec0b21ea3e9b470efc02e05393fa02af05269769e707935985e28125f02bfd.gz/SHA256E-s3585158254--96ec0b21ea3e9b470efc02e05393fa02af05269769e707935985e28125f02bfd.gz";
      r2 = "Vw/z2/SHA256E-s3629280002--4e2fcc0e1cf08aa1a07a39778c9e7724885aa16b461c15b43ed943e15b56e84a.gz/SHA256E-s3629280002--4e2fcc0e1cf08aa1a07a39778c9e7724885aa16b461c15b43ed943e15b56e84a.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV20975";
  }
