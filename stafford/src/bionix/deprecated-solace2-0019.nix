with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "2m/WW/SHA256E-s14555093464--9a9ba3146e6fe3a663a44ce6e7ad01e8b1687e92feef9772f7738064aaf3cac4.gz/SHA256E-s14555093464--9a9ba3146e6fe3a663a44ce6e7ad01e8b1687e92feef9772f7738064aaf3cac4.gz";
      r2 = "wJ/M1/SHA256E-s15614826547--216310147cfbda82d7e5e4852716ec55106a6c64ac932c5709e5d1e557da5655.gz/SHA256E-s15614826547--216310147cfbda82d7e5e4852716ec55106a6c64ac932c5709e5d1e557da5655.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "gF/mx/SHA256E-s6300641394--704d776405c1e6a7c82bb89c747c008102dec31a79b94284fa37a7201ecb50db.gz/SHA256E-s6300641394--704d776405c1e6a7c82bb89c747c008102dec31a79b94284fa37a7201ecb50db.gz";
      r2 = "KQ/5j/SHA256E-s7029348962--4aeb03c3964dc0b6d19a6d229660c7d5fa6075ac0961009ab3fd46b83fad858f.gz/SHA256E-s7029348962--4aeb03c3964dc0b6d19a6d229660c7d5fa6075ac0961009ab3fd46b83fad858f.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SOL2_0019";
  }
