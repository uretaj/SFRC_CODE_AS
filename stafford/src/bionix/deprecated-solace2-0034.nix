with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "germline";
      class = "normals";
      pdx = false;
      r1 = "g4/k2/SHA256E-s4283796150--8fe4f2a2302a50160a3f1a72f12c7110978a3b65e859831ba0a55589a9e55bda.gz/SHA256E-s4283796150--8fe4f2a2302a50160a3f1a72f12c7110978a3b65e859831ba0a55589a9e55bda.gz";
      r2 = "FZ/x8/SHA256E-s4183352330--14d1c0cb942b1bcef4267db98808380ac4a0eafd7e5f352e31bde115dcecfd34.gz/SHA256E-s4183352330--14d1c0cb942b1bcef4267db98808380ac4a0eafd7e5f352e31bde115dcecfd34.gz";
    }

    {
      site = "germline";
      class = "normals";
      pdx = false;
      r1 = "9m/xk/SHA256E-s1600352472--434bcd540d0200501a6e47be63cfdf589bed8b4672bf021019dda289b80761f1.gz/SHA256E-s1600352472--434bcd540d0200501a6e47be63cfdf589bed8b4672bf021019dda289b80761f1.gz";
      r2 = "JX/F9/SHA256E-s1715385982--0aaed6c0f57b06c11fbedb81744bfe7dda06cef74e180ed11f85967f830939ef.gz/SHA256E-s1715385982--0aaed6c0f57b06c11fbedb81744bfe7dda06cef74e180ed11f85967f830939ef.gz";
    }

    {
      site = "tumour";
      class = "tumours";
      pdx = false;
      r1 = "vV/XK/SHA256E-s1789688014--fa29472189afc37554e88cf2a2e69a354498d73f286e48b60806a01fc4217fd0.gz/SHA256E-s1789688014--fa29472189afc37554e88cf2a2e69a354498d73f286e48b60806a01fc4217fd0.gz";
      r2 = "wF/m4/SHA256E-s1577162225--42206ace384db3c68b9fe7dd9b4573f2cc44fc315b61caa4f6d24dadc1a3229b.gz/SHA256E-s1577162225--42206ace384db3c68b9fe7dd9b4573f2cc44fc315b61caa4f6d24dadc1a3229b.gz";
    }

    {
      site = "tumour";
      class = "tumours";
      pdx = false;
      r1 = "Qw/K9/SHA256E-s842341774--bf448c12e5442a6ac15d873ef9c5cfc82197109f9e51dfb7944df97ce2052a4e.gz/SHA256E-s842341774--bf448c12e5442a6ac15d873ef9c5cfc82197109f9e51dfb7944df97ce2052a4e.gz";
      r2 = "MG/Z0/SHA256E-s848217361--7cf39f25c0c0d8cdb6ab465575e9e006c33ddbe08ce840427b06d842ffeadb24.gz/SHA256E-s848217361--7cf39f25c0c0d8cdb6ab465575e9e006c33ddbe08ce840427b06d842ffeadb24.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = true;
    name = "SOL2_0034";
  }
