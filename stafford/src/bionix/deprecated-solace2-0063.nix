with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1.5";
      class = "tumours";
      pdx = false;
      r1 = "fv/qZ/SHA256E-s13550156758--194c1fa9c2ee2c84fc4169b338acb7b9a534f2e2a95ec0539df665478e99c148.gz/SHA256E-s13550156758--194c1fa9c2ee2c84fc4169b338acb7b9a534f2e2a95ec0539df665478e99c148.gz";
      r2 = "P4/fW/SHA256E-s13599635798--8062b3c2e997b2f48ed705b53b284d3818dddad16451a2628fe942b3c19a0816.gz/SHA256E-s13599635798--8062b3c2e997b2f48ed705b53b284d3818dddad16451a2628fe942b3c19a0816.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "31/mm/SHA256E-s5453591355--927f2af6f680ff18fc1047ecffaac6fc60d2980bc00099e18929c66b3b336391.gz/SHA256E-s5453591355--927f2af6f680ff18fc1047ecffaac6fc60d2980bc00099e18929c66b3b336391.gz";
      r2 = "XV/z1/SHA256E-s5583935956--d17d5663284c55a52163830fcf9782ecaac5a548fb64d7301e7d1bf84b293866.gz/SHA256E-s5583935956--d17d5663284c55a52163830fcf9782ecaac5a548fb64d7301e7d1bf84b293866.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = true;
    name = "SOL2_0063";
  }
