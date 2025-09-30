with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "jG/2w/SHA256E-s1035223023--514bcdd369b4aab768024aa138f23737afc8bbbfd7dccf5e9cc5bf6a2b161fba.gz/SHA256E-s1035223023--514bcdd369b4aab768024aa138f23737afc8bbbfd7dccf5e9cc5bf6a2b161fba.gz";
      r2 = "5K/6j/SHA256E-s1047048031--b38366477aa4267f8c657ea4ee14eed52fa6e89a7a24ae9330705b725954ee16.gz/SHA256E-s1047048031--b38366477aa4267f8c657ea4ee14eed52fa6e89a7a24ae9330705b725954ee16.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "44/6Q/SHA256E-s1050841758--1f3e2e5d3dbda65992b67a163f38893f703265175cb3c2b4c5d918c488d64437.gz/SHA256E-s1050841758--1f3e2e5d3dbda65992b67a163f38893f703265175cb3c2b4c5d918c488d64437.gz";
      r2 = "p9/Q2/SHA256E-s1062660605--ce7f3286804fc3b4bf07157a3ad8a989fb70402d88dd95647e264921820fd00e.gz/SHA256E-s1062660605--ce7f3286804fc3b4bf07157a3ad8a989fb70402d88dd95647e264921820fd00e.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV34310";
  }
