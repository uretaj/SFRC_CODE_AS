with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "zz/qq/SHA256E-s3921786124--ff10e7aaca7e3744a3895560554c19ae8e6bf77ff0476b7a634bb299a5ab8970.gz/SHA256E-s3921786124--ff10e7aaca7e3744a3895560554c19ae8e6bf77ff0476b7a634bb299a5ab8970.gz";
      r2 = "fQ/7w/SHA256E-s3994986538--834d9aa228fbfff9e73fb23da7dc0e2056b4f766e90ad12b559ebfed8ddcc858.gz/SHA256E-s3994986538--834d9aa228fbfff9e73fb23da7dc0e2056b4f766e90ad12b559ebfed8ddcc858.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "1J/Q1/SHA256E-s3951154856--f0d625baea7238c0f75bf9194031d0aac9be2e9964081ae8b4f889394de214f1.gz/SHA256E-s3951154856--f0d625baea7238c0f75bf9194031d0aac9be2e9964081ae8b4f889394de214f1.gz";
      r2 = "95/xq/SHA256E-s4024577273--5d6d674a01bfdd12579e44732978bd927fd7985ad9b04d6639b463ea5d46c035.gz/SHA256E-s4024577273--5d6d674a01bfdd12579e44732978bd927fd7985ad9b04d6639b463ea5d46c035.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV33123";
  }
