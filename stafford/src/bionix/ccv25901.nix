with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Q5/0g/SHA256E-s1787664097--7c9e12fc561af05d51aba869a7728b9d11f30cfc369c2f63fd60bc825ba9f0d7.gz/SHA256E-s1787664097--7c9e12fc561af05d51aba869a7728b9d11f30cfc369c2f63fd60bc825ba9f0d7.gz";
      r2 = "jq/j3/SHA256E-s1798689709--ff87e2cf2ae3935ddbe1b2529122f424ce5aa9ea13253d648233069c536f9988.gz/SHA256E-s1798689709--ff87e2cf2ae3935ddbe1b2529122f424ce5aa9ea13253d648233069c536f9988.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "J3/g6/SHA256E-s1732178693--bcfeda01d02be117a66a5042b38fb00e49829b190c1c80a2cc3a7293b4dd0616.gz/SHA256E-s1732178693--bcfeda01d02be117a66a5042b38fb00e49829b190c1c80a2cc3a7293b4dd0616.gz";
      r2 = "Qz/z0/SHA256E-s1728766904--10f40582d99eb84d21f99663fe08f67614ee4c01956b1ff34411fcd4610f1fba.gz/SHA256E-s1728766904--10f40582d99eb84d21f99663fe08f67614ee4c01956b1ff34411fcd4610f1fba.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV25901";
  }
