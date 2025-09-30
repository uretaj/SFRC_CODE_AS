with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "zf/KG/SHA256E-s3590769831--88185e9c44df7e3572611b9a6253a72d5bdd29308a8eb8ef433e3ed4e440a509.gz/SHA256E-s3590769831--88185e9c44df7e3572611b9a6253a72d5bdd29308a8eb8ef433e3ed4e440a509.gz";
      r2 = "v0/zp/SHA256E-s3610250951--390b6c95f73a7e4e0fb70cf537c9b82b8af96198121e9d557ffc68f96fe8780a.gz/SHA256E-s3610250951--390b6c95f73a7e4e0fb70cf537c9b82b8af96198121e9d557ffc68f96fe8780a.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "jG/4J/SHA256E-s3468902687--2e0bd64f24bc72dd12d354b665b2c73b1be7aad3776543c6b917be1ce67d109d.gz/SHA256E-s3468902687--2e0bd64f24bc72dd12d354b665b2c73b1be7aad3776543c6b917be1ce67d109d.gz";
      r2 = "wm/zx/SHA256E-s3462141697--7254d14017f3215a33fb00e3c280a0776a4ad3a9063017dc024d844552488388.gz/SHA256E-s3462141697--7254d14017f3215a33fb00e3c280a0776a4ad3a9063017dc024d844552488388.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV28472";
  }
