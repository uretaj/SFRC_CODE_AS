with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "70/xX/SHA256E-s6050481213--d886420705942129466d9aeaf5aba522914f11408bcda387a1d9a4106621780f.gz/SHA256E-s6050481213--d886420705942129466d9aeaf5aba522914f11408bcda387a1d9a4106621780f.gz";
      r2 = "zz/pM/SHA256E-s6066131754--15154e978cbdc9e943c27ee209accd3f72ebb82967a37bac80b29e8f54938e66.gz/SHA256E-s6066131754--15154e978cbdc9e943c27ee209accd3f72ebb82967a37bac80b29e8f54938e66.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV6212";
  }
