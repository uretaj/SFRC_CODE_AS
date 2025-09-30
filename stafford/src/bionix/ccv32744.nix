with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "P6/Jq/SHA256E-s1807017426--ed89dc42c774ccf39aeb05e58f447b683192d15f9c498e2fa7428bdd95187f85.gz/SHA256E-s1807017426--ed89dc42c774ccf39aeb05e58f447b683192d15f9c498e2fa7428bdd95187f85.gz";
      r2 = "pw/k7/SHA256E-s1830736747--95f0962e01afafba8622541685f9a4aea6668f8eb516ff68eb09fbc7f0c4f7a5.gz/SHA256E-s1830736747--95f0962e01afafba8622541685f9a4aea6668f8eb516ff68eb09fbc7f0c4f7a5.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "FW/fX/SHA256E-s1825382072--fac6c900b594adbfe942380da093818f991de5501638aafb391394455bf9d907.gz/SHA256E-s1825382072--fac6c900b594adbfe942380da093818f991de5501638aafb391394455bf9d907.gz";
      r2 = "Vp/WG/SHA256E-s1849589878--21da8dd5dac9ad734f830d5ef25260fe462b250fd9b2cd5ad542b4e9dab71eec.gz/SHA256E-s1849589878--21da8dd5dac9ad734f830d5ef25260fe462b250fd9b2cd5ad542b4e9dab71eec.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV32744";
  }
