with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "g6/Pq/SHA256E-s967145467--693837f64ed75752c2f5d8fe994964892a81609bcace476659da0257a9bd5637.gz/SHA256E-s967145467--693837f64ed75752c2f5d8fe994964892a81609bcace476659da0257a9bd5637.gz";
      r2 = "Zv/11/SHA256E-s964821535--b96393076d93424744a28bede516ec44e81b0afd12aa3fbe65be7523bb36dc97.gz/SHA256E-s964821535--b96393076d93424744a28bede516ec44e81b0afd12aa3fbe65be7523bb36dc97.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "3Q/qv/SHA256E-s968242685--25ee5fba472ab7dc96b75e454171cfb4f76f3597de9aa0cfa2393793ca3d9f7c.gz/SHA256E-s968242685--25ee5fba472ab7dc96b75e454171cfb4f76f3597de9aa0cfa2393793ca3d9f7c.gz";
      r2 = "zq/5G/SHA256E-s958893224--af75d04d873233036f6d38cab7ead7a5b68e90b5d5a2c0e4cd42ac043af8cc76.gz/SHA256E-s958893224--af75d04d873233036f6d38cab7ead7a5b68e90b5d5a2c0e4cd42ac043af8cc76.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV24674";
  }
