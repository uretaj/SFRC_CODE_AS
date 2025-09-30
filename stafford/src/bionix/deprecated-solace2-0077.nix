with import ./milton-slurm.nix {
  overlays = [
    (_: super:
      with super; {
        octopus.callSomatic = attrs: octopus.callSomatic (attrs // {fast = false;});
      })
  ];
}; let
  samples = [
    {
      site = "1D";
      class = "tumours";
      pdx = false;
      r1 = "P4/xj/SHA256E-s9442090071--8f1641e555709026265a806ab1253254f0ca050b2755f56dc3142d6420ccbf08.gz/SHA256E-s9442090071--8f1641e555709026265a806ab1253254f0ca050b2755f56dc3142d6420ccbf08.gz";
      r2 = "FV/K8/SHA256E-s9518190690--d97edb77cbb4301779f2d345542efa9998891f9b5043d1bb64a9efca57c7b812.gz/SHA256E-s9518190690--d97edb77cbb4301779f2d345542efa9998891f9b5043d1bb64a9efca57c7b812.gz";
    }

    {
      site = "1D";
      class = "tumours";
      pdx = false;
      r1 = "7k/f5/SHA256E-s395900428--02987c82629268f2ef29a034bff841ec8ac4128d149b3b1d3ace536d31d5fa7a.gz/SHA256E-s395900428--02987c82629268f2ef29a034bff841ec8ac4128d149b3b1d3ace536d31d5fa7a.gz";
      r2 = "9f/MQ/SHA256E-s390480246--6d13dbcf91eb8eb91abdf2268ae11c5ed3e1e9f5be0227148dad6885138ece94.gz/SHA256E-s390480246--6d13dbcf91eb8eb91abdf2268ae11c5ed3e1e9f5be0227148dad6885138ece94.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "ZK/fz/SHA256E-s6420462934--ab24b46da8d0ac07a12c8e521dcd8b28ba20e1b1d599e07fb6f62e6af2be9583.gz/SHA256E-s6420462934--ab24b46da8d0ac07a12c8e521dcd8b28ba20e1b1d599e07fb6f62e6af2be9583.gz";
      r2 = "vm/jj/SHA256E-s6763593074--fcaa2ff31972a2ff5961391feadc370ecae96145430ab46fb5034e489a8b7908.gz/SHA256E-s6763593074--fcaa2ff31972a2ff5961391feadc370ecae96145430ab46fb5034e489a8b7908.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = true;
    name = "SOL2_0077";
  }
