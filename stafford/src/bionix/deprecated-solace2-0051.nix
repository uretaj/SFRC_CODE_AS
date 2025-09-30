with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "germline";
      class = "normals";
      pdx = false;
      r1 = "g7/f7/SHA256E-s5187287815--6f08255a4db288210db9ee174610692b1e8757a8fe7d0d23628f247170e1920b.gz/SHA256E-s5187287815--6f08255a4db288210db9ee174610692b1e8757a8fe7d0d23628f247170e1920b.gz";
      r2 = "kj/51/SHA256E-s5034698267--c4ae4595df5497e3f0f6152d83b149198d9a12102cd92da23ec1c2f7cfcd93ef.gz/SHA256E-s5034698267--c4ae4595df5497e3f0f6152d83b149198d9a12102cd92da23ec1c2f7cfcd93ef.gz";
    }

    {
      site = "germline";
      class = "normals";
      pdx = false;
      r1 = "p1/p2/SHA256E-s1989901307--b3f672f0c83d372f037c2f2d545d49f30295edc4eb329408cabb39b6d721cc4f.gz/SHA256E-s1989901307--b3f672f0c83d372f037c2f2d545d49f30295edc4eb329408cabb39b6d721cc4f.gz";
      r2 = "Jm/gv/SHA256E-s2122404164--58127ed51c6eb4ad88c13a55d04b9d5e32b5d1ab4c80426dfe362c18bb41498f.gz/SHA256E-s2122404164--58127ed51c6eb4ad88c13a55d04b9d5e32b5d1ab4c80426dfe362c18bb41498f.gz";
    }

    {
      site = "tumour";
      class = "tumours";
      pdx = false;
      r1 = "Z2/jz/SHA256E-s15797881658--3f46d00bc97265f23de480e113f5688c8ebd1053aa788d42d556afef215c1bf3.gz/SHA256E-s15797881658--3f46d00bc97265f23de480e113f5688c8ebd1053aa788d42d556afef215c1bf3.gz";
      r2 = "6Z/jk/SHA256E-s14376200806--1fc1461cffabf1c2e07a904d4a7016325c0dd4ae404538212bc1fe0b9a294951.gz/SHA256E-s14376200806--1fc1461cffabf1c2e07a904d4a7016325c0dd4ae404538212bc1fe0b9a294951.gz";
    }

    {
      site = "tumour";
      class = "tumours";
      pdx = false;
      r1 = "2M/kF/SHA256E-s6814039880--0db101eaeb33791be604b49b882b49e5ebcadc947b9e4a8b2a803a751e7df79c.gz/SHA256E-s6814039880--0db101eaeb33791be604b49b882b49e5ebcadc947b9e4a8b2a803a751e7df79c.gz";
      r2 = "x4/56/SHA256E-s6920481413--2f376b8486b9334142cc5c508dfed9670a76f127bf7158f256874658b50db55f.gz/SHA256E-s6920481413--2f376b8486b9334142cc5c508dfed9670a76f127bf7158f256874658b50db55f.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = true;
    name = "SOL2_0051";
  }
