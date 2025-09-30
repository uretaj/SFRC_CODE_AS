with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "M6/0m/SHA256E-s2101642595--569261a14efb820763d04a12854d4bb4d1141d3b1ccfb06f275ed647fd228946.gz/SHA256E-s2101642595--569261a14efb820763d04a12854d4bb4d1141d3b1ccfb06f275ed647fd228946.gz";
      r2 = "6V/gV/SHA256E-s2123824955--de37d87cad9ef641edc8ad146e6c20363b736f9f4f48202f8a82e5cea1f45c3b.gz/SHA256E-s2123824955--de37d87cad9ef641edc8ad146e6c20363b736f9f4f48202f8a82e5cea1f45c3b.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "7m/6W/SHA256E-s2139833723--ae73df896edbe2861b8b86acbe9797a4e142d79017ce0e40430b6d74c5dc45f4.gz/SHA256E-s2139833723--ae73df896edbe2861b8b86acbe9797a4e142d79017ce0e40430b6d74c5dc45f4.gz";
      r2 = "X9/mZ/SHA256E-s2162068523--5a3e1156fd83d89e5b23303856010fdcf2fd518847af887c3126897aa63b1572.gz/SHA256E-s2162068523--5a3e1156fd83d89e5b23303856010fdcf2fd518847af887c3126897aa63b1572.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV35522";
  }
