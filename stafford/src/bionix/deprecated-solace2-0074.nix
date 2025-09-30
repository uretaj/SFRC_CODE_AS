with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2J";
      class = "tumours";
      pdx = false;
      r1 = "J8/jw/SHA256E-s14715110119--7849f3050c959a0897f63efe0943bef24f950b600c5bfe91fd4d08361a70c643.gz/SHA256E-s14715110119--7849f3050c959a0897f63efe0943bef24f950b600c5bfe91fd4d08361a70c643.gz";
      r2 = "vw/Xw/SHA256E-s14783987781--dcbb41753274d637983f47f2ffdb2f0d97c6346bc6cd2495afb9369e0dc0fa3e.gz/SHA256E-s14783987781--dcbb41753274d637983f47f2ffdb2f0d97c6346bc6cd2495afb9369e0dc0fa3e.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "gv/zw/SHA256E-s5631179227--acc4da3e30a198e24dad34c71ab83cfa498d508ef67f52aa3e708821f2d7742b.gz/SHA256E-s5631179227--acc4da3e30a198e24dad34c71ab83cfa498d508ef67f52aa3e708821f2d7742b.gz";
      r2 = "Qx/vx/SHA256E-s6069423494--4b00c82e51c4cff6a0abe1b3089067a723543573378d456cc8b9b04bd48d5354.gz/SHA256E-s6069423494--4b00c82e51c4cff6a0abe1b3089067a723543573378d456cc8b9b04bd48d5354.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = true;
    name = "SOL2_0074";
  }
