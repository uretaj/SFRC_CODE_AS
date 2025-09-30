with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "m8/W5/SHA256E-s4154923483--60de213fd5748c354a78e0f657c3660a486231a2b62b766f796b3e922bef0cb0.gz/SHA256E-s4154923483--60de213fd5748c354a78e0f657c3660a486231a2b62b766f796b3e922bef0cb0.gz";
      r2 = "1X/Zj/SHA256E-s4166987805--38e076c6d5d42a30e605f91ee7d49474f4179613dcfbc69083ce6a0119a18b88.gz/SHA256E-s4166987805--38e076c6d5d42a30e605f91ee7d49474f4179613dcfbc69083ce6a0119a18b88.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV759";
  }
