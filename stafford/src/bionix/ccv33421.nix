with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "v0/mZ/SHA256E-s2301433633--eb30d8ac94a06964d511ff8362436618347e608b6d52e9b89c19308a3521fc6f.gz/SHA256E-s2301433633--eb30d8ac94a06964d511ff8362436618347e608b6d52e9b89c19308a3521fc6f.gz";
      r2 = "mp/p3/SHA256E-s2351900322--37798b3614d8c370569eef5d11b77349e77dce452ee40397effcd8aceb3088bc.gz/SHA256E-s2351900322--37798b3614d8c370569eef5d11b77349e77dce452ee40397effcd8aceb3088bc.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "5f/KZ/SHA256E-s2350048157--c3aa9521843713c536451a94a322d711c41db717f3ee8f524faa473f66b2ff3e.gz/SHA256E-s2350048157--c3aa9521843713c536451a94a322d711c41db717f3ee8f524faa473f66b2ff3e.gz";
      r2 = "61/g2/SHA256E-s2402256580--f43863cd50cc1edc0ee78f5b64a43ff4ae035762a0fa7b7722caec6dee19beb2.gz/SHA256E-s2402256580--f43863cd50cc1edc0ee78f5b64a43ff4ae035762a0fa7b7722caec6dee19beb2.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV33421";
  }
